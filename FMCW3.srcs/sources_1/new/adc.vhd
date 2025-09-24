library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adc is
    Port (
        clk       : in  std_logic;                       -- 40 MHz ADC clock
        rst       : in  std_logic;
        enable    : in  std_logic;                       -- sampling enable from top module
        adc_data  : in  std_logic_vector(11 downto 0);  -- ADC multiplexed bus
        adc_of    : in  std_logic_vector(1 downto 0);   -- overflow/underflow per channel
        data_a    : out std_logic_vector(15 downto 0);  -- signed channel A
        data_b    : out std_logic_vector(15 downto 0);  -- signed channel B
        of_a      : out std_logic;                       -- overflow A
        of_b      : out std_logic                        -- overflow B
    );
end adc;

architecture Behavioral of adc is
    signal a_reg, b_reg : std_logic_vector(15 downto 0);
begin

    -- Rising edge → Channel A
    process(clk, rst)
    begin
        if rst = '1' then
            a_reg <= (others => '0');
            of_a  <= '0';
        elsif rising_edge(clk) then
            if enable = '1' then
                a_reg <= std_logic_vector(resize(signed(adc_data),16));
                of_a  <= adc_of(0);
            end if;
        end if;
    end process;

    -- Falling edge → Channel B
    process(clk, rst)
    begin
        if rst = '1' then
            b_reg <= (others => '0');
            of_b  <= '0';
        elsif falling_edge(clk) then
            if enable = '1' then
                b_reg <= std_logic_vector(resize(signed(adc_data),16));
                of_b  <= adc_of(1);
            end if;
        end if;
    end process;

    -- Output assignments
    data_a <= a_reg;
    data_b <= b_reg;

end Behavioral;
