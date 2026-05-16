library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity control is
    generic (
        MAX_SAMPLES : integer := 8192
    );
    Port (
        clk                         : in  std_logic;
        reset_n                     : in  std_logic;
        soft_reset_n                : in  std_logic;
        muxout                      : in  std_logic;

        adc_data_a                  : in  std_logic_vector(15 downto 0);
        adc_data_b                  : in  std_logic_vector(15 downto 0);
        adc_valid                   : in  std_logic;

        adc_oe                      : out std_logic_vector(1 downto 0);
        adc_shdn                    : out std_logic_vector(1 downto 0);
        pa_en                       : out std_logic;

        config_done                 : in std_logic;

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
        ramp_done                   : out std_logic
    );
end control;

architecture Behavioral of control is

    component fifo_generator_2
    PORT (
        clk         : IN  STD_LOGIC;
        srst        : IN  STD_LOGIC;
        din         : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
        wr_en       : IN  STD_LOGIC;
        rd_en       : IN  STD_LOGIC;
        dout        : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        full        : OUT STD_LOGIC;
        overflow    : OUT STD_LOGIC;
        empty       : OUT STD_LOGIC
    );
    end component;
    
    component ila_3
    port(
        clk : IN STD_LOGIC;                
        probe0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)  
    );
    end component;
    
    component ila_4
    port(
        clk : IN STD_LOGIC;                
        probe0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0) 
    );
    end component;

    signal reset : std_logic := '0';

    type control_state_t is (
        CTRL_IDLE,
        CTRL_IGNORE_FIRST_RAMP,
        CTRL_RAMP,
        CTRL_GAP_WAIT,
        CTRL_WAIT_SOFT_RESET
    );

    type tx_state_t is (
        TX_IDLE,
        TX_WAIT_CMD1,
        TX_WAIT_CMD2,
        TX_CHECK_CMD,
        TX_READ_ADC_FIFO,
        TX_WAIT_FIFO_DATA,
        TX_PREP_BYTE,
        TX_WRITE_BYTE,
        TX_WAIT_USB_ACK
    );

    signal control_state : control_state_t := CTRL_IDLE;
    signal tx_state      : tx_state_t      := TX_IDLE;

    signal s_adc_fifo_din       : std_logic_vector(31 downto 0) := (others => '0');
    signal s_adc_fifo_dout      : std_logic_vector(31 downto 0) := (others => '0');
    signal s_adc_fifo_wr_en     : std_logic := '0';
    signal s_adc_fifo_rd_en     : std_logic := '0';
    signal s_adc_fifo_wr_full   : std_logic := '0';
    signal s_adc_fifo_wr_ack    : std_logic := '0';
    signal s_adc_fifo_wr_ovf    : std_logic := '0';
    signal s_adc_fifo_rd_empty  : std_logic := '1';

    signal s_tx_word            : std_logic_vector(31 downto 0) := (others => '0');
    signal byte_sel             : integer range 0 to 3 := 0;

    signal s_fifo_overflow_flag : std_logic := '0';
    signal s_usb_overflow_flag  : std_logic := '0';
    
    signal s_usb_rx_rd_en       : std_logic := '0';
    
    signal s_ila3_probe0        : std_logic_vector(11 downto 0);
    signal s_ila3_probe1        : std_logic_vector(0 downto 0);
    signal s_ila3_probe2        : std_logic_vector(0 downto 0);
    signal s_ila3_probe3        : std_logic_vector(0 downto 0);

    signal s_ila4_probe0        : std_logic_vector(7 downto 0);
    signal s_ila4_probe1        : std_logic_vector(0 downto 0);
    signal s_ila4_probe2        : std_logic_vector(0 downto 0);
    signal s_ila4_probe3        : std_logic_vector(11 downto 0);
    signal s_ila4_probe4        : std_logic_vector(0 downto 0);
    signal s_ila4_probe5        : std_logic_vector(0 downto 0);
    

begin

    ila3_inst : ila_3
    port map(    
        clk     => clk,                
        probe0  => s_ila3_probe0,
        probe1  => s_ila3_probe1,
        probe2  => s_ila3_probe2,
        probe3  => s_ila3_probe3
    );
    
    ila4_inst : ila_4
    port map(    
        clk     => clk,                
        probe0  => s_ila4_probe0,
        probe1  => s_ila4_probe1,
        probe2  => s_ila4_probe2,
        probe3  => s_ila4_probe3,
        probe4  => s_ila4_probe4,
        probe5  => s_ila4_probe5
    );

    adc_fifo_inst : fifo_generator_2
    port map (
        clk      => clk,
        srst     => reset,
        din      => s_adc_fifo_din,
        wr_en    => s_adc_fifo_wr_en,
        rd_en    => s_adc_fifo_rd_en,
        dout     => s_adc_fifo_dout,
        full     => s_adc_fifo_wr_full,
        overflow => s_adc_fifo_wr_ovf,
        empty    => s_adc_fifo_rd_empty
    );

    reset <= not reset_n;
    
    usb_rx_rd_en <= s_usb_rx_rd_en;    

    s_ila3_probe0       <= s_adc_fifo_din(11 downto 0);
    s_ila3_probe1(0)    <= s_adc_fifo_wr_en;
    s_ila3_probe2(0)    <= s_adc_fifo_wr_full;
    s_ila3_probe3(0)    <= muxout;
    
    s_ila4_probe0       <= usb_rx_rd_data;
    s_ila4_probe1(0)    <= usb_rx_rd_empty;
    s_ila4_probe2(0)    <= s_usb_rx_rd_en;
    s_ila4_probe3       <= s_adc_fifo_dout(11 downto 0);
    s_ila4_probe4(0)    <= s_adc_fifo_rd_en;
    s_ila4_probe5(0)    <= s_adc_fifo_rd_empty;

    --- Send ramp test data and check with python. For both fir and nofir it is tested and working!
    --- Send data with start bytes to get correct frame for chirp at python code
        
    --------------------------------------------------------------------
    -- CONTROL FSM: ADC writes into FIFO
    --------------------------------------------------------------------
    process(clk, reset_n, soft_reset_n)
    variable adc_test_counter : unsigned(31 downto 0) := (others => '0');
    begin
        if reset_n = '0' or soft_reset_n = '0' then

            control_state <= CTRL_IDLE;

            s_adc_fifo_wr_en <= '0';
            s_adc_fifo_din   <= (others => '0');

            adc_oe    <= "11";
            adc_shdn  <= "11";
            pa_en     <= '0';
            ramp_done <= '0';

            s_fifo_overflow_flag <= '0';

        elsif rising_edge(clk) then

            s_adc_fifo_wr_en <= '0';

            if s_adc_fifo_wr_ovf = '1' then
                s_fifo_overflow_flag <= '1';
            end if;

            case control_state is

                when CTRL_IDLE =>

                    adc_oe    <= "11";
                    adc_shdn  <= "11";
                    pa_en     <= '0';
                    ramp_done <= '0';

                    if microblaze_ramp_configured = '1' and config_done = '1' and muxout = '0' and microblaze_sampling_done = '0' then
                        control_state <= CTRL_IGNORE_FIRST_RAMP;
                        pa_en    <= '0';

                    elsif microblaze_sampling_done = '1' then
                        ramp_done     <= '1';
                        control_state <= CTRL_WAIT_SOFT_RESET;

                    end if;
                
                when CTRL_IGNORE_FIRST_RAMP =>
                
                    -- First ramp may already be in the middle, so do not write ADC data
                    adc_oe   <= "11";
                    adc_shdn <= "11";
                    pa_en    <= '0';
                    
                    -- wait until current ramp finishes and gap starts
                    if muxout = '1' then
                        control_state <= CTRL_GAP_WAIT;
                    end if;

                
                when CTRL_RAMP =>
                
                    adc_oe   <= "00";
                    adc_shdn <= "00";
                    pa_en    <= '1';
                
                    if s_adc_fifo_wr_ovf = '1' then
                        s_fifo_overflow_flag <= '1';
                    end if;
                
                    -- ramp is finished, gap started
                    if muxout = '1' then                
                        control_state <= CTRL_GAP_WAIT;
                        adc_test_counter := (others => '0');
                
                    -- sample ADC data when valid during ramp
                    elsif adc_valid = '1' then                
                        if s_adc_fifo_wr_full = '0' then      
                                                          
                            --s_adc_fifo_din   <= adc_data_a & adc_data_b;
                            s_adc_fifo_din <= std_logic_vector(adc_test_counter);
                            adc_test_counter := adc_test_counter + 1;
                                                   
                            s_adc_fifo_wr_en <= '1';                
                        else                
                            s_fifo_overflow_flag <= '1';                
                        end if;                
                    end if;

                when CTRL_GAP_WAIT =>

                    adc_oe   <= "11";
                    adc_shdn <= "11";
                    pa_en    <= '0';

                    if microblaze_sampling_done = '1' then

                        ramp_done     <= '1';
                        control_state <= CTRL_WAIT_SOFT_RESET;

                    elsif microblaze_ramp_configured = '1' and config_done = '1' and muxout = '0' then
                        control_state <= CTRL_RAMP;
                        pa_en    <= '1';

                    end if;


                when CTRL_WAIT_SOFT_RESET =>

                    adc_oe    <= "11";
                    adc_shdn  <= "11";
                    pa_en     <= '0';
                    ramp_done <= '1';

                    control_state <= CTRL_WAIT_SOFT_RESET;


                when others =>

                    control_state <= CTRL_IDLE;

            end case;
        end if;
    end process;


    --------------------------------------------------------------------
    -- USB TX FSM: wait host command once, then FIFO -> USB
    --------------------------------------------------------------------
    process(clk, reset_n, soft_reset_n)
    begin
        if reset_n = '0' or soft_reset_n = '0' then

            tx_state <= TX_IDLE;

            s_adc_fifo_rd_en <= '0';

            usb_tx_wr_en   <= '0';
            usb_tx_wr_data <= (others => '0');
            s_usb_rx_rd_en   <= '0';

            s_tx_word <= (others => '0');
            byte_sel  <= 0;

            s_usb_overflow_flag <= '0';

        elsif rising_edge(clk) then

            s_adc_fifo_rd_en <= '0';
            usb_tx_wr_en     <= '0';
            s_usb_rx_rd_en     <= '0';

            if usb_tx_wr_ovf = '1' then
                s_usb_overflow_flag <= '1';
            end if;

            case tx_state is

                when TX_IDLE =>

                    byte_sel <= 0;

                    if usb_rx_rd_empty = '0' then
                        s_usb_rx_rd_en <= '1';
                        tx_state     <= TX_WAIT_CMD1;
                    end if;
                
                when TX_WAIT_CMD1 =>
                    tx_state <= TX_WAIT_CMD2;
                
                when TX_WAIT_CMD2 =>
                    tx_state <= TX_CHECK_CMD;

                -- assumes usb_rx_rd_data is valid one clock after usb_rx_rd_en
                when TX_CHECK_CMD =>

                    if usb_rx_rd_data = x"43" then   -- ASCII 'C'
                        tx_state <= TX_READ_ADC_FIFO;
                    else
                        tx_state <= TX_IDLE;
                    end if;


                when TX_READ_ADC_FIFO =>

                    if s_adc_fifo_rd_empty = '0' then
                        s_adc_fifo_rd_en <= '1';
                        tx_state         <= TX_WAIT_FIFO_DATA;
                    else
                        tx_state <= TX_READ_ADC_FIFO;
                    end if;


                -- standard FIFO: wait one clock after rd_en, then latch dout
                when TX_WAIT_FIFO_DATA =>

                    s_tx_word <= s_adc_fifo_dout;
                    byte_sel  <= 0;
                    tx_state  <= TX_PREP_BYTE;


                when TX_PREP_BYTE =>

                    if usb_tx_wr_full = '0' then

                        case byte_sel is
                            when 0      => usb_tx_wr_data <= s_tx_word(31 downto 24);
                            when 1      => usb_tx_wr_data <= s_tx_word(23 downto 16);
                            when 2      => usb_tx_wr_data <= s_tx_word(15 downto 8);
                            when 3      => usb_tx_wr_data <= s_tx_word(7 downto 0);
                            when others => usb_tx_wr_data <= (others => '0');
                        end case;

                        tx_state <= TX_WRITE_BYTE;

                    end if;


                when TX_WRITE_BYTE =>

                    usb_tx_wr_en <= '1';
                    tx_state     <= TX_WAIT_USB_ACK;


                when TX_WAIT_USB_ACK =>

                    if usb_tx_wr_ack = '1' then

                        if byte_sel = 3 then
                            byte_sel <= 0;
                            tx_state <= TX_READ_ADC_FIFO;
                        else
                            byte_sel <= byte_sel + 1;
                            tx_state <= TX_PREP_BYTE;
                        end if;

                    elsif usb_tx_wr_ovf = '1' then

                        s_usb_overflow_flag <= '1';
                        tx_state            <= TX_READ_ADC_FIFO;

                    end if;


                when others =>

                    tx_state <= TX_IDLE;

            end case;
        end if;
    end process;

end Behavioral;