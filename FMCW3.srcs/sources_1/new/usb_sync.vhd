library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity usb_sync is
    port (
        clk             : in  std_logic;  -- 40 MHz
        reset_n         : in  std_logic;

        -- RX side to logic
        rx_fifo_dout    : out std_logic_vector(7 downto 0);       
        rx_fifo_rd_en   : in  std_logic;
        rx_fifo_empty   : out std_logic;

        -- TX side to logic
        tx_fifo_din     : in std_logic_vector(7 downto 0);
        tx_fifo_wr_en   : in std_logic;
        tx_fifo_full    : out std_logic;
        tx_fifo_wr_ack  : out std_logic;
        tx_fifo_wr_ovf  : out std_logic;
        
        -- FT2232H side
        usb_clk         : in  std_logic;  -- 60 MHz from FT2232H
        usb_data_in     : in  std_logic_vector(7 downto 0);
        usb_data_out    : out std_logic_vector(7 downto 0);
        is_usb_tx       : out std_logic; -- 1 FPGA drives data line, 0 data line High Z for reception
        
        usb_rxf_n       : in  std_logic;
        usb_txe_n       : in  std_logic;

        usb_oe_n        : out std_logic;
        usb_rd_n        : out std_logic;
        usb_wr_n        : out std_logic        
    );
end usb_sync;

architecture rtl of usb_sync is

    --------------------------------------------------------------------
    -- Dual-clock FIFO components both standard fifo. I created 2 components since tx needs more buffer
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
    
    component fifo_generator_1
    port (
        rst     : in  std_logic;
        wr_clk  : in  std_logic;
        rd_clk  : in  std_logic;
        din     : in  std_logic_vector(7 downto 0);
        wr_en   : in  std_logic;
        rd_en   : in  std_logic;
        dout    : out std_logic_vector(7 downto 0);
        full    : out std_logic;
        wr_ack : OUT STD_LOGIC;
        overflow : OUT STD_LOGIC;
        empty   : out std_logic;
        valid   : out STD_LOGIC

    );
    end component;
    
--    component ila_3 is
--    PORT (
--        clk     : IN STD_LOGIC;                
--        probe0  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--        probe1  : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe2  : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe3  : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe4  : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe5  : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--    );
--    end component;

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
    -- TX FIFO signals
    --------------------------------------------------------------------
    signal s_tx_fifo_dout   : std_logic_vector(7 downto 0) := (others => '0');
    signal s_tx_fifo_rd_en  : std_logic := '0';
    signal s_tx_fifo_empty  : std_logic;
    signal s_tx_fifo_valid  : std_logic;

    --------------------------------------------------------------------
    -- TX FSM
    --------------------------------------------------------------------
--    Commented tx fsm states

    type tx_states_t is (
        TX_IDLE,
        TX_READ_FIFO,
        TX_ONE_CLOCK,
        TX_ASSERT_WRITE,
        TX_DEASSERT_WRITE
    );
    
    signal tx_state : tx_states_t := TX_IDLE;
    
    signal tx_data_reg : std_logic_vector(7 downto 0) := (others => '0');
    
    signal reset : std_logic;
    
--    signal s_ila3_probe0 : std_logic_vector(7 downto 0);
--    signal s_ila3_probe1 : std_logic_vector(0 downto 0);
--    signal s_ila3_probe2 : std_logic_vector(0 downto 0);
--    signal s_ila3_probe3 : std_logic_vector(0 downto 0);
--    signal s_ila3_probe4 : std_logic_vector(0 downto 0);
--    signal s_ila3_probe5 : std_logic_vector(0 downto 0);
    
    signal s_is_usb_tx    : std_logic;
    signal s_usb_data_out : std_logic_vector(7 downto 0) := (others => '0');
    signal s_usb_txe_n    : std_logic;
    signal s_usb_wr_n     : std_logic;

begin

    reset <= not reset_n;
    
    is_usb_tx <= s_is_usb_tx;
    
    usb_data_out <= s_usb_data_out;

    s_usb_txe_n <= usb_txe_n;
    
    usb_wr_n <= s_usb_wr_n;
                    
--    s_ila3_probe0       <= s_usb_data_out;
--    s_ila3_probe1(0)    <= s_tx_fifo_rd_en;
--    s_ila3_probe2(0)    <= s_tx_fifo_empty;
--    s_ila3_probe3(0)    <= s_usb_wr_n;
--    s_ila3_probe4(0)    <= s_usb_txe_n;
--    s_ila3_probe5(0)    <= s_is_usb_tx;
    
    
--    ila_3_i : component ila_3
--    port map(
--        clk     => usb_clk,
--        probe0  => s_ila3_probe0,
--        probe1  => s_ila3_probe1,
--        probe2  => s_ila3_probe2,
--        probe3  => s_ila3_probe3,
--        probe4  => s_ila3_probe4,
--        probe5  => s_ila3_probe5
--    );
    
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
            rd_en  => rx_fifo_rd_en,
            dout   => rx_fifo_dout,
            full   => rx_fifo_full,
            empty  => rx_fifo_empty
        );
        
    --------------------------------------------------------------------
    -- TX FIFO: FTDI 40 MHz write, 60 MHz read for usb tx
    --------------------------------------------------------------------
    tx_fifo_inst : fifo_generator_1
        port map (
            rst    => reset,
            wr_clk => clk,
            rd_clk => usb_clk,
            din    => tx_fifo_din,
            wr_en  => tx_fifo_wr_en,
            rd_en  => s_tx_fifo_rd_en,
            dout   => s_tx_fifo_dout,
            full   => tx_fifo_full,
            wr_ack => tx_fifo_wr_ack,
            overflow => tx_fifo_wr_ovf,
            empty  => s_tx_fifo_empty,
            valid  => s_tx_fifo_valid
        );
    
    --------------------------------------------------------------------
    -- FT2232H RX FSM
    -- Reads from FTDI into RX FIFO
    --------------------------------------------------------------------
    process(usb_clk, reset_n)
    begin
        if reset_n = '0' then

            rx_state <= RX_IDLE;

            usb_oe_n    <= '1';
            usb_rd_n    <= '1';

            rx_fifo_din   <= (others => '0');
            rx_fifo_wr_en <= '0';

        elsif rising_edge(usb_clk) then
            
            -- this makes fifo write = 0 after it is enabled in fsm states
            rx_fifo_wr_en <= '0';

            case rx_state is
                
                -- Wait until byte is on bus
                when RX_IDLE =>
                    usb_oe_n    <= '1';
                    usb_rd_n    <= '1';

                    -- ft2232h drives rxf = 0 to indicate reception
                    if usb_rxf_n = '0' and rx_fifo_full = '0' and tx_state = TX_IDLE then
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
                    
                    if usb_rxf_n = '0' and rx_fifo_full = '0' and tx_state = TX_IDLE then
                        rx_fifo_din   <= usb_data_in;
                        rx_fifo_wr_en <= '1';
                    else
                        rx_state <= RX_FINISH;
                    end if;
                
                when RX_FINISH =>
                
                    usb_oe_n <= '1';
                    usb_rd_n <= '1';
                
                    if usb_rxf_n = '0' and rx_fifo_full = '0' and tx_state = TX_IDLE then
                        rx_state <= RX_ASSERT_OE;
                    else
                        rx_state <= RX_IDLE;
                    end if;
                        
            end case;
        end if;
    end process;

--    --------------------------------------------------------------------
--    -- FT2232H TX FSM
--    -- Sends TX FIFO bytes to FTDI
--    --------------------------------------------------------------------
    process(usb_clk, reset_n)
    begin
        if reset_n = '0' then
    
            tx_state      <= TX_IDLE;
            s_usb_wr_n      <= '1';
            s_tx_fifo_rd_en <= '0';
            s_usb_data_out  <= (others => '0');
            s_is_usb_tx     <= '0';
    
        elsif rising_edge(usb_clk) then
    
            s_tx_fifo_rd_en <= '0';
    
            case tx_state is
    
                when TX_IDLE =>
                    s_usb_wr_n  <= '1';
                    s_is_usb_tx <= '0';
    
                    if s_usb_txe_n = '0' and s_tx_fifo_empty = '0' and rx_state = RX_IDLE and usb_rxf_n = '1' then
                        s_tx_fifo_rd_en <= '1';
                        tx_state        <= TX_READ_FIFO;
                    end if;
    

                when TX_READ_FIFO =>
                    -- READING FIFO HERE DOES NOT WORK!!!
                    s_usb_wr_n  <= '1';
                    s_is_usb_tx <= '0';
                    
                    tx_state  <= TX_ONE_CLOCK;
    
    
                when TX_ONE_CLOCK =>
                    s_usb_wr_n      <= '1';
                    s_is_usb_tx     <= '0';
                    
                    if s_tx_fifo_valid = '1' then
                        s_usb_data_out <= s_tx_fifo_dout;

                        tx_state        <= TX_ASSERT_WRITE;
                    end if;
    
                when TX_ASSERT_WRITE =>
                    s_is_usb_tx <= '1';
    
                    if usb_txe_n = '0' then
                        s_usb_wr_n <= '0';
                        tx_state <= TX_DEASSERT_WRITE;
                    else
                        s_usb_wr_n <= '1';
                    end if;
    
    
                when TX_DEASSERT_WRITE =>
                    s_usb_wr_n  <= '1';
                    s_is_usb_tx <= '1';
                    
                    tx_state <= TX_IDLE;
    
            end case;
        end if;
    end process;


   
    
    
    
end rtl;