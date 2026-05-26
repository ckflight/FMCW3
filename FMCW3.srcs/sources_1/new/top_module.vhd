library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_module is        
    
    generic (
        CONFIG_PACKET_SIZE  : integer := 24    -- Used by config
    );
    
    Port ( 
        -- Clocks & Reset
        sysclk          : in std_logic; -- ECS-TXO-3225MV 40 MHz
        usb_clk         : in std_logic; -- 60 mhz clock from ft2232h to drive logic
        reset_n         : in std_logic; -- idle high, active low

        -- ADF4158
        adf_ce          : out std_logic;   -- Controlled by pin0 of 16 bit gpio out of microblaze and written 1 in microblaze to enable device once
        adf_txdata      : out std_logic;   -- not used = 0
        adf_clk         : out std_logic;   -- SPI CLK
        adf_data        : out std_logic;   -- SPI MOSI
        adf_done        : in std_logic;    -- DNP Mosfet connection. Not used
        adf_le          : out std_logic;   -- Chip Enable / Select for SPI device 
        adf_muxout      : in std_logic;    -- Read rampDel length high pulse on this pin to know ramp start and end

        -- LTC2292 ADC
        adc_data        : in std_logic_vector(11 downto 0);
        adc_of          : in std_logic_vector(1 downto 0); -- adc outputs 1 when overflow underflow (saturation) occurs.
        adc_oe          : out std_logic_vector(1 downto 0);
        adc_shdn        : out std_logic_vector(1 downto 0);
        
        -- FT2232H USB
        usb_data        : inout std_logic_vector(7 downto 0); -- TODO  i will later make it inout!!!!
        usb_rxf         : in std_logic;
        usb_txe         : in std_logic;
        usb_rd          : out std_logic;
        usb_wr          : out std_logic;
        usb_siwua       : out std_logic; -- write 1 to not used 
        usb_oe          : out std_logic;
        usb_suspend     : in std_logic; -- input to indicate if usb is in suspend mode (not used)

        -- Onboard LED
        led1            : out std_logic;

        -- TQP5525 PA
        pa_en           : out std_logic;

        -- ADL5802 Mixer
        mix_en          : out std_logic;

        -- External Connectors
        --ext1            : out std_logic_vector(1 downto 0);
        --ext2            : out std_logic;

        -- SD Card
        SD_DATA         : inout std_logic_vector(3 downto 0);
        SD_CMD          : inout std_logic;
        SD_CLK          : out std_logic;
        SD_CARD_DETECT  : in std_logic

    );
end top_module;

architecture Behavioral of top_module is
    
    component clk_wiz_0
      port (
        clk_out1 : out std_logic; -- 40
        clk_out2 : out std_logic; -- 100 for microblaze
        resetn   : in  std_logic;
        clk_in1  : in  std_logic -- 40 system in
      );
    end component;

    -- In general logic
    -- Microblaze will configure adf4158 with spi.
    -- Then vhdl code will run logic according to the state of muxout pulse (READBACK TO MUXOUT is set on spi config for this)
    component microblaze_wrapper is
    port (
        AXI_STR_RXD_0_tdata     : in std_logic_vector ( 31 downto 0 );
        AXI_STR_RXD_0_tlast     : in std_logic;
        AXI_STR_RXD_0_tready    : out std_logic;
        AXI_STR_RXD_0_tvalid    : in std_logic;
        AXI_STR_TXD_0_tdata     : out std_logic_vector ( 31 downto 0 );
        AXI_STR_TXD_0_tlast     : out std_logic;
        AXI_STR_TXD_0_tready    : in std_logic;
        AXI_STR_TXD_0_tvalid    : out std_logic;
        Clk                     : in std_logic;
        SPI0_CLK                : out std_logic;
        SPI0_CS                 : out std_logic_vector ( 0 to 0 );
        SPI0_MISO               : in std_logic;
        SPI0_MOSI               : out std_logic;
        gpio_rtl_0_tri_o        : out std_logic_vector ( 15 downto 0 );
        reset_rtl_0             : in std_logic
    );
    end component microblaze_wrapper;
    
    component adc is
    Port( 
        clk         : in std_logic;
        adc_data    : in std_logic_vector (11 downto 0);
        data_a      : out std_logic_vector (15 downto 0);
        data_b      : out std_logic_vector (15 downto 0);
        valid       : out std_logic;
        fir_enable  : in std_logic
    );
    end component adc;
    
    component usb_sync is
    port (
        -- User/bus side clock
        clk             : in  std_logic;  -- 40 MHz
        reset_n         : in  std_logic;

        -- RX side to logic
        rx_fifo_dout    : out std_logic_vector(7 downto 0);       
        rx_fifo_rd_en   : in  std_logic;
        rx_fifo_empty   : out std_logic;

        -- TX side to logic
        tx_fifo_din     : in std_logic_vector(7 downto 0);
        tx_fifo_wr_en   : in std_logic;
        tx_fifo_full    : out std_logic;
        tx_fifo_wr_ack  : out std_logic;
        tx_fifo_wr_ovf  : out std_logic;
        
        -- FT2232H side
        usb_clk         : in  std_logic;  -- 60 MHz from FT2232H
        usb_data_in     : in  std_logic_vector(7 downto 0);
        usb_data_out    : out std_logic_vector(7 downto 0);
        is_usb_tx       : out std_logic; -- 1 FPGA drives data line, 0 data line High Z for reception
        
        usb_rxf_n       : in  std_logic;
        usb_txe_n       : in  std_logic;

        usb_oe_n        : out std_logic;
        usb_rd_n        : out std_logic;
        usb_wr_n        : out std_logic   
           
    );
    end component;
    
    component config is
        generic (
            PACKET_SIZE      : integer := CONFIG_PACKET_SIZE
        );
        port (
            clk_40mhz        : in  std_logic;
            clk_100mhz       : in  std_logic;
            
            reset_n          : in  std_logic; -- active low reset
            soft_reset_n     : in  std_logic; -- active low software reset by microblaze to reset modules for next radar op
            
            usb_rx_empty     : in  std_logic;
            usb_rx_readdata  : in  std_logic_vector(7 downto 0); 
            usb_rx_read_en   : out std_logic;
            
            config_done      : out std_logic;
            
            -- Microblaze interfaces
            fifotx_tdata     : in std_logic_vector ( 31 downto 0 );
            fifotx_tlast     : in std_logic;
            fifotx_tready    : out std_logic;
            fifotx_tvalid    : in std_logic;
                    
            fiforx_tdata     : out std_logic_vector ( 31 downto 0 );
            fiforx_tlast     : out std_logic;
            fiforx_tready    : in std_logic;
            fiforx_tvalid    : out std_logic
        );
    end component;
    
    component control is
    port (
        clk                         : in std_logic; -- system clock
        reset_n                     : in std_logic; -- active low reset
        soft_reset_n                : in std_logic; -- active low software reset by microblaze to reset modules for next radar op
        muxout                      : in std_logic; -- high during ramp

        -- ADC inputs
        adc_data_a                  : in std_logic_vector(15 downto 0);
        adc_data_b                  : in std_logic_vector(15 downto 0);
        adc_valid                   : in std_logic;
        send_data_type              : in std_logic;

        -- ADC control outputs
        adc_oe                      : out std_logic_vector(1 downto 0);
        adc_shdn                    : out std_logic_vector(1 downto 0);
        pa_en                       : out std_logic;
        pa_mode                     : in std_logic;

        config_done                 : in std_logic;

        -- USB interface
        usb_tx_wr_en                : out std_logic;
        usb_tx_wr_data              : out std_logic_vector(7 downto 0);
        usb_tx_wr_full              : in std_logic;
        usb_tx_wr_ack               : in std_logic;
        usb_tx_wr_ovf               : in std_logic;
        
        usb_rx_rd_empty             : in std_logic;
        usb_rx_rd_data              : in std_logic_vector(7 downto 0); 
        usb_rx_rd_en                : out std_logic;
        
        microblaze_ramp_configured  : in std_logic; -- microblaze sends this signal that ramp is configured radar can start op
        microblaze_sampling_done    : in std_logic; -- microblaze will calculate total sampling time and tell control module to stop sampling
        ramp_done                   : out std_logic -- debugging signal

    );  
    end component;

--    component ila_0
--    PORT (
--        clk    : in std_logic;                
--        probe0 : in std_logic_vector(7 DOWNTO 0);
--        probe1 : in std_logic_vector(0 DOWNTO 0);
--        probe2 : in std_logic_vector(0 DOWNTO 0)
--    );
--    end component;
    
--    component ila_1
--    PORT (
--        clk     : in std_logic;
--        probe0  : in std_logic_vector(7 DOWNTO 0);
--        probe1  : in std_logic_vector(0 DOWNTO 0);
--        probe2  : in std_logic_vector(0 DOWNTO 0);
--        probe3  : in std_logic_vector(0 DOWNTO 0)
--    );
--    end component;
    
--    component ila_2
--    PORT (
--        clk     : in std_logic;
--        probe0 : IN std_logic_vector(0 DOWNTO 0);
--        probe1 : IN std_logic_vector(0 DOWNTO 0);
--        probe2 : IN std_logic_vector(0 DOWNTO 0);
--        probe3 : IN std_logic_vector(0 DOWNTO 0);
--        probe4 : IN std_logic_vector(0 DOWNTO 0);
--        probe5 : IN std_logic_vector(0 DOWNTO 0);
--        probe6 : IN std_logic_vector(0 DOWNTO 0);
--        probe7 : IN std_logic_vector(0 DOWNTO 0)
--    );
--    end component;
    
    signal clk_40mhz    : std_logic;
    signal clk_100mhz   : std_logic;
    
    -- Microblaze signals
    signal s_gpio_rtl_0_tri_o           : std_logic_vector ( 15 downto 0 ) := (others => '0');
    signal s_uart_rtl_0_rxd             : std_logic := '1';
    signal s_uart_rtl_0_txd             : std_logic := '1';
    
    signal s_spi0_miso                  : std_logic := 'Z';  -- ADF4158 does not have spi miso line so microblaze is connected to this internal signal
    signal s_spi0_cs                    : std_logic_vector(0 downto 0);
       
    -- AXI-Stream RX (VHDL → MicroBlaze)
    signal s_AXI_STR_RXD_0_tdata        : std_logic_vector(31 downto 0);
    signal s_AXI_STR_RXD_0_tvalid       : std_logic;
    signal s_AXI_STR_RXD_0_tready       : std_logic;
    signal s_AXI_STR_RXD_0_tlast        : std_logic;
    
    -- AXI-Stream TX (MicroBlaze → VHDL)
    signal s_AXI_STR_TXD_0_tdata        : std_logic_vector(31 downto 0);
    signal s_AXI_STR_TXD_0_tvalid       : std_logic;
    signal s_AXI_STR_TXD_0_tready       : std_logic;
    signal s_AXI_STR_TXD_0_tlast        : std_logic;
   
    -- ADC signals
    signal s_adc_a_out                  : std_logic_vector(15 downto 0) := (others => '0');         -- channel A data
    signal s_adc_b_out                  : std_logic_vector(15 downto 0) := (others => '0');         -- channel B data
    signal s_adc_valid                  : std_logic := '0';        -- FIR output valid pulse
    signal s_adc_fir_enable             : std_logic := '1';        -- FIR enable set by microblaze

    -- CONFIG signals
    signal s_config_usb_rx_rd_data      : std_logic_vector(7 downto 0) := (others => '0');
    signal s_config_usb_rx_rd_en        : std_logic := '0';
    signal s_config_usb_rx_rd_empty     : std_logic := '0';

    signal s_config_done                : std_logic := '0';   

    -- Signals for control
    signal s_control_usb_tx_wr_en       : std_logic := '1';
    signal s_control_usb_tx_wr_data     : std_logic_vector(7 downto 0) := (others => '0');
    signal s_control_usb_tx_wr_full     : std_logic := '0';
    signal s_control_usb_tx_wr_ack      : std_logic;
    signal s_control_usb_tx_wr_ovf      : std_logic;
    
    signal s_control_usb_rx_rd_data     : std_logic_vector(7 downto 0) := (others => '0');
    signal s_control_usb_rx_rd_en       : std_logic := '0';
    signal s_control_usb_rx_rd_empty    : std_logic := '0';
    
    signal s_control_send_data_type     : std_logic := '1'; -- adc = 1, test data = 0
    signal s_control_pa_mode            : std_logic := '1'; -- pa on off = 1

    signal s_microblaze_done            : std_logic := '0';
    signal s_soft_reset_n               : std_logic := '1';
    signal s_ramp_done                  : std_logic := '0';
    signal s_ramp_configured            : std_logic := '0';
    
    -- ILA Probe signals
--    signal s_ila0_probe0                : std_logic_vector(7 downto 0) := (others => '0');
--    signal s_ila0_probe1                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila0_probe2                : std_logic_vector(0 downto 0) := (others => '0');
    
--    signal s_ila1_probe0                : std_logic_vector(7 downto 0) := (others => '0');
--    signal s_ila1_probe1                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila1_probe2                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila1_probe3                : std_logic_vector(0 downto 0) := (others => '0');

--    signal s_ila2_probe0                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila2_probe1                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila2_probe2                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila2_probe3                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila2_probe4                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila2_probe5                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila2_probe6                : std_logic_vector(0 downto 0) := (others => '0');
--    signal s_ila2_probe7                : std_logic_vector(0 downto 0) := (others => '0');

    signal muxout_sync                  : std_logic := '0';
    signal muxout_sync_d                : std_logic := '0';
    
    -- I have added these internal signals to be able to probe. I cannot probe output directly
    -- usb signals
    signal s_usb_rd                     : std_logic := '1';
    signal s_usb_wr                     : std_logic := '1';
    signal s_usb_oe                     : std_logic := '1';
    signal s_usb_clk                    : std_logic;
    signal s_usb_rxf                    : std_logic;
    signal s_usb_txe                    : std_logic;
        
    signal s_usb_data_in                : std_logic_vector(7 downto 0);
    signal s_usb_data_out               : std_logic_vector(7 downto 0);
    signal s_is_usb_tx                  : std_logic; -- 1 FPGA drives data line, 0 High Z
    
    signal s_usb_rx_fifo_dout           : std_logic_vector(7 downto 0);
    signal s_usb_rx_fifo_empty          : std_logic;
    signal s_usb_rx_fifo_rd_en          : std_logic;
    
    signal s_adf_ce                     : std_logic;
    signal s_adf_le                     : std_logic;
    signal s_adf_clk                    : std_logic;
    signal s_adf_data                   : std_logic;
    
    signal s_pa_en                      : std_logic := '0';

    -- When adf4158 is not working test mux can be generated to test the code.
    constant TEST_MUX_LOW_CYCLES  : integer := 10000; -- 250 us
    constant TEST_MUX_HIGH_CYCLES : integer := 400;   -- 10 us
    signal test_mux_counter : integer range 0 to TEST_MUX_LOW_CYCLES + TEST_MUX_HIGH_CYCLES - 1 := 0;
    signal s_test_mux                   : std_logic := '0';

begin 

    -- GENERAL CODE FLOW UPTO NOW:
    
    -- IMPORTANT NOTE: The radar is not specifically designed to work for high prf which requires ram usage for 256 chirps in cpi.
    -- Therefore i will first use the radar in normal 1 chirp 1 usb transfer. Then i will implement range doppler mode.
    -- For 4 khz prf it can measure 180 km/h max speed and with 2MHz range it can see 700 meters with 100 MHz chirp bandwidth.
    -- This creates 256.000 x 32 bit data per cpi for 2 channels for 256 chirps.
    -- 256 chirp makes 8 km/h velocity resolution, 128 makes 16 km/h resolution 
    -- So by using only 1 ch and 128 chirps this ram usage becomes 64.000
        
    -- adc.vhd:
    -- ADC will be sampled and the samples are forwareded to FIR module (LPF with 20 downsampling) which is implemented in adc.vhd module. 
    -- ADC samples with ADC_OE and ADC_SHDN so these signals will be controlled by control.vhd according to the state of muxout input 
    
    -- config.vhd:
    -- It will control usb_sync.vhd rx pins to receive configuration bytes from python with specific start and end bytes to check correct package.
    -- After reception it will write these bytes to a fifo for microblaze to take it (or uart tx). Also it will make config_done = '1' for control.vhd to know.
    
    -- control.vhd:
    -- It will check MUXOUT input signal to sample during ramp and usb tx during gap.
    -- It will control adc.vhd with its enable pin to start sampling. 

    -- STATIC PIN DEFINITIONS    
    
    -- Drive ADC OE/SHDN pins for normal operation
    -- ADC_OE   <= "00"; -- both channels enabled
    -- ADC_SHDN <= "00"; -- normal operation
    
    s_usb_clk       <= usb_clk;
    usb_data        <= s_usb_data_out when s_is_usb_tx = '1' else (others => 'Z');
    s_usb_data_in   <= usb_data;

    s_usb_rxf   <= usb_rxf;
    s_usb_txe   <= usb_txe;
    
    usb_rd <= s_usb_rd;
    usb_wr <= s_usb_wr;
    usb_oe <= s_usb_oe;
    
    usb_siwua <= '1'; -- when 1 not used
 
    mix_en <= '0';
 
    -- Not used for now
        
    --ext2 <= muxout_sync;
    --ext2(1) <= s_adf_le;
    --ext2(2) <= s_adf_clk;
    
    pa_en                       <= s_pa_en;
                
    adf_txdata                  <= '0'; -- not used. this is for data modulation
        
    s_adf_ce                    <= s_gpio_rtl_0_tri_o(0); -- microblaze 16 bit gpio's bit 0 is controlling this. It will be written 1 to power device
    adf_ce                      <= s_adf_ce;
    
    s_adf_le                    <= s_gpio_rtl_0_tri_o(1); -- microblaze 16 bit gpio's bit 1 is spi_cs of adf4158
    adf_le                      <= s_adf_le;
    
    adf_data                    <= s_adf_data;
    adf_clk                     <= s_adf_clk;
    
    s_microblaze_done           <= s_gpio_rtl_0_tri_o(2); -- microblaze 16 bit gpio's bit 2 is microblaze's done signal to finish sampling
    s_ramp_configured           <= s_gpio_rtl_0_tri_o(3); -- microblaze 16 bit gpio's bit 3 is ramp configured signal
    s_soft_reset_n              <= s_gpio_rtl_0_tri_o(4); -- microblaze 16 bit gpio's bit 4 is software reset to reset everything instead of handshake singals between modules.
    led1                        <= s_gpio_rtl_0_tri_o(5); -- microblaze 16 bit gpio's bit 5 is for led to check microblaze is working    
    s_adc_fir_enable            <= s_gpio_rtl_0_tri_o(6); -- microblaze 16 bit gpio's bit 6 is for fir enable
    s_control_send_data_type    <= s_gpio_rtl_0_tri_o(7); -- microblaze 16 bit gpio's bit 7 is for send data type (adc or test data)
    s_control_pa_mode           <= s_gpio_rtl_0_tri_o(8); -- microblaze 16 bit gpio's bit 8 is for pa control
    s_test_mux                  <= s_gpio_rtl_0_tri_o(9); -- microblaze 16 bit gpio's bit 9 is test mux generate
    
    -- ILA probe assignments for FTDI RX/config debug
--    s_ila0_probe0       <= s_config_usb_rx_rd_data;
--    s_ila0_probe1(0)    <= s_config_usb_rx_rd_en;
--    s_ila0_probe2(0)    <= s_config_usb_rx_rd_empty;
    
--    s_ila1_probe0       <= s_usb_data_in;
--    s_ila1_probe1(0)    <= s_usb_rxf;
--    s_ila1_probe2(0)    <= s_usb_oe;
--    s_ila1_probe3(0)    <= s_usb_rd;
    
--    -- spi is working on ila so hardware issue again. i will route to ext2 to check with scope
--    s_ila2_probe0(0)    <= s_adf_ce;
--    s_ila2_probe1(0)    <= s_adf_le;
--    s_ila2_probe2(0)    <= s_adf_clk;
--    s_ila2_probe3(0)    <= s_adf_data;
--    s_ila2_probe4(0)    <= muxout_sync;
--    s_ila2_probe5(0)    <= s_microblaze_done;
--    s_ila2_probe6(0)    <= s_ramp_configured;
--    s_ila2_probe7(0)    <= s_config_done; ---- CHECK THIS if byte_counter = PACKET_SIZE-1 then might be the reason
    
    s_config_usb_rx_rd_data     <= s_usb_rx_fifo_dout;
    s_control_usb_rx_rd_data    <= s_usb_rx_fifo_dout;
    
    s_config_usb_rx_rd_empty    <= s_usb_rx_fifo_empty when s_config_done = '0' else '1';
    s_control_usb_rx_rd_empty   <= s_usb_rx_fifo_empty when s_config_done = '1' else '1';

    s_usb_rx_fifo_rd_en         <= s_config_usb_rx_rd_en when s_config_done = '0' else s_control_usb_rx_rd_en;
        
    -- Component instantiation
    clk_wiz_0_inst : clk_wiz_0
      port map (
        clk_out1 => clk_40mhz,
        clk_out2 => clk_100mhz,
        resetn   => reset_n,
        clk_in1  => sysclk
    );
           
    process(clk_40mhz)
    begin
        if rising_edge(clk_40mhz) then
        
            if reset_n = '0' or s_soft_reset_n = '0' then
    
                muxout_sync      <= '0';
                muxout_sync_d    <= '0';
                test_mux_counter <= 0;
            
            -- test mux mode
            -- generate 250 micro low ramp, 10 micro high gap    
            elsif s_test_mux = '1' then

                -- 250 us LOW
                -- 10 us HIGH
    
                if test_mux_counter < TEST_MUX_LOW_CYCLES then
                    muxout_sync <= '0';
                else
                    muxout_sync <= '1';
                end if;
    
                if test_mux_counter = TEST_MUX_LOW_CYCLES + TEST_MUX_HIGH_CYCLES - 1 then
                    test_mux_counter <= 0;
                else
                    test_mux_counter <= test_mux_counter + 1;
                end if;
            
            -- metastability for adf4158 generated muxout    
            else
                muxout_sync_d <= adf_muxout;
                muxout_sync <= muxout_sync_d;    
                
                test_mux_counter <= 0;        
            end if;  
                  
        end if;
    end process;    
       
    microblaze_i: component microblaze_wrapper
    port map (
        -- VHDL --> Microblaze data transfer. Radar's configuration data is received by FT2232H's rx which is controlled by config.vhd
        -- Received config data is transferred to microblaze for it to configure ADF4158 over spi.
        AXI_STR_RXD_0_tdata(31 downto 0)=> s_AXI_STR_RXD_0_tdata(31 downto 0),
        AXI_STR_RXD_0_tlast             => s_AXI_STR_RXD_0_tlast,
        AXI_STR_RXD_0_tready            => s_AXI_STR_RXD_0_tready,
        AXI_STR_RXD_0_tvalid            => s_AXI_STR_RXD_0_tvalid,
        
        -- Microblaze --> VHDL data transfer. Not used for now.
        AXI_STR_TXD_0_tdata(31 downto 0)=> s_AXI_STR_TXD_0_tdata(31 downto 0),
        AXI_STR_TXD_0_tlast             => s_AXI_STR_TXD_0_tlast,
        AXI_STR_TXD_0_tready            => s_AXI_STR_TXD_0_tready,
        AXI_STR_TXD_0_tvalid            => s_AXI_STR_TXD_0_tvalid,

        Clk                             => clk_100mhz,

        SPI0_CLK                        => s_adf_clk,       -- spi clk
        SPI0_CS                         => s_spi0_cs,       -- spi cs not used, gpio is used to drive cs pin
        SPI0_MISO                       => s_spi0_miso,     -- spi miso not used adf does not have output
        SPI0_MOSI                       => s_adf_data,      -- spi mosi

        gpio_rtl_0_tri_o(15 downto 0)   => s_gpio_rtl_0_tri_o(15 downto 0),
        reset_rtl_0                     => reset_n         -- Board's reset is active low  

    );
    
    -- Only DATA_A 12 bit line is connected to fpga
    -- ADC is used in mux mode where it outputs both channel in order.
    -- Rising edge channel a data, falling edge channel b data
    -- CLKA, CLKB, MUX pins are connected to same 40MHz clock to enable mux mode. (Datasheet pin func pg 12)
    
    -- Sampling phase:    
    -- Drive adc_oe <= "00" and adc_shdn <= "00"
    -- FPGA reads both channels using rising/falling edge
    
    -- Non-sampling phase (USB transfer / processing):
    -- Drive adc_oe <= "11" and adc_shdn <= "11"
    -- ADC outputs go high-Z or sleep → FPGA can safely process or transfer data

    -- ADC instantiation
    adc_i : component adc
    port map (
        clk         => clk_40mhz,
        adc_data    => adc_data,
        data_a      => s_adc_a_out,
        data_b      => s_adc_b_out,
        valid       => s_adc_valid,
        fir_enable  => s_adc_fir_enable
    );
        
    usb_sync_i : component usb_sync
    port map (
        clk             => clk_40mhz,
        reset_n         => reset_n,

        rx_fifo_dout   => s_usb_rx_fifo_dout,
        rx_fifo_empty  => s_usb_rx_fifo_empty,
        rx_fifo_rd_en  => s_usb_rx_fifo_rd_en,

        tx_fifo_din    => s_control_usb_tx_wr_data,
        tx_fifo_wr_en  => s_control_usb_tx_wr_en,
        tx_fifo_full   => s_control_usb_tx_wr_full,
        tx_fifo_wr_ack => s_control_usb_tx_wr_ack,
        tx_fifo_wr_ovf => s_control_usb_tx_wr_ovf,

        usb_clk         => s_usb_clk,
        usb_data_in     => s_usb_data_in,
        usb_data_out    => s_usb_data_out,
        is_usb_tx       => s_is_usb_tx,

        usb_rxf_n       => s_usb_rxf,
        usb_txe_n       => s_usb_txe,

        usb_oe_n        => s_usb_oe,
        usb_rd_n        => s_usb_rd,
        usb_wr_n        => s_usb_wr

    );

    config_i : component config
    generic map (
        PACKET_SIZE => CONFIG_PACKET_SIZE
    )
    port map (
        clk_40mhz        => clk_40mhz,      -- vhdl logic uses this clock such as reading usb data 
        clk_100mhz       => clk_100mhz,     -- axi bus is driven with this clock since microblaze uses this clock
        
        reset_n          => reset_n,        -- top-level reset signal
        soft_reset_n     => s_soft_reset_n,
        
        usb_rx_empty     => s_config_usb_rx_rd_empty,
        usb_rx_readdata  => s_config_usb_rx_rd_data,
        usb_rx_read_en   => s_config_usb_rx_rd_en,
        
        config_done      => s_config_done,
        
        -- Microblaze --> VHDL data transfer. Not used for now.
        fifotx_tdata     => s_AXI_STR_TXD_0_tdata,
        fifotx_tlast     => s_AXI_STR_TXD_0_tlast,
        fifotx_tready    => s_AXI_STR_TXD_0_tready,
        fifotx_tvalid    => s_AXI_STR_TXD_0_tvalid,
        
        -- VHDL --> Microblaze data transfer. Radar's configuration data is received by FT2232H's rx which is controlled by config.vhd
        -- Received config data is transferred to microblaze for it to configure ADF4158 over spi.
        fiforx_tdata     => s_AXI_STR_RXD_0_tdata,
        fiforx_tlast     => s_AXI_STR_RXD_0_tlast,
        fiforx_tready    => s_AXI_STR_RXD_0_tready,
        fiforx_tvalid    => s_AXI_STR_RXD_0_tvalid
    );
    
    -- Control FSM instantiation    
    control_i : component control
    port map (
        clk                         => clk_40mhz,
        
        reset_n                     => reset_n,
        soft_reset_n                => s_soft_reset_n,
        
        muxout                      => muxout_sync,     -- ADF4158 MUXOUT input low pulse during ramp
        
        adc_data_a                  => s_adc_a_out,
        adc_data_b                  => s_adc_b_out,
        adc_valid                   => s_adc_valid,
        send_data_type              => s_control_send_data_type,
         
        adc_oe                      => adc_oe,
        adc_shdn                    => adc_shdn,        
        pa_en                       => s_pa_en,
        pa_mode                     => s_control_pa_mode,
        
        config_done                 => s_config_done,   -- input from config module to start sampling
        
        usb_tx_wr_en                => s_control_usb_tx_wr_en,
        usb_tx_wr_data              => s_control_usb_tx_wr_data,
        usb_tx_wr_full              => s_control_usb_tx_wr_full,
        usb_tx_wr_ack               => s_control_usb_tx_wr_ack,
        usb_tx_wr_ovf               => s_control_usb_tx_wr_ovf,
        
        usb_rx_rd_empty             => s_control_usb_rx_rd_empty,
        usb_rx_rd_data              => s_control_usb_rx_rd_data,
        usb_rx_rd_en                => s_control_usb_rx_rd_en,

        microblaze_ramp_configured  => s_ramp_configured,
        microblaze_sampling_done    => s_microblaze_done,
        ramp_done                   => s_ramp_done
    );

--    ila_0_i : ila_0
--    port map (
--        clk    => clk_40mhz,
--        probe0 => s_ila0_probe0,
--        probe1 => s_ila0_probe1,
--        probe2 => s_ila0_probe2
--    );
    
--    ila_1_i : ila_1
--    port map (
--        clk    => s_usb_clk,
--        probe0 => s_ila1_probe0,
--        probe1 => s_ila1_probe1,
--        probe2 => s_ila1_probe2,
--        probe3 => s_ila1_probe3
--    );

--    ila_2_i : ila_2
--    port map (
--        clk    => clk_40mhz,
--        probe0 => s_ila2_probe0,
--        probe1 => s_ila2_probe1,
--        probe2 => s_ila2_probe2,
--        probe3 => s_ila2_probe3,
--        probe4 => s_ila2_probe4,
--        probe5 => s_ila2_probe5,
--        probe6 => s_ila2_probe6,
--        probe7 => s_ila2_probe7
--    );

end Behavioral;