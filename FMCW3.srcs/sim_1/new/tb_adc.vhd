library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_adc is
end tb_adc;

architecture sim of tb_adc is

    -- DUT ports
    signal clk       : std_logic := '0';
    signal adc_data  : std_logic_vector(11 downto 0) := (others => '0');
    signal data_a    : std_logic_vector(15 downto 0);
    signal data_b    : std_logic_vector(15 downto 0);
    signal valid     : std_logic;

    -- Simulation control
    constant clk_period : time := 25 ns;  -- 40 MHz

begin
    -- Instantiate the DUT
    uut: entity work.adc
        port map (
            clk      => clk,
            adc_data => adc_data,
            data_a   => data_a,
            data_b   => data_b,
            valid    => valid
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus for adc_data (Channel A on rising, Channel B on falling)
    stim_process : process
        variable chA : unsigned(11 downto 0) := (others => '0');
        variable chB : unsigned(11 downto 0) := (others => '1');
    begin
        for i in 0 to 100 loop
            -- Rising edge → Channel A sample
            wait until rising_edge(clk);
            adc_data <= std_logic_vector(chA);
            chA := chA + 1;

            -- Falling edge → Channel B sample
            wait until falling_edge(clk);
            adc_data <= std_logic_vector(chB);
            chB := chB + 1;  -- step differently so you can see difference
        end loop;

        wait; -- stop simulation
    end process;

end sim;
