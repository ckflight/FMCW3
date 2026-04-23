library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_module is        
    
    generic (
        CONFIG_PACKET_SIZE  : integer := 256;    -- Used by config
        MAX_ADC_SAMPLES     : integer := 2400    -- Used by control
    );
    
    Port ( 
        -- Clocks & Reset
        sysclk          : in std_logic; -- ECS-TXO-3225MV 40 MHz
        usb_clkout      : in std_logic; -- 60 mhz clock from ft2232h to drive logic
        reset_n           : in std_logic; -- idle high, active low

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
        usb_data        : inout std_logic_vector(7 downto 0);
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
        ext1            : out std_logic_vector(5 downto 0);
        ext2            : out std_logic_vector(5 downto 0);

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
        gpio_rtl_0_tri_o        : out STD_LOGIC_VECTOR ( 15 downto 0 );
        --uart_rtl_0_rxd          : in STD_LOGIC;
        --uart_rtl_0_txd          : out STD_LOGIC;
        reset_rtl_0             : in STD_LOGIC;
        spi0_mosi               : out STD_LOGIC;
        spi0_miso               : in STD_LOGIC;
        spi0_sck                : out STD_LOGIC;
        spi0_cs                 : out STD_LOGIC_VECTOR ( 0 to 0 );
        Clk                     : in STD_LOGIC;        
        
        AXI_STR_TXD_0_tdata     : out STD_LOGIC_VECTOR ( 31 downto 0 );
        AXI_STR_TXD_0_tlast     : out STD_LOGIC;
        AXI_STR_TXD_0_tready    : in STD_LOGIC;
        AXI_STR_TXD_0_tvalid    : out STD_LOGIC;
        
        AXI_STR_RXD_0_tdata     : in STD_LOGIC_VECTOR ( 31 downto 0 );
        AXI_STR_RXD_0_tlast     : in STD_LOGIC;
        AXI_STR_RXD_0_tready    : out STD_LOGIC;
        AXI_STR_RXD_0_tvalid    : in STD_LOGIC
    );
    end component microblaze_wrapper;
    
    component adc is
    Port( 
        clk         : in STD_LOGIC;
        adc_data    : in STD_LOGIC_VECTOR (11 downto 0);
        data_a      : out STD_LOGIC_VECTOR (15 downto 0);
        data_b      : out STD_LOGIC_VECTOR (15 downto 0);
        valid       : out STD_LOGIC
    );
    end component adc;
    
    component usb_sync is
    port (
        -- Bus signals
        clk         : in std_logic;
        reset_n     : in std_logic; -- active low
        soft_reset_n : in std_logic; -- active low
        read_n      : in std_logic;
        write_n     : in std_logic;
        chipselect  : in std_logic;
        readdata    : out std_logic_vector (7 downto 0);
        writedata   : in std_logic_vector (7 downto 0);
        tx_full     : out std_logic;
        rx_empty    : out std_logic;
    
        -- FT2232 Bus Signals
        usb_clock   : in std_logic;
        usb_data    : inout std_logic_vector(7 downto 0);
        usb_rd_n    : out std_logic;
        usb_wr_n    : out std_logic;
        usb_oe_n    : out std_logic;
        usb_rxf_n   : in std_logic;
        usb_txe_n   : in std_logic
    );
    end component usb_sync;
    
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
            usb_readdata     : in  std_logic_vector(7 downto 0);
            chipselect       : out std_logic;
            read_n           : out std_logic;
            config_done      : out std_logic;
            
            fifotx_tdata     : in STD_LOGIC_VECTOR ( 31 downto 0 );
            fifotx_tlast     : in STD_LOGIC;
            fifotx_tready    : out STD_LOGIC;
            fifotx_tvalid    : in STD_LOGIC;
                    
            fiforx_tdata     : out STD_LOGIC_VECTOR ( 31 downto 0 );
            fiforx_tlast     : out STD_LOGIC;
            fiforx_tready    : in STD_LOGIC;
            fiforx_tvalid    : out STD_LOGIC
        );
    end component;
    
    component control is
    generic (
        MAX_SAMPLES                 : integer := MAX_ADC_SAMPLES -- number of decimated samples per ramp
    );
    port (
        clk                         : in  std_logic; -- system clock
        reset_n                     : in  std_logic; -- active low reset
        soft_reset_n                : in  std_logic; -- active low software reset by microblaze to reset modules for next radar op
        muxout                      : in  std_logic; -- high during ramp

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
        usb_chipselect              : out std_logic;
        usb_write_n                 : out std_logic;
        usb_writedata               : out std_logic_vector(7 downto 0);
        usb_tx_full                 : in  std_logic;
        
        microblaze_ramp_configured  : in std_logic; -- microblaze sends this signal that ramp is configured radar can start op
        microblaze_sampling_done    : in std_logic; -- microblaze will calculate total sampling time and tell control module to stop sampling
        ramp_done                   : out std_logic -- debugging signal

    );  
    end component;

    component ila_0
    PORT (
        clk         : IN STD_LOGIC;                
        probe0      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        probe1      : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        probe2      : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        probe3      : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
    end component;
    
    signal clk_40mhz    : std_logic;
    signal clk_100mhz   : std_logic;
    
    -- Microblaze signals
    signal s_gpio_rtl_0_tri_o       : STD_LOGIC_VECTOR ( 15 downto 0 ) := (others => '0');
    signal s_uart_rtl_0_rxd         : STD_LOGIC := '1';
    signal s_uart_rtl_0_txd         : STD_LOGIC := '1';
    
    signal s_spi0_miso              : STD_LOGIC := 'Z';  -- ADF4158 does not have spi miso line so microblaze is connected to this internal signal
    signal s_spi0_cs                : STD_LOGIC := '1';  -- LE pin will be controlled with gpio so this spi's cs will only be connected to internal signal for now
   
    -- AXI-Stream RX (VHDL → MicroBlaze)
    signal s_AXI_STR_RXD_0_tdata    : std_logic_vector(31 downto 0);
    signal s_AXI_STR_RXD_0_tvalid   : std_logic;
    signal s_AXI_STR_RXD_0_tready   : std_logic;
    signal s_AXI_STR_RXD_0_tlast    : std_logic;
    
    -- AXI-Stream TX (MicroBlaze → VHDL)
    signal s_AXI_STR_TXD_0_tdata    : std_logic_vector(31 downto 0);
    signal s_AXI_STR_TXD_0_tvalid   : std_logic;
    signal s_AXI_STR_TXD_0_tready   : std_logic;
    signal s_AXI_STR_TXD_0_tlast    : std_logic;
   
    -- ADC signals
    signal s_adc_a_out              : std_logic_vector(15 downto 0) := (others => '0');         -- channel A data
    signal s_adc_b_out              : std_logic_vector(15 downto 0) := (others => '0');         -- channel B data
    signal s_adc_valid              : std_logic := '0';        -- FIR output valid pulse

    -- USB_SYNC signals
    signal s_chipselect             : std_logic := '0';
    signal s_tx_full                : std_logic := '0';
    signal s_rx_empty               : std_logic := '1';
        
    -- CONFIG signals
    signal s_config_done            : std_logic := '0';   
    signal s_config_usb_readdata    : std_logic_vector(7 downto 0) := (others => '0');
    signal s_config_usb_chipselect  : std_logic := '0';
    signal s_config_usb_read_n      : std_logic := '1';

    -- Signals for control
    signal s_control_usb_write_n     : std_logic := '1';
    signal s_control_usb_chipselect  : std_logic := '0';
    signal s_control_usb_writedata   : std_logic_vector(7 downto 0) := (others => '0');

    signal s_microblaze_done         : std_logic := '0';
    signal s_soft_reset_n            : std_logic := '1';
    signal s_ramp_done               : std_logic := '0';
    signal s_ramp_configured         : std_logic := '0';

    
    -- ILA Probe signals
    signal s_probe0 : std_logic_vector(7 DOWNTO 0) := (others => '0');
    signal s_probe1 : std_logic_vector(11 DOWNTO 0)  := (others => '0');
    signal s_probe2 : std_logic_vector(31 DOWNTO 0) := (others => '0');
    signal s_probe3 : std_logic_vector(9 DOWNTO 0) := (others => '0');
    
    signal muxout_sync : std_logic := '0';
    signal muxout_sync_d : std_logic := '0';
    
begin 

    -- GENERAL CODE FLOW UPTO NOW:
    
    -- IMPORTANT NOTE: The radar is not specifically designed to work for high prf which requires ram usage for 256 chirps in cpi.
    -- Therefore i will first use the radar in normal 1 chirp 1 usb transfer firt. Then i will implement range doppler mode.
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
     
    -- Not used for now
    ext1 <= (others => '0');
    ext2 <= (others => '0');
        
    adf_txdata <= '0'; -- not used. this is for data modulation
        
    adf_ce                      <= s_gpio_rtl_0_tri_o(0); -- microblaze 16 bit gpio's bit 0 is controlling this. It will be written 1 to power device
    adf_le                      <= s_gpio_rtl_0_tri_o(1); -- microblaze 16 bit gpio's bit 1 is spi_cs of adf4158
    s_microblaze_done           <= s_gpio_rtl_0_tri_o(2); -- microblaze 16 bit gpio's bit 2 is microblaze's done signal to finish sampling
    s_ramp_configured           <= s_gpio_rtl_0_tri_o(3); -- microblaze 16 bit gpio's bit 3 is ramp configured signal
    s_soft_reset_n              <= s_gpio_rtl_0_tri_o(4); -- microblaze 16 bit gpio's bit 4 is software reset to reset everything instead of handshake singals between modules.
    led1                        <= s_gpio_rtl_0_tri_o(5); -- microblaze 16 bit gpio's bit 5 is for led to check microblaze is working
    
    -- connect chipselect according to if config is done or not.
    -- if config is done then usb control can start using usb
    s_chipselect <= s_config_usb_chipselect when s_config_done = '0' else s_control_usb_chipselect;
           
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
            muxout_sync_d <= adf_muxout;
            muxout_sync <= muxout_sync_d;
        end if;
    end process;    
       
    microblaze_i: component microblaze_wrapper
    port map (
        Clk                             => clk_100mhz,
        gpio_rtl_0_tri_o(15 downto 0)   => s_gpio_rtl_0_tri_o(15 downto 0),
        reset_rtl_0                     => reset_n,         -- Board's reset is active low
        spi0_cs(0)                      => s_spi0_cs,       -- spi cs not used, gpio is used to drive cs pin
        spi0_miso                       => s_spi0_miso,     -- spi miso not used adf does not have output
        spi0_mosi                       => adf_data,        -- spi mosi
        spi0_sck                        => adf_clk,         -- spi clk
        --uart_rtl_0_rxd                  => s_uart_rtl_0_rxd,
        --uart_rtl_0_txd                  => s_uart_rtl_0_txd,
        
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
        AXI_STR_TXD_0_tvalid            => s_AXI_STR_TXD_0_tvalid
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
        clk      => clk_40mhz,
        adc_data => adc_data,
        data_a   => s_adc_a_out,
        data_b   => s_adc_b_out,
        valid    => s_adc_valid
    );
    
    USB_SIWUA <= '1'; -- when 1 not used
    
    usb_sync_i : component usb_sync
    port map (
        clk         => clk_40mhz,
        reset_n     => reset_n,
        soft_reset_n=> s_soft_reset_n,
        
        read_n      => s_config_usb_read_n,     -- 0 to read from rx fifo of usb_sync (config reads usb to get python script's setup parameters)
        write_n     => s_control_usb_write_n,   -- 0 to write to tx fifo of usb_sync (control writes usb to send adc data to python)
        chipselect  => s_chipselect,            -- 1 to selectchip for both read and write    
        readdata    => s_config_usb_readdata,   -- read data 8 bit
        writedata   => s_control_usb_writedata, -- write data 8 bit
        tx_full     => s_tx_full,               -- is full flag
        rx_empty    => s_rx_empty,              -- is empty flag
    
        -- FT2232 Bus Signals
        usb_clock   => usb_clkout,
        usb_data    => usb_data,
        usb_rd_n    => usb_rd,
        usb_wr_n    => usb_wr,
        usb_oe_n    => usb_oe,
        usb_rxf_n   => usb_rxf,         -- input signal to indicate rx data over usb
        usb_txe_n   => usb_txe          -- input signal to indicate usb is available for tx
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
        usb_rx_empty     => s_rx_empty,
        usb_readdata     => s_config_usb_readdata,
        chipselect       => s_config_usb_chipselect,
        read_n           => s_config_usb_read_n,
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
    control_i : control
    generic map (
        MAX_SAMPLES => MAX_ADC_SAMPLES  -- adjust according to ramp length
    )
    port map (
        clk                         => clk_40mhz,
        reset_n                     => reset_n,
        soft_reset_n                => s_soft_reset_n,
        muxout                      => muxout_sync,     -- ADF4158 MUXOUT input high pulse during ramp
        
        adc_data_a                  => s_adc_a_out,
        adc_data_b                  => s_adc_b_out,
        adc_valid                   => s_adc_valid,
        adc_oe                      => adc_oe,
        adc_shdn                    => adc_shdn,
        
        pa_en                       => pa_en,
        mixer_en                    => mix_en,
        config_done                 => s_config_done,   -- input from config module to start sampling
        
        usb_write_n                 => s_control_usb_write_n,
        usb_chipselect              => s_control_usb_chipselect,
        usb_writedata               => s_control_usb_writedata,
        usb_tx_full                 => s_tx_full,
        
        microblaze_ramp_configured  => s_ramp_configured,
        microblaze_sampling_done    => s_microblaze_done,
        ramp_done                   => s_ramp_done
    );

    ila_0_i : ila_0
    port map (
        clk    => clk_40mhz,
        probe0 => s_probe0,
        probe1 => s_probe1,
        probe2 => s_probe2,
        probe3 => s_probe3
    );

end Behavioral;