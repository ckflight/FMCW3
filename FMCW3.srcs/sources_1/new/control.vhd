library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity control is
    Port (
        clk           : in  std_logic;        -- system clock
        rst           : in  std_logic;
        config_done   : in  std_logic;
        muxout        : in  std_logic;        -- ramp=0, gap=1

        -- ADC interface
        adc_data      : in  std_logic_vector(11 downto 0);
        adc_of        : in  std_logic_vector(1 downto 0);
        adc_enable    : out std_logic;

        -- USB TX interface
        usb_tx_data   : out std_logic_vector(7 downto 0);
        usb_tx_wr     : out std_logic;
        usb_tx_full   : in  std_logic
    );
end control;

architecture Behavioral of control is

    signal sampling : std_logic := '0';
    signal usb_wr   : std_logic := '0';
    signal adc_filtered : std_logic_vector(15 downto 0);

    -- Simple FIR placeholder (replace with actual filter later)
    signal adc_reg : std_logic_vector(15 downto 0);

begin

    -- ADC Sampling process
    adc_proc: process(clk, rst)
    begin
        if rst = '1' then
            adc_enable <= '0';
            adc_reg <= (others => '0');
        elsif rising_edge(clk) then
            if config_done = '1' then
                if muxout = '0' then
                    adc_enable <= '1';
                    -- Capture ADC data (with FIR/decimation logic here)
                    adc_reg <= std_logic_vector(resize(signed(adc_data),16));
                else
                    adc_enable <= '0';
                end if;
            else
                adc_enable <= '0';
            end if;
        end if;
    end process;

    -- USB TX process
    usb_tx_proc: process(clk, rst)
    begin
        if rst = '1' then
            usb_tx_wr <= '0';
            usb_tx_data <= (others => '0');
        elsif rising_edge(clk) then
            if config_done = '1' and muxout = '1' then
                -- Send ADC data byte-by-byte to USB TX FIFO
                if usb_tx_full = '0' then
                    usb_tx_data <= adc_reg(15 downto 8); -- high byte
                    usb_tx_wr <= '1';
                else
                    usb_tx_wr <= '0';
                end if;
            else
                usb_tx_wr <= '0';
            end if;
        end if;
    end process;

end Behavioral;
