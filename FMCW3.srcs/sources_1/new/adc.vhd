
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- This is the 2 fir compiler implementation code.
-- Because based on the 2 channel interleaved fir compiler implementation sim result,
-- They dont look identical

entity adc is
    Port( 
        clk         : in STD_LOGIC;
        adc_data    : in STD_LOGIC_VECTOR (11 downto 0);
        data_a      : out STD_LOGIC_VECTOR (15 downto 0);
        data_b      : out STD_LOGIC_VECTOR (15 downto 0);
        valid       : out STD_LOGIC
    );
end adc;

architecture Behavioral of adc is

    constant generate_fir : boolean := true;
    signal data_a_buffer, data_b_buffer : std_logic_vector(11 downto 0);

    COMPONENT fir_compiler_0
    PORT (
        aclk                : IN STD_LOGIC;
        s_axis_data_tvalid  : IN STD_LOGIC;
        s_axis_data_tready  : OUT STD_LOGIC;
        s_axis_data_tdata   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        m_axis_data_tvalid  : OUT STD_LOGIC;
        m_axis_data_tdata   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
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
            data_a <= fir1_data_out;
            data_b <= fir2_data_out;
            
            -- If fir is true: fir1 and fir2 result should be both 1
            -- If fir is false: nofir result will be assigned to valid.
            if generate_fir then
                valid <= fir1_valid and fir2_valid;
            else
                valid <= nofir_valid;
            end if;
            
        end if;        
    end process;    
    
    -- Sampled data is registered to these signals and concatanated with 4 zeros to make it 16 bit simultaneously
    fir1_data_in <= "0000" & data_a_buffer;
    fir2_data_in <= "0000" & data_b_buffer;

    -- If fir filter is selected.
    g_fir : if generate_fir generate               
    
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
    
    end generate;
    
    -- If fir is not selected then valid pulse is generated at every 41 cycles
    -- ADC is still sampled with 40msps but 1msps valid is generated
    g_not_fir : if not generate_fir generate
    
        fir1_data_out <= fir1_data_in;
        fir2_data_out <= fir2_data_in;
        
        process(clk)
        variable count : unsigned(7 downto 0) := (others => '0');
        begin        
            if rising_edge(clk) then
                if count = to_unsigned(40, 8) then
                    count := (others => '0');
                    nofir_valid <= '1';
                else
                    count := count + 1;
                    nofir_valid <= '0';
                end if;
            end if;
        end process;
        
    end generate;
    
end Behavioral;