library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity config is
    generic (
        PACKET_SIZE : integer := 128
    );
    port (
        clk_40mhz        : in  std_logic;
        clk_100mhz       : in  std_logic;
        reset_n          : in  std_logic; -- active low
        soft_reset_n     : in  std_logic;     
        usb_rx_empty     : in  std_logic;
        usb_readdata     : in  std_logic_vector(7 downto 0);
        chipselect       : out std_logic;
        read_n           : out std_logic;
        config_done      : out std_logic;
        
        -- AXI-Stream TX (MicroBlaze → VHDL)
        fifotx_tdata     : in STD_LOGIC_VECTOR(31 downto 0);
        fifotx_tlast     : in STD_LOGIC;
        fifotx_tready    : out STD_LOGIC;
        fifotx_tvalid    : in STD_LOGIC;
        
        -- AXI-Stream RX (VHDL → MicroBlaze)
        fiforx_tdata     : out STD_LOGIC_VECTOR(31 downto 0);
        fiforx_tlast     : out STD_LOGIC;
        fiforx_tready    : in STD_LOGIC;
        fiforx_tvalid    : out STD_LOGIC
    );
end config;

architecture Behavioral of config is

    -- State machine
    type config_state_type is (st_idle, st_read, st_wait, st_store, st_done);
    signal config_st : config_state_type := st_idle;
    
    type fifo_state_type is (st_idle, st_send, st_done);
    signal fifo_st : fifo_state_type := st_idle;

    -- Counter and storage
    signal byte_counter                 : integer range 0 to PACKET_SIZE-1 := 0;
    signal configuration_bytes          : std_logic_vector(PACKET_SIZE*8-1 downto 0) := (others => '0');
    
    signal config_bytes_ready           : std_logic := '0';    
    signal config_ready_sync, config_ready_d : std_logic := '0';
    
    signal fifo_byte_index              : integer range 0 to PACKET_SIZE-1 := 0;
    
    component fifo_generator_1
    PORT (
        rst : IN STD_LOGIC;
        wr_clk : IN STD_LOGIC;
        rd_clk : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC
    );
    end component;
    
    signal s_din        : std_logic_vector(7 downto 0) := (others => '0');
    signal s_dout       : std_logic_vector(7 downto 0) := (others => '0');
    signal s_wr_en      : std_logic := '0';
    signal s_rd_en      : std_logic := '0';
    signal s_fifo_full  : std_logic := '0';
    signal s_fifo_empty : std_logic := '0';
    
    signal reset        : std_logic;
    
begin

    config_fifo : fifo_generator_1
    PORT MAP(        
        rst         => reset,         
        wr_clk      => clk_40mhz,
        rd_clk      => clk_100mhz,
        din         => s_din,
        wr_en       => s_wr_en,
        rd_en       => s_rd_en,
        dout        => s_dout,
        full        => s_fifo_full,
        empty       => s_fifo_empty
    );
    
    reset <= not reset_n;

    -- mb to vhdl part not used for now. vhdl will be seen ready but logic to read data is not implemented yet. 
    fifotx_tready <= '1';
    
    process(clk_40mhz, reset_n, soft_reset_n)
    begin
        
        -- Instead of handshaking microlbaze issues a soft reset to reset config and control so it starts again for new radar op
        if reset_n = '0' or soft_reset_n = '0' then
            config_st                   <= st_idle;
            byte_counter                <= 0;
            configuration_bytes         <= (others => '0');
            chipselect                  <= '0'; -- 1 active, 0 not
            read_n                      <= '1'; -- 0 active, 1 not
            config_done                 <= '0'; -- not done
            config_bytes_ready          <= '0'; 
        elsif rising_edge(clk_40mhz) then
            
            case config_st is

                when st_idle =>
                    
                    config_done  <= '0';
                    chipselect   <= '1';
                    read_n       <= '1';
                    
                    if usb_rx_empty = '0' then -- not empty so read
                        config_st <= st_read;
                    end if;

                when st_read =>
                    read_n <= '0';   -- assert read for one clock
                    config_st <= st_wait;

                when st_wait =>
                    read_n <= '1';   -- deassert read
                    config_st <= st_store;  -- now data is valid next clock

                when st_store =>
                    
                    -- store valid byte
                    configuration_bytes((byte_counter*8+7) downto (byte_counter*8)) <= usb_readdata;

                    if byte_counter = PACKET_SIZE-1 then                        
                        config_st <= st_done;
                    else
                        byte_counter <= byte_counter + 1;
                                                
                        if usb_rx_empty = '0' then
                            config_st <= st_read;
                        else
                            config_st <= st_idle;  -- wait until data available again
                        end if;
                    end if;
                
                when st_done =>                                        
                    byte_counter <= 0;
                    chipselect  <= '0';
                    read_n      <= '1';
                    config_done <= '1';
                    config_bytes_ready <= '1';
                    config_st <= st_done; -- from here the received packet will be sent
                    
                when others =>
                    config_st <= st_idle;

            end case;
        end if;
    end process;

--    process(clk_100mhz)
--    begin
--        if rising_edge(clk_100mhz) then
--            config_ready_d    <= config_bytes_ready;
--            config_ready_sync <= config_ready_d;
--        end if;
--    end process;
    
--    process(clk_100mhz, reset_n, soft_reset_n)
--    begin
--        if reset_n = '0' or soft_reset_n = '0' then
--            fifo_st <= st_idle;
--            fifo_byte_index <= 0;
--            fiforx_tlast <= '0';
--            fiforx_tvalid <= '0';
--            fiforx_tdata <= (31 downto 0 => '0');
            
--        elsif rising_edge(clk_100mhz) then
            
--            case fifo_st is
                
--                when st_idle =>
--                    if config_ready_sync = '1' then
--                        fiforx_tlast <= '0';
--                        fiforx_tvalid <= '0';
--                        fifo_byte_index <= 0;
--                        fifo_st <= st_send;                                                
--                    end if;
                                
--                when st_send =>
--                    fiforx_tvalid <= '1';  -- keep asserted
--                    fiforx_tdata  <= (31 downto 8 => '0') & configuration_bytes(fifo_byte_index*8+7 downto fifo_byte_index*8);
                
--                        if fifo_byte_index = PACKET_SIZE - 1 then
--                            fiforx_tlast <= '1';
--                        else
--                            fiforx_tlast <= '0';
--                        end if;
                
--                    if fiforx_tready = '1' then
--                        if fifo_byte_index = PACKET_SIZE - 1 then
--                            fifo_st <= st_done;
--                        else
--                            fifo_byte_index <= fifo_byte_index + 1;
--                        end if;
--                    end if;
                                
--                when st_done =>
--                    fiforx_tvalid <= '0';
--                    fiforx_tlast <= '0';
--                    fiforx_tdata <= (31 downto 0 => '0');
--                    --fifo_st <= st_idle; -- reset or soft_reset will make it start again               
                
--                when others =>
--                    fifo_st <= st_idle;
            
--            end case;
        
--        end if;
    
    
--    end process;
    
end Behavioral;
