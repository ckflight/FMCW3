library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity control is
    generic (
        MAX_SAMPLES                 : integer := 8192 -- 1 ms ramp = 40.000 samples per ch, 1/10 decimation for 2 channel is 8000 samples per 1ms.
    );
    Port (
        clk                         : in  std_logic;
        reset_n                     : in  std_logic; -- active low
        soft_reset_n                : in  std_logic;
        muxout                      : in  std_logic;

        -- ADC inputs
        adc_data_a                  : in  std_logic_vector(15 downto 0);
        adc_data_b                  : in  std_logic_vector(15 downto 0);
        adc_valid                   : in  std_logic;

        -- ADC control outputs
        adc_oe                      : out std_logic_vector(1 downto 0);
        adc_shdn                    : out std_logic_vector(1 downto 0);
        pa_en                       : out std_logic;
        mixer_en                    : out std_logic;
        config_done                 : in std_logic;

        -- USB interface
        usb_tx_wr_en                : out std_logic;
        usb_tx_wr_data              : out std_logic_vector(7 downto 0);
        usb_tx_wr_full              : in std_logic;
        usb_tx_wr_ack               : in std_logic;
        usb_tx_wr_ovf               : in std_logic;
        
        usb_rx_rd_empty             : in  std_logic;
        usb_rx_rd_data              : in  std_logic_vector(7 downto 0); 
        usb_rx_rd_en                : out std_logic;
        
        microblaze_ramp_configured  : in std_logic;
        microblaze_sampling_done    : in std_logic;
        ramp_done                   : out std_logic -- for debugging on sim
    );
end control;

architecture Behavioral of control is

    type control_state_t is (
        CTRL_IDLE,
        CTRL_RAMP,
        CTRL_WAIT_TX_DONE,
        CTRL_WAIT_SOFT_RESET
    );
    
    type tx_state_t is (
        TX_IDLE,
        TX_WAIT_HOST_CMD,
        TX_READ_CMD_WAIT,
        TX_PREP_BYTE,
        TX_WRITE_BYTE,
        TX_WAIT_ACK,
        TX_DONE
    );
    
    signal control_state : control_state_t := CTRL_IDLE;
    signal tx_state      : tx_state_t      := TX_IDLE;

    type mem_type is array (0 to MAX_SAMPLES-1) of std_logic_vector(31 downto 0);
    signal mem : mem_type := (others => (others => '0'));

    signal sample_idx   : integer range 0 to MAX_SAMPLES := 0;
    signal sample_count : integer range 0 to MAX_SAMPLES := 0;

    signal usb_idx      : integer range 0 to MAX_SAMPLES := 0;
    signal byte_sel     : integer range 0 to 3 := 0;

    signal buffer_ready : std_logic := '0';
    signal usb_tx_done      : std_logic := '0';

begin

    --------------------------------------------------------------------
    -- CONTROL FSM: only radar timing / ADC sampling
    --------------------------------------------------------------------
    process(clk, reset_n, soft_reset_n)
    begin
        if reset_n = '0' or soft_reset_n = '0' then

            control_state <= CTRL_IDLE;

            sample_idx    <= 0;
            sample_count  <= 0;

            buffer_ready  <= '0';

            adc_oe        <= "11";
            adc_shdn      <= "11";
            pa_en         <= '0';
            mixer_en      <= '1';

            ramp_done     <= '0';

        elsif rising_edge(clk) then

            case control_state is

                --------------------------------------------------------
                -- wait until ramp is configured and muxout says ramp active
                --------------------------------------------------------
                when CTRL_IDLE =>
                    adc_oe       <= "11";
                    adc_shdn     <= "11";
                    pa_en        <= '0';
                    mixer_en     <= '1';

                    sample_idx   <= 0;
                    ramp_done    <= '0';

                    if microblaze_ramp_configured = '1' and config_done = '1' and muxout = '1' and microblaze_sampling_done = '0' and buffer_ready = '0' then
                        control_state <= CTRL_RAMP;

                    elsif microblaze_sampling_done = '1' and buffer_ready = '0' then
                        control_state <= CTRL_WAIT_SOFT_RESET;
                        ramp_done     <= '1';

                    end if;


                --------------------------------------------------------
                -- sample ADC while muxout/ramp is active
                --------------------------------------------------------
                when CTRL_RAMP =>

                    adc_oe   <= "00";
                    adc_shdn <= "00";
                    pa_en    <= '1';
                    mixer_en <= '0';

                    if adc_valid = '1' and sample_idx < MAX_SAMPLES then
                        mem(sample_idx) <= adc_data_a & adc_data_b;
                        sample_idx      <= sample_idx + 1;
                    end if;

                    -- ramp finished
                    if muxout = '0' and config_done = '1' then
                        sample_count  <= sample_idx;
                        buffer_ready  <= '1';
                        control_state <= CTRL_WAIT_TX_DONE;
                    end if;


                --------------------------------------------------------
                -- forced gap between ramps: wait until USB TX finishes
                --------------------------------------------------------
                when CTRL_WAIT_TX_DONE =>

                    adc_oe   <= "11";
                    adc_shdn <= "11";
                    pa_en    <= '0';
                    mixer_en <= '1';

                    if usb_tx_done = '1' then
                        buffer_ready  <= '0';
                        control_state <= CTRL_IDLE;
                    end if;


                when CTRL_WAIT_SOFT_RESET =>

                    adc_oe    <= "11";
                    adc_shdn  <= "11";
                    pa_en     <= '0';
                    mixer_en  <= '1';
                    ramp_done <= '1';

                    control_state <= CTRL_WAIT_SOFT_RESET;


                when others =>
                    control_state <= CTRL_IDLE;

            end case;
        end if;
    end process;


    --------------------------------------------------------------------
    -- USB TX FSM: waits host byte, sends completed buffer
    --------------------------------------------------------------------
    process(clk, reset_n, soft_reset_n)
    begin
        if reset_n = '0' or soft_reset_n = '0' then

            tx_state        <= TX_IDLE;

            usb_tx_wr_en    <= '0';
            usb_tx_wr_data  <= (others => '0');

            usb_rx_rd_en    <= '0';

            usb_idx         <= 0;
            byte_sel        <= 0;

            usb_tx_done         <= '0';

        elsif rising_edge(clk) then

            -- default one-clock pulses
            usb_tx_wr_en    <= '0';
            usb_rx_rd_en    <= '0';
            usb_tx_done     <= '0';

            case tx_state is

                --------------------------------------------------------
                -- wait until control FSM has a completed ramp buffer
                --------------------------------------------------------
                when TX_IDLE =>

                    usb_idx  <= 0;
                    byte_sel <= 0;

                    if buffer_ready = '1' then
                        tx_state <= TX_WAIT_HOST_CMD;
                    end if;

                --------------------------------------------------------
                -- same as your working top module:
                -- wait for PC to send one byte command
                --------------------------------------------------------
                when TX_WAIT_HOST_CMD =>

                    if usb_rx_rd_empty = '0' then
                        usb_rx_rd_en <= '1';
                        tx_state     <= TX_READ_CMD_WAIT;
                    end if;


                --------------------------------------------------------
                -- RX FIFO read latency wait
                --------------------------------------------------------
                when TX_READ_CMD_WAIT =>

                    -- Optional command check:
                    -- x"43" = ASCII 'C'
                    
                     if usb_rx_rd_data = x"43" then
                         tx_state <= TX_PREP_BYTE;
                     else
                         tx_state <= TX_WAIT_HOST_CMD;
                     end if;
                     

                --------------------------------------------------------
                -- select next byte from 32-bit sample word
                --------------------------------------------------------
                when TX_PREP_BYTE =>

                    if usb_idx < sample_count then

                        if usb_tx_wr_full = '0' then

                            case byte_sel is
                                when 0      => usb_tx_wr_data <= mem(usb_idx)(31 downto 24);
                                when 1      => usb_tx_wr_data <= mem(usb_idx)(23 downto 16);
                                when 2      => usb_tx_wr_data <= mem(usb_idx)(15 downto 8);
                                when 3      => usb_tx_wr_data <= mem(usb_idx)(7 downto 0);
                                when others => usb_tx_wr_data <= (others => '0');
                            end case;

                            tx_state <= TX_WRITE_BYTE;

                        end if;

                    else
                        tx_state <= TX_DONE;
                    end if;


                --------------------------------------------------------
                -- one-clock active-high write pulse
                --------------------------------------------------------
                when TX_WRITE_BYTE =>

                    usb_tx_wr_en <= '1';
                    tx_state     <= TX_WAIT_ACK;


                --------------------------------------------------------
                -- increment only after FIFO accepted byte
                --------------------------------------------------------
                when TX_WAIT_ACK =>

                    if usb_tx_wr_ack = '1' then

                        if byte_sel = 3 then
                            byte_sel <= 0;
                            usb_idx  <= usb_idx + 1;
                        else
                            byte_sel <= byte_sel + 1;
                        end if;

                        tx_state <= TX_PREP_BYTE;

                    end if;


                --------------------------------------------------------
                -- tell control FSM TX is finished
                --------------------------------------------------------
                when TX_DONE =>

                    usb_tx_wr_data <= (others => '0');
                    usb_tx_done        <= '1';

                    tx_state <= TX_IDLE;


                when others =>
                    tx_state <= TX_IDLE;

            end case;
        end if;
    end process;

end Behavioral;
