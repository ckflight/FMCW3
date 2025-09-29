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
    port (
        clk       : in  std_logic;                       -- 40 MHz ADC clock
        rst       : in  std_logic;
        enable    : in  std_logic;                      -- sampling enable from top module
        adc_data  : in  std_logic_vector(11 downto 0);  -- ADC multiplexed bus
        adc_of    : in  std_logic_vector(1 downto 0);   -- overflow/underflow per channel
        data_a    : out std_logic_vector(15 downto 0);  -- signed channel A
        data_b    : out std_logic_vector(15 downto 0);  -- signed channel B
        of_a      : out std_logic;                       -- overflow A
        of_b      : out std_logic                        -- overflow B
    );
    end component adc;
    
    component usb_sync is
    port (
        -- Bus signals
        clk         : in std_logic;
        reset_n     : in std_logic;
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
    port (
        clk          : in  std_logic;
        reset        : in  std_logic;
        
        -- USB interface (from usb_sync)
        readdata     : in  std_logic_vector(7 downto 0);
        rx_empty     : in  std_logic;
        read_n       : out std_logic;
        chipselect   : out std_logic;
        
        -- Config outputs
        config_done  : out std_logic;
        config_data  : out std_logic_vector(7 downto 0)  -- optional: last valid byte or FIFO write
    );
    end component;

    
    -- Microblaze signals
    signal s_gpio_rtl_0_tri_o : STD_LOGIC_VECTOR ( 15 downto 0 );
    signal s_uart_rtl_0_rxd   : STD_LOGIC;
    signal s_uart_rtl_0_txd   : STD_LOGIC;
    
    signal s_spi0_miso          : STD_LOGIC; -- ADF4158 does not have spi miso line so microblaze is connected to this internal signal
    signal s_adf_muxout         : std_logic;
    signal s_spi0_cs            : STD_LOGIC; -- LE pin will be controlled with gpio so this spi's cs will only be connected to internal signal for now
        
    
    -- ADC signals
    signal s_adc_enable  : std_logic := '0';                      -- enable sampling
    signal s_data_a_out  : std_logic_vector(15 downto 0);         -- channel A data
    signal s_data_b_out  : std_logic_vector(15 downto 0);         -- channel B data
    signal s_of_a_out    : std_logic;                              -- channel A overflow
    signal s_of_b_out    : std_logic;                              -- channel B overflow
    
    
    -- USB_SYNC signals
    signal s_read_n      : std_logic;
    signal s_write_n     : std_logic;
    signal s_chipselect  : std_logic;
    signal s_readdata    : std_logic_vector (7 downto 0);
    signal s_writedata   : std_logic_vector (7 downto 0);
    signal s_tx_full     : std_logic;
    signal s_rx_empty    : std_logic;
    
    -- External Pins
    signal s_pa_en      : std_logic := '0';
    
    -- CONFIG signals
    signal s_config_done : std_logic;   
    signal s_config_data : std_logic_vector(7 downto 0);

    
begin 

    -- GENERAL CODE FLOW UPTO NOW:
    
    -- adc.vhd:
    -- ADC will be sampled and the samples are forwareded to FIR module which will be implemented inside of adc.vhd module. 
    -- ADC samples with enable = '1' so it will be controlled by control.vhd with this signal. 
    
    -- config.vhd:
    -- It will control usb_sync.vhd rx pins to receive configuration bytes from python with specific start and end bytes to check correct package.
    -- After reception it will write these bytes to a fifo for microblaze to take it. Also it will make config_done = '1' for control.vhd to know.
    
    -- control.vhd:
    -- It will check MUXOUT input signal to sample during ramp and usb tx during gap.
    -- It will control adc.vhd with its enable pin to start sampling. 
    -- It will con 

    -- STATIC PIN DEFINITIONS    
    
    -- Drive ADC OE/SHDN pins for normal operation
    ADC_OE   <= "00"; -- both channels enabled
    ADC_SHDN <= "00"; -- normal operation
    
    MIX_EN <= '1';
    
    -- Not used for now
    EXT1 <= (others => '0');
    EXT2 <= (others => '0');
    
        
    PA_EN <= s_pa_en;
    
    ADF_TXDATA <= '0'; -- not used. this is for data modulation
    
    s_adf_muxout <= ADF_MUXOUT; -- high pulse on this pin when ramp starts
    
    ADF_CE <= s_gpio_rtl_0_tri_o(0); -- microblaze 16 bit gpio's bit 0 is controlling this. It will be written 1 to power device
    ADF_LE <= s_gpio_rtl_0_tri_o(1); -- microblaze 16 bit gpio's bit 1 is spi_cs of adf4158
    
       
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

    adc_i : component adc
    port map (
        clk      => SYSCLK,
        rst      => RESET,
        enable   => s_adc_enable,
        adc_data => ADC_DATA,
        adc_of   => ADC_OF,
        data_a   => s_data_a_out,
        data_b   => s_data_b_out,
        of_a     => s_of_a_out,
        of_b     => s_of_b_out
    );
    
    USB_SIWUA <= '1'; -- when 1 not used
    
    usb_sync_i : component usb_sync
    port map (
        clk         => SYSCLK,
        reset_n     => RESET,
        read_n      => s_read_n,        -- 0 to read from rx fifo of usb_sync
        write_n     => s_write_n,       -- 0 to write to tx fifo of usb_sync
        chipselect  => s_chipselect,    -- 1 to selectchip for both read and write    
        readdata    => s_readdata,      -- read data 8 bit
        writedata   => s_writedata,     -- write data 8 bit
        tx_full     => s_tx_full,       -- is full flag
        rx_empty    => s_rx_empty,      -- is empty flag
    
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
    port map (
        clk         => SYSCLK,
        reset       => RESET,
        
        -- USB side
        readdata    => s_readdata,      -- 0 to read from rx fifo of usb_sync
        rx_empty    => s_rx_empty,      -- is rx fifo empty
        read_n      => s_read_n,        -- rx data 8 bit
        chipselect  => s_chipselect,    -- chipselect 1    
        
        -- Outputs
        config_done => s_config_done,   -- config is done to let control.vhd know it can start sampling and tx
        config_data => s_config_data    -- this might not be used if i put uart tx inside
    );


end Behavioral;