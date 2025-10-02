library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity top_module is
    Port ( 
        -- Clocks & Reset
        SYSCLK       : in std_logic; -- ECS-TXO-3225MV 40 MHz
        USB_CLKOUT   : in std_logic; -- 60 mhz clock from ft2232h to drive logic
        RESET        : in std_logic; -- idle high, active low

        -- ADF4158
        ADF_CE       : out std_logic;   -- Controlled by pin0 of 16 bit gpio out of microblaze and written 1 in microblaze to enable device once
        ADF_TXDATA   : out std_logic;   -- not used = 0
        ADF_CLK      : out std_logic;   -- SPI CLK
        ADF_DATA     : out std_logic;   -- SPI MOSI
        ADF_DONE     : in std_logic;    -- DNP Mosfet connection. Not used
        ADF_LE       : out std_logic;   -- Chip Enable / Select for SPI device 
        ADF_MUXOUT   : in std_logic;    -- Read rampDel length high pulse on this pin to know ramp start and end

        -- LTC2292 ADC
        ADC_DATA     : in std_logic_vector(11 downto 0);
        ADC_OF       : in std_logic_vector(1 downto 0); -- adc outputs 1 when overflow underflow (saturation) occurs.
        ADC_OE       : out std_logic_vector(1 downto 0);
        ADC_SHDN     : out std_logic_vector(1 downto 0);

        -- FT2232H USB
        USB_DATA     : inout std_logic_vector(7 downto 0);
        USB_RXF      : in std_logic;
        USB_TXE      : in std_logic;
        USB_RD       : out std_logic;
        USB_WR       : out std_logic;
        USB_SIWUA    : out std_logic; -- write 1 to not used 
        USB_OE       : out std_logic;
        USB_SUSPEND  : in std_logic; -- input to indicate if usb is in suspend mode (not used)

        -- Onboard LED
        LED1         : out std_logic;

        -- TQP5525 PA
        PA_EN        : out std_logic;

        -- ADL5802 Mixer
        MIX_EN       : out std_logic;

        -- External Connectors
        EXT1         : out std_logic_vector(5 downto 0);
        EXT2         : out std_logic_vector(5 downto 0);

        -- SD Card
        SD_DATA         : inout std_logic_vector(3 downto 0);
        SD_CMD          : inout std_logic;
        SD_CLK          : out std_logic;
        SD_CARD_DETECT  : in std_logic;

        -- SPI Flash
        SPI_CS       : out std_logic;
        SPI_MOSI     : out std_logic;
        SPI_MISO     : in std_logic

    );
end top_module;

architecture Behavioral of top_module is

    component microblaze_wrapper is
    port (
        gpio_rtl_0_tri_o    : out STD_LOGIC_VECTOR ( 15 downto 0 );
        uart_rtl_0_rxd      : in STD_LOGIC;
        uart_rtl_0_txd      : out STD_LOGIC;
        reset_rtl_0         : in STD_LOGIC;
        spi0_mosi           : out STD_LOGIC;
        spi0_miso           : in STD_LOGIC;
        spi0_sck            : out STD_LOGIC;
        spi0_cs             : out STD_LOGIC_VECTOR ( 0 to 0 );
        clk_100MHz          : in STD_LOGIC
    );
    end component microblaze_wrapper;
    
    component adc is
    Port( 
        clk : in STD_LOGIC;
        adc_data : in STD_LOGIC_VECTOR (11 downto 0);
        data_a : out STD_LOGIC_VECTOR (15 downto 0);
        data_b : out STD_LOGIC_VECTOR (15 downto 0);
        valid : out STD_LOGIC
    );
    end component adc;
    
    component usb_sync is
    port (
        -- Bus signals
        clk         : in std_logic;
        reset       : in std_logic;
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
            PACKET_SIZE : integer := 64  -- must match the entity
        );
        port (
            clk          : in  std_logic;
            rst          : in  std_logic;
            usb_rx_empty : in  std_logic;
            usb_readdata : in  std_logic_vector(7 downto 0);
            chipselect   : out std_logic;
            read_n       : out std_logic;
            config_done  : out std_logic;
            data_out     : out std_logic_vector(PACKET_SIZE*8-1 downto 0)
        );
    end component;
    
    component control is
    generic (
        MAX_SAMPLES : integer := 2048  -- number of decimated samples per ramp
    );
    port (
        clk          : in  std_logic;               -- system clock
        rst          : in  std_logic;               -- active high reset
        muxout       : in  std_logic;               -- high during ramp
        adc_data_a   : in  std_logic_vector(15 downto 0);
        adc_data_b   : in  std_logic_vector(15 downto 0);
        adc_valid    : in  std_logic;
        adc_oe       : out std_logic_vector(1 downto 0);
        adc_shdn     : out std_logic_vector(1 downto 0);
        pa_en        : out std_logic;
        usb_write_n  : out std_logic;
        usb_chipselect : out std_logic;
        usb_writedata : out std_logic_vector(7 downto 0);
        usb_tx_full   : in  std_logic
    );  
    end component;


    component ila_0
    PORT (
        clk : IN STD_LOGIC;                
        probe0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        probe1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        probe3 : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
    end component;
    
    -- Microblaze signals
    signal s_gpio_rtl_0_tri_o : STD_LOGIC_VECTOR ( 15 downto 0 );
    signal s_uart_rtl_0_rxd   : STD_LOGIC;
    signal s_uart_rtl_0_txd   : STD_LOGIC;
    
    signal s_spi0_miso          : STD_LOGIC := 'Z';  -- ADF4158 does not have spi miso line so microblaze is connected to this internal signal
    signal s_spi0_cs            : STD_LOGIC;        -- LE pin will be controlled with gpio so this spi's cs will only be connected to internal signal for now
        
    -- ADC signals
    signal s_adc_a_out  : std_logic_vector(15 downto 0);         -- channel A data
    signal s_adc_b_out  : std_logic_vector(15 downto 0);         -- channel B data
    signal s_adc_valid  : std_logic;        -- FIR output valid pulse

    -- USB_SYNC signals
    signal s_read_n      : std_logic;
    signal s_write_n     : std_logic;
    signal s_chipselect  : std_logic;
    signal s_readdata    : std_logic_vector (7 downto 0);
    signal s_writedata   : std_logic_vector (7 downto 0);
    signal s_tx_full     : std_logic;
    signal s_rx_empty    : std_logic;
        
    -- CONFIG signals
    signal s_config_done            : std_logic;   
    signal s_config_data            : std_logic_vector(511 downto 0);
    signal s_config_usb_readdata    : std_logic_vector(7 downto 0);
    signal s_config_usb_chipselect  : std_logic;
    signal s_config_usb_read_n      : std_logic;

    -- Signals for control
    signal s_control_adc_oe         : std_logic_vector(1 downto 0);
    signal s_control_adc_shdn       : std_logic_vector(1 downto 0);
    signal s_control_pa_en          : std_logic;
    signal s_control_usb_write_n    : std_logic;
    signal s_control_usb_chipselect : std_logic;
    signal s_control_usb_writedata  : std_logic_vector(7 downto 0);

    -- ILA Probe signals
    signal s_probe0 : std_logic_vector(7 DOWNTO 0);
    signal s_probe1 : std_logic_vector(11 DOWNTO 0);
    signal s_probe2 : std_logic_vector(31 DOWNTO 0);
    signal s_probe3 : std_logic_vector(9 DOWNTO 0);
    
    signal muxout_sync : std_logic;
    signal muxout_sync_d : std_logic;

    
begin 

    -- GENERAL CODE FLOW UPTO NOW:
    
    -- adc.vhd:
    -- ADC will be sampled and the samples are forwareded to FIR module (LPF with 20 downsampling) which is implemented in adc.vhd module. 
    -- ADC samples with ADC_OE and ADC_SHDN so these signals will be controlled by control.vhd according to the state of muxout input 
    
    -- config.vhd:
    -- It will control usb_sync.vhd rx pins to receive configuration bytes from python with specific start and end bytes to check correct package.
    -- After reception it will write these bytes to a fifo for microblaze to take it (or uart tx). Also it will make config_done = '1' for control.vhd to know.
    
    -- control.vhd:
    -- It will check MUXOUT input signal to sample during ramp and usb tx during gap.
    -- It will control adc.vhd with its enable pin to start sampling. 
    -- It will con 

    -- STATIC PIN DEFINITIONS    
    
    -- Drive ADC OE/SHDN pins for normal operation
    -- ADC_OE   <= "00"; -- both channels enabled
    -- ADC_SHDN <= "00"; -- normal operation
    
    MIX_EN <= '1';
    
    -- Not used for now
    EXT1 <= (others => '0');
    EXT2 <= (others => '0');
        
    ADF_TXDATA <= '0'; -- not used. this is for data modulation
        
    ADF_CE <= s_gpio_rtl_0_tri_o(0); -- microblaze 16 bit gpio's bit 0 is controlling this. It will be written 1 to power device
    ADF_LE <= s_gpio_rtl_0_tri_o(1); -- microblaze 16 bit gpio's bit 1 is spi_cs of adf4158
    
    -- Connect outputs to top-level pins
    ADC_OE   <= s_control_adc_oe;
    ADC_SHDN <= s_control_adc_shdn;
    PA_EN    <= s_control_pa_en;
       
    -- connect chipselect according to if config is done or not.
    -- if config is done then usb control can start using usb
    s_chipselect  <= s_config_usb_chipselect when s_config_done = '0' else s_control_usb_chipselect;
           
    process(SYSCLK)
    begin
        if rising_edge(SYSCLK) then
            muxout_sync_d <= ADF_MUXOUT;
            muxout_sync <= muxout_sync_d;
        end if;
    end process;    
       
    -- In general logic
    -- Microblaze will configure adf4158 with spi.
    -- Then vhdl code will run logic according to the state of muxout pulse (READBACK TO MUXOUT is set on spi config for this)
    microblaze_i: component microblaze_wrapper
    port map (
        clk_100MHz                      => SYSCLK,
        gpio_rtl_0_tri_o(15 downto 0)   => s_gpio_rtl_0_tri_o(15 downto 0),
        reset_rtl_0                     => RESET,           -- Board's reset is active low
        spi0_cs(0)                      => s_spi0_cs,       -- spi cs not used, gpio is used to drive cs pin
        spi0_miso                       => s_spi0_miso,     -- spi miso not used
        spi0_mosi                       => ADF_DATA,        -- spi mosi
        spi0_sck                        => ADF_CLK,         -- spi clk
        uart_rtl_0_rxd                  => s_uart_rtl_0_rxd,
        uart_rtl_0_txd                  => s_uart_rtl_0_txd
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
        clk      => SYSCLK,
        adc_data => ADC_DATA,
        data_a   => s_adc_a_out,
        data_b   => s_adc_b_out,
        valid    => s_adc_valid
    );
    
    USB_SIWUA <= '1'; -- when 1 not used
    
    usb_sync_i : component usb_sync
    port map (
        clk         => SYSCLK,
        reset       => RESET,
        read_n      => s_read_n,                -- 0 to read from rx fifo of usb_sync
        write_n     => s_write_n,               -- 0 to write to tx fifo of usb_sync
        chipselect  => s_chipselect,            -- 1 to selectchip for both read and write    
        readdata    => s_config_usb_readdata,   -- read data 8 bit
        writedata   => s_control_usb_writedata, -- write data 8 bit
        tx_full     => s_tx_full,               -- is full flag
        rx_empty    => s_rx_empty,              -- is empty flag
    
        -- FT2232 Bus Signals
        usb_clock   => USB_CLKOUT,
        usb_data    => USB_DATA,
        usb_rd_n    => USB_RD,
        usb_wr_n    => USB_WR,
        usb_oe_n    => USB_OE,
        usb_rxf_n   => USB_RXF,         -- input signal to indicate rx data over usb
        usb_txe_n   => USB_TXE          -- input signal to indicate usb is available for tx
    );

    config_i : component config
    generic map (
        PACKET_SIZE => 64
    )
    port map (
        clk          => SYSCLK,
        rst          => RESET,        -- top-level reset signal
        usb_rx_empty => s_rx_empty,
        usb_readdata => s_config_usb_readdata,
        chipselect   => s_config_usb_chipselect,
        read_n       => s_config_usb_read_n,
        config_done  => s_config_done,
        data_out     => s_config_data
    );
    
    -- Control FSM instantiation    
    control_i : control
    generic map (
        MAX_SAMPLES => 2048  -- adjust according to ramp length
    )
    port map (
        clk            => SYSCLK,
        rst            => RESET,
        muxout         => muxout_sync,     -- ADF4158 MUXOUT input high pulse during ramp
        adc_data_a     => s_adc_a_out,
        adc_data_b     => s_adc_b_out,
        adc_valid      => s_adc_valid,
        adc_oe         => s_control_adc_oe,
        adc_shdn       => s_control_adc_shdn,
        pa_en          => s_control_pa_en,
        usb_write_n    => s_control_usb_write_n,
        usb_chipselect => s_control_usb_chipselect,
        usb_writedata  => s_control_usb_writedata,
        usb_tx_full    => s_tx_full
    );

    ila_0_i : ila_0
    port map (
        clk    => SYSCLK,
        probe0 => s_probe0,
        probe1 => s_probe1,
        probe2 => s_probe2,
        probe3 => s_probe3
    );

end Behavioral;