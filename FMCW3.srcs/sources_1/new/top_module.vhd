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
        ADF_CE       : out std_logic_vector ( 0 to 0 ); --Chip Enable / Select for SPI device
        ADF_TXDATA   : out std_logic;
        ADF_CLK      : out std_logic;   -- SPI CLK
        ADF_DATA     : out std_logic;   -- SPI MOSI
        ADF_DONE     : in std_logic;  
        ADF_LE       : out std_logic;   -- (low before write and high after write, high before read)
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
    
    -- Microblaze signals
    signal gpio_rtl_0_tri_o : STD_LOGIC_VECTOR ( 15 downto 0 );
    signal uart_rtl_0_rxd   : STD_LOGIC;
    signal uart_rtl_0_txd   : STD_LOGIC;
    
    signal s_spi0_miso        : STD_LOGIC; -- ADF4158 does not have spi miso line so microblaze is connected to this internal signal
    signal s_adf_muxout     : std_logic;
            
    
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
    
begin 
    
    s_adf_muxout <= ADF_MUXOUT; -- high pulse on this pin when ramp starts
       
    -- In general logic
    -- Microblaze will configure adf4158 with spi.
    -- Then vhdl code will run logic according to the state of muxout pulse (READBACK TO MUXOUT is set on spi config for this)
    microblaze_i: component microblaze_wrapper
    port map (
        clk_100MHz                      => SYSCLK,
        gpio_rtl_0_tri_o(15 downto 0)   => gpio_rtl_0_tri_o(15 downto 0),
        reset_rtl_0                     => RESET,           -- Board's reset is active low
        spi0_cs(0)                      => ADF_CE(0),       -- spi cs
        spi0_miso                       => s_spi0_miso,     -- spi miso not used
        spi0_mosi                       => ADF_DATA,        -- spi mosi
        spi0_sck                        => ADF_CLK,         -- spi clk
        uart_rtl_0_rxd                  => uart_rtl_0_rxd,
        uart_rtl_0_txd                  => uart_rtl_0_txd
    );
    
    -- Drive ADC OE/SHDN pins for normal operation
    ADC_OE   <= "00"; -- both channels enabled
    ADC_SHDN <= "00"; -- normal operation

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
        read_n      => s_read_n,
        write_n     => s_write_n,
        chipselect  => s_chipselect,
        readdata    => s_readdata,
        writedata   => s_writedata,
        tx_full     => s_tx_full,
        rx_empty    => s_rx_empty,
    
        -- FT2232 Bus Signals
        usb_clock   => USB_CLKOUT,
        usb_data    => USB_DATA,
        usb_rd_n    => USB_RD,
        usb_wr_n    => USB_WR,
        usb_oe_n    => USB_OE,
        usb_rxf_n   => USB_RXF,
        usb_txe_n   => USB_TXE
    );

end Behavioral;