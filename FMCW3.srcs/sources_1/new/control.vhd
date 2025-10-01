library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity control is
    generic (
        MAX_SAMPLES : integer := 2048   -- maximum number of samples per ramp
    );
    Port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        muxout     : in  std_logic;

        -- ADC inputs
        adc_data_a : in  std_logic_vector(15 downto 0);
        adc_data_b : in  std_logic_vector(15 downto 0);
        adc_valid  : in  std_logic;

        -- ADC control outputs
        adc_oe     : out std_logic_vector(1 downto 0);
        adc_shdn   : out std_logic_vector(1 downto 0);
        pa_en      : out std_logic;

        -- USB interface
        usb_chipselect : out std_logic;
        usb_write_n    : out std_logic;
        usb_writedata  : out std_logic_vector(7 downto 0);
        usb_tx_full    : in  std_logic
    );
end control;

architecture Behavioral of control is

    type state_type is (IDLE, RAMP, GAP_WAIT, USB_TX);
    signal state, next_state : state_type;

    -- Internal memory for ramp samples (16-bit A + 16-bit B)
    type mem_type is array (0 to MAX_SAMPLES-1) of std_logic_vector(31 downto 0);
    signal mem        : mem_type := (others => (others => '0'));
    signal sample_idx : integer range 0 to MAX_SAMPLES-1 := 0;
    signal usb_idx    : integer range 0 to MAX_SAMPLES-1 := 0;
    signal adc_latched: std_logic_vector(31 downto 0);

begin

    -- Latch ADC data when valid
    process(clk)
    begin
        if rising_edge(clk) then
            if adc_valid = '1' then
                adc_latched <= adc_data_a & adc_data_b;
            end if;
        end if;
    end process;

    -- FSM sequential
    process(clk, reset)
    begin
        if reset = '1' then
            state       <= IDLE;
            sample_idx  <= 0;
            usb_idx     <= 0;
            adc_oe      <= "11";
            adc_shdn    <= "11";
            pa_en       <= '0';
            usb_chipselect <= '0';
            usb_write_n    <= '1';
            usb_writedata  <= (others => '0');

        elsif rising_edge(clk) then
            state <= next_state;

            case state is

                when IDLE =>
                    adc_oe    <= "11";
                    adc_shdn  <= "11";
                    pa_en     <= '0';
                    usb_chipselect <= '0';
                    usb_write_n    <= '1';
                    sample_idx <= 0;
                    usb_idx    <= 0;
                    if muxout = '1' then
                        next_state <= RAMP;
                    else
                        next_state <= IDLE;
                    end if;

                when RAMP =>
                    adc_oe    <= "00";
                    adc_shdn  <= "00";
                    pa_en     <= '1';
                    usb_chipselect <= '0';
                    usb_write_n    <= '1';

                    -- Store ADC sample in memory
                    if adc_valid = '1' and sample_idx < MAX_SAMPLES then
                        mem(sample_idx) <= adc_latched;
                        sample_idx <= sample_idx + 1;
                    end if;

                    if muxout = '0' then
                        next_state <= GAP_WAIT;
                    else
                        next_state <= RAMP;
                    end if;

                when GAP_WAIT =>
                    -- Disable ADC and PA
                    adc_oe    <= "11";
                    adc_shdn  <= "11";
                    pa_en     <= '0';
                    usb_chipselect <= '1';
                    usb_write_n    <= '1';
                    usb_idx <= 0;
                    next_state <= USB_TX;

                when USB_TX =>
                    adc_oe    <= "11";
                    adc_shdn  <= "11";
                    pa_en     <= '0';
                    usb_chipselect <= '1';

                    if usb_tx_full = '0' and usb_idx < sample_idx then
                        -- send 32-bit sample as 4 bytes over USB
                        case usb_idx mod 4 is
                            when 0 => usb_writedata <= mem(usb_idx/4)(31 downto 24);
                            when 1 => usb_writedata <= mem(usb_idx/4)(23 downto 16);
                            when 2 => usb_writedata <= mem(usb_idx/4)(15 downto 8);
                            when 3 => usb_writedata <= mem(usb_idx/4)(7 downto 0);
                            when others => usb_writedata <= (others => '0');
                        end case;
                        usb_write_n <= '0';
                        usb_idx <= usb_idx + 1;
                    else
                        usb_write_n <= '1';
                    end if;

                    if usb_idx >= sample_idx * 4 then
                        next_state <= IDLE;  -- all samples sent
                    else
                        next_state <= USB_TX;
                    end if;

                when others =>
                    next_state <= IDLE;

            end case;
        end if;
    end process;

end Behavioral;
