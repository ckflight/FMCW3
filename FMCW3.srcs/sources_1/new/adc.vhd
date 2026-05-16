
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- This is the 2 fir compiler implementation code.
-- Because based on the 2 channel interleaved fir compiler implementation sim result,
-- They dont look identical

entity adc is
    Port( 
        clk         : in std_logic;
        adc_data    : in std_logic_vector (11 downto 0);
        data_a      : out std_logic_vector (15 downto 0);
        data_b      : out std_logic_vector (15 downto 0);
        valid       : out std_logic;
        fir_enable  : in std_logic
    );
end adc;

architecture Behavioral of adc is

    signal data_a_buffer, data_b_buffer : std_logic_vector(11 downto 0);

    COMPONENT fir_compiler_0
    PORT (
        aclk                : IN std_logic;
        s_axis_data_tvalid  : IN std_logic;
        s_axis_data_tready  : OUT std_logic;
        s_axis_data_tdata   : IN std_logic_vector(15 DOWNTO 0);
        m_axis_data_tvalid  : OUT std_logic;
        m_axis_data_tdata   : OUT std_logic_vector(15 DOWNTO 0)
        );
    END COMPONENT;
    
    signal fir1_data_in_valid            : std_logic := '1';
    signal fir2_data_in_valid            : std_logic := '1';
    
    -- "the input data is valid and ready to be consumed by FIR if it can accept it. It is ready on sim so it is not checked"
    signal fir1_ready                    : std_logic;  
    signal fir2_ready                    : std_logic;
    
    signal fir1_data_in, fir1_data_out   : std_logic_vector(15 downto 0);
    signal fir2_data_in, fir2_data_out   : std_logic_vector(15 downto 0);
        
    signal fir1_valid                    : std_logic;
    signal fir2_valid                    : std_logic;
    signal nofir_valid                   : std_logic;
    
begin
    
    -- ADC Channel 1 sample on rising edge
    rising : process(clk, adc_data)    
    begin
        if rising_edge(clk) then
            data_a_buffer <= adc_data;
        end if;        
    end process;
    
    -- ADC channel 2 sample on falling edge
    falling : process(clk, adc_data)    
    begin    
        if falling_edge(clk) then
            data_b_buffer <= adc_data;
        end if;        
    end process;
    
    -- fir output is registered to output sync with clock
    -- Other modules are synced to clock so output it accordingly   
    output : process(clk)
    begin
        if rising_edge(clk) then
    
            if fir_enable = '1' then
    
                data_a <= fir1_data_out;
                data_b <= fir2_data_out;
    
                valid <= fir1_valid and fir2_valid;
    
            else
    
                data_a <= fir1_data_in;
                data_b <= fir2_data_in;
    
                valid <= nofir_valid;
    
            end if;
    
        end if;
    end process;
    
    
    -- Sampled data is registered to these signals and concatanated with 4 zeros to make it 16 bit simultaneously
    fir1_data_in <= "0000" & data_a_buffer;
    fir2_data_in <= "0000" & data_b_buffer;
          
    
    fir1 : fir_compiler_0
    PORT MAP (
        aclk => clk,
        s_axis_data_tvalid  => fir1_data_in_valid,
        s_axis_data_tready  => fir1_ready,
        s_axis_data_tdata   => fir1_data_in,
        m_axis_data_tvalid  => fir1_valid,
        m_axis_data_tdata   => fir1_data_out
    );  
    
    fir2 : fir_compiler_0
    PORT MAP (
        aclk => clk,
        s_axis_data_tvalid  => fir2_data_in_valid,
        s_axis_data_tready  => fir2_ready,
        s_axis_data_tdata   => fir2_data_in,
        m_axis_data_tvalid  => fir2_valid,
        m_axis_data_tdata   => fir2_data_out
    );                      
    
    -- If fir is not selected then valid pulse is generated at every 20 cycles
    -- ADC is still sampled with 40msps but 2msps valid is generated     
    -- FIR filter generates its own valid output with same 1/20 sample rate
    process(clk)
    variable count : unsigned(7 downto 0) := (others => '0');
    begin        
        if rising_edge(clk) then
            if count = to_unsigned(19, 8) then
                count := (others => '0');
                nofir_valid <= '1';
            else
                count := count + 1;
                nofir_valid <= '0';
            end if;
        end if;
    end process;
        

    
end Behavioral;