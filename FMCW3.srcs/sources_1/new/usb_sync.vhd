library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity usb_sync is
    port (
        -- User/bus side clock
        clk             : in  std_logic;  -- 40 MHz
        reset_n         : in  std_logic;

        -- RX side to your logic
        rx_data         : out std_logic_vector(7 downto 0);
        rx_empty        : out std_logic;
        rx_read_en      : in  std_logic;

        -- FT2232H side
        usb_clk         : in  std_logic;  -- 60 MHz from FT2232H
        usb_data        : in std_logic_vector(7 downto 0);

        usb_rxf_n       : in  std_logic;
        usb_txe_n       : in  std_logic;

        usb_oe_n        : out std_logic;
        usb_rd_n        : out std_logic;
        usb_wr_n        : out std_logic        
    );
end usb_sync;

architecture rtl of usb_sync is

    --------------------------------------------------------------------
    -- RX FIFO signals
    --------------------------------------------------------------------
    signal rx_fifo_din   : std_logic_vector(7 downto 0) := (others => '0');
    signal rx_fifo_wr_en : std_logic := '0';
    signal rx_fifo_full  : std_logic;

    --------------------------------------------------------------------
    -- RX FSM
    --------------------------------------------------------------------
    type rx_states_t is (
        RX_IDLE,
        RX_ASSERT_OE,
        RX_ASSERT_RD,
        RX_SAMPLE_BURST,
        RX_FINISH
    );
    
    signal rx_state : rx_states_t := RX_IDLE;


    --------------------------------------------------------------------
    -- Dual-clock FIFO component
    -- Replace fifo_generator_0 with your Xilinx FIFO IP name.
    --------------------------------------------------------------------
    component fifo_generator_0
        port (
            rst     : in  std_logic;
            wr_clk  : in  std_logic;
            rd_clk  : in  std_logic;
            din     : in  std_logic_vector(7 downto 0);
            wr_en   : in  std_logic;
            rd_en   : in  std_logic;
            dout    : out std_logic_vector(7 downto 0);
            full    : out std_logic;
            empty   : out std_logic
        );
    end component;

    signal reset : std_logic;

begin

    reset <= not reset_n;

    usb_wr_n <= '1'; -- when tx is implemented delete this    
    
    --------------------------------------------------------------------
    -- RX FIFO: FTDI 60 MHz write, user 40 MHz read
    --------------------------------------------------------------------
    rx_fifo_inst : fifo_generator_0
        port map (
            rst    => reset,
            wr_clk => usb_clk,
            rd_clk => clk,
            din    => rx_fifo_din,
            wr_en  => rx_fifo_wr_en,
            rd_en  => rx_read_en,
            dout   => rx_data,
            full   => rx_fifo_full,
            empty  => rx_empty
        );
    
    --------------------------------------------------------------------
    -- FT2232H RX FSM
    -- Reads from FTDI into RX FIFO
    --------------------------------------------------------------------
    process(usb_clk, reset_n)
    begin
        if reset_n = '0' then

            rx_state <= RX_IDLE;

            usb_oe_n <= '1';
            usb_rd_n <= '1';


            rx_fifo_din   <= (others => '0');
            rx_fifo_wr_en <= '0';

        elsif rising_edge(usb_clk) then
            
            -- this makes fifo write = 0 after it is enabled in fsm states
            rx_fifo_wr_en <= '0';

            case rx_state is
                
                -- Wait until byte is on bus
                when RX_IDLE =>
                    usb_oe_n <= '1';
                    usb_rd_n <= '1';

                    -- ft2232h drives rxf = 0 to indicate reception
                    if usb_rxf_n = '0' and rx_fifo_full = '0' then
                        rx_state <= RX_ASSERT_OE;
                    end if;

                -- rxf = 0 usb puts first byte on the bus oe = 0 reads it after 1 clock
                when RX_ASSERT_OE =>
                    
                    -- Drive oe low to get the first byte
                    usb_oe_n <= '0';
                    usb_rd_n <= '1'; -- rd is for burst read after reading the first byte
                    
                    --rx_state <= RX_SAMPLE_D0;
                    rx_state <= RX_ASSERT_RD;                
                
                when RX_ASSERT_RD =>
                    
                    usb_oe_n <= '0';
                    usb_rd_n <= '0';
                    
                    rx_state <= RX_SAMPLE_BURST;    
                   
                when RX_SAMPLE_BURST =>
                    
                    usb_oe_n <= '0';
                    usb_rd_n <= '0';
                    
                    if usb_rxf_n = '0' and rx_fifo_full = '0' then
                        rx_fifo_din   <= usb_data;
                        rx_fifo_wr_en <= '1';
                    else
                        rx_state <= RX_FINISH;
                    end if;
                
                when RX_FINISH =>
                
                    usb_oe_n <= '1';
                    usb_rd_n <= '1';
                
                    if usb_rxf_n = '0' and rx_fifo_full = '0' then
                        rx_state <= RX_ASSERT_OE;
                    else
                        rx_state <= RX_IDLE;
                    end if;
                        
            end case;
        end if;
    end process;

    --------------------------------------------------------------------
    -- FT2232H TX FSM
    -- Sends TX FIFO bytes to FTDI
    --------------------------------------------------------------------
--    process(usb_clkout, reset_n)
--    begin
--        if reset_n = '0' then

--            tx_state <= TX_IDLE;

--            usb_wr_n <= '1';

--            usb_data_out <= (others => '0');
--            usb_data_oe  <= '0';

--            tx_fifo_rd_en <= '0';

--        elsif rising_edge(usb_clkout) then

--            tx_fifo_rd_en <= '0';

--            case tx_state is

--                when TX_IDLE =>
--                    usb_wr_n <= '1';
--                    usb_data_oe <= '0';

--                    -- Only transmit when FTDI can accept data and TX FIFO has data
--                    if usb_txe_n = '0' and tx_fifo_empty = '0' then
--                        tx_fifo_rd_en <= '1';
--                        tx_state <= TX_LOAD;
--                    end if;


--                when TX_LOAD =>
--                    -- FIFO output should now be valid
--                    usb_data_out <= tx_fifo_dout;
--                    usb_data_oe  <= '1';
--                    usb_wr_n     <= '1';

--                    tx_state <= TX_ASSERT_WR;


--                when TX_ASSERT_WR =>
--                    -- WR# low writes byte into FTDI
--                    usb_data_oe <= '1';
--                    usb_wr_n    <= '0';

--                    tx_state <= TX_DEASSERT_WR;


--                when TX_DEASSERT_WR =>
--                    -- Finish write pulse
--                    usb_data_oe <= '1';
--                    usb_wr_n    <= '1';

--                    if usb_txe_n = '0' and tx_fifo_empty = '0' then
--                        tx_fifo_rd_en <= '1';
--                        tx_state <= TX_LOAD;
--                    else
--                        usb_data_oe <= '0';
--                        tx_state <= TX_IDLE;
--                    end if;

--            end case;
--        end if;
--    end process;

end rtl;