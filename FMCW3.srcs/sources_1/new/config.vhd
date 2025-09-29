
-- CURRENT STATUS OF THE MODULE:
-- It reads usb_sync rx and stores 64 bytes to internal register. 
-- Later i will send these bytes to microblaze with uart for simplicity. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity config is
    generic (
        PACKET_SIZE : integer := 64  -- number of bytes to register
    );
    Port (
        clk          : in  std_logic;
        rst          : in  std_logic;
        usb_rx_empty : in  std_logic;
        usb_readdata : in  std_logic_vector(7 downto 0);
        chipselect   : out std_logic;
        read_n       : out std_logic;
        config_done  : out std_logic;
        data_out     : out std_logic_vector(PACKET_SIZE*8-1 downto 0) -- this might not be needed if i send data over uart in here after reception
    );
end config;

architecture Behavioral of config is

    type state_type is (IDLE, READ);
    signal state        : state_type := IDLE;
    signal byte_counter : integer range 0 to PACKET_SIZE-1 := 0;
    signal tmp_data     : std_logic_vector(PACKET_SIZE*8-1 downto 0) := (others => '0');

begin

    config_proc: process(clk, rst)
    begin
        if rst = '1' then
            state        <= IDLE;
            byte_counter <= 0;
            tmp_data     <= (others => '0');
            chipselect   <= '0';
            read_n       <= '1';
            config_done  <= '0';
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    config_done  <= '0';
                    byte_counter <= 0;
                    chipselect   <= '1';  -- select usb_sync
                    read_n       <= '1';
                    if usb_rx_empty = '0' then
                        state <= READ;
                    end if;

                when READ =>
                    if usb_rx_empty = '0' then
                        read_n <= '0';  -- pulse read
                        tmp_data((PACKET_SIZE-1-byte_counter)*8+7 downto (PACKET_SIZE-1-byte_counter)*8) <= usb_readdata;
                        byte_counter <= byte_counter + 1;
                        if byte_counter = PACKET_SIZE-1 then
                            state <= IDLE;
                            config_done <= '1';
                        end if;
                    else
                        read_n <= '1';
                    end if;

                when others =>
                    state <= IDLE;

            end case;
        end if;
    end process;

    data_out <= tmp_data;

end Behavioral;
