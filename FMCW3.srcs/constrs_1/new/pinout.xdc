set_property -dict { PACKAGE_PIN N11   IOSTANDARD LVCMOS33 } [get_ports { SYSCLK }];
create_clock -add -name sys_clk_pin -period 25.00 -waveform {0 12.5} [get_ports {SYSCLK}]; # 40 MHz main clock

set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { USB_CLKOUT }];
create_clock -period 16.667 -name ft_clkout -waveform {0.000 8.333} [get_ports USB_CLKOUT] # 60 MHz by ft2232h

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets USB_CLKOUT_IBUF]


set_property -dict { PACKAGE_PIN B4   IOSTANDARD LVCMOS33 } [get_ports { RESET }]; # rightmost button

# ADF4158
set_property -dict { PACKAGE_PIN R3   IOSTANDARD LVCMOS33 } [get_ports { ADF_CE }];     # (low disables, high enables adf4158 chip)
set_property -dict { PACKAGE_PIN P3   IOSTANDARD LVCMOS33 } [get_ports { ADF_TXDATA }];
set_property -dict { PACKAGE_PIN R1   IOSTANDARD LVCMOS33 } [get_ports { ADF_CLK }];    # SPI CLK
set_property -dict { PACKAGE_PIN M2   IOSTANDARD LVCMOS33 } [get_ports { ADF_DATA }];   # SPI MOSI
set_property -dict { PACKAGE_PIN T4   IOSTANDARD LVCMOS33 } [get_ports { ADF_DONE }];   # Mosfet connected to adf_muxout. Not populated
set_property -dict { PACKAGE_PIN N1   IOSTANDARD LVCMOS33 } [get_ports { ADF_LE }];     # low before write register and high after write, make it high before read
set_property -dict { PACKAGE_PIN K3   IOSTANDARD LVCMOS33 } [get_ports { ADF_MUXOUT }]; # ramp indicator high low according to ramp start and gap


# LTC2292 - Clock is same for fpga, adc and adf ref in
set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[0] }];
set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[1] }];
set_property -dict { PACKAGE_PIN K1   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[2] }];
set_property -dict { PACKAGE_PIN J3   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[3] }];
set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[4] }];
set_property -dict { PACKAGE_PIN H2   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[5] }];
set_property -dict { PACKAGE_PIN H3   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[6] }];
set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[7] }];
set_property -dict { PACKAGE_PIN G1   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[8] }];
set_property -dict { PACKAGE_PIN F2   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[9] }];
set_property -dict { PACKAGE_PIN E1   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[10] }];
set_property -dict { PACKAGE_PIN E2   IOSTANDARD LVCMOS33 } [get_ports { ADC_DATA[11] }];

set_property -dict { PACKAGE_PIN C2   IOSTANDARD LVCMOS33 } [get_ports { ADC_OF[0] }];
set_property -dict { PACKAGE_PIN M1   IOSTANDARD LVCMOS33 } [get_ports { ADC_OF[1] }];
set_property -dict { PACKAGE_PIN B2   IOSTANDARD LVCMOS33 } [get_ports { ADC_OE[0] }];
set_property -dict { PACKAGE_PIN P1   IOSTANDARD LVCMOS33 } [get_ports { ADC_OE[1] }];
set_property -dict { PACKAGE_PIN B1   IOSTANDARD LVCMOS33 } [get_ports { ADC_SHDN[0] }];
set_property -dict { PACKAGE_PIN N2   IOSTANDARD LVCMOS33 } [get_ports { ADC_SHDN[1] }];


# FT2232H USB
set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { USB_DATA[0] }];
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { USB_DATA[1] }];
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { USB_DATA[2] }];
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { USB_DATA[3] }];
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { USB_DATA[4] }];
set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { USB_DATA[5] }];
set_property -dict { PACKAGE_PIN D16   IOSTANDARD LVCMOS33 } [get_ports { USB_DATA[6] }];
set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { USB_DATA[7] }];
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { USB_RXF }];
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { USB_TXE }];
set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { USB_RD }];
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { USB_WR }];
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { USB_SIWUA }];
set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS33 } [get_ports { USB_OE }];
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { USB_SUSPEND }];

# ONBOARD LED
set_property -dict { PACKAGE_PIN D1   IOSTANDARD LVCMOS33 } [get_ports { LED1 }];

# TQP5525 PA 
set_property -dict { PACKAGE_PIN T2   IOSTANDARD LVCMOS33 } [get_ports { PA_EN }];

#ADL5802 MIXER
set_property -dict { PACKAGE_PIN J4   IOSTANDARD LVCMOS33 } [get_ports { MIX_EN }];


# External Connector

set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { EXT1[0] }];
set_property -dict { PACKAGE_PIN B10   IOSTANDARD LVCMOS33 } [get_ports { EXT1[1] }];
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { EXT1[2] }];
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { EXT1[3] }];
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { EXT1[4] }];
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { EXT1[5] }];

set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { EXT2[0] }];
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { EXT2[1] }];
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { EXT2[2] }];
set_property -dict { PACKAGE_PIN A7    IOSTANDARD LVCMOS33 } [get_ports { EXT2[3] }];
set_property -dict { PACKAGE_PIN B5    IOSTANDARD LVCMOS33 } [get_ports { EXT2[4] }];
set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { EXT2[5] }];


# SD CARD
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[0] }];
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[1] }];
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[2] }];
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[3] }];
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { SD_CMD }];
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { SD_CLK }];
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { SD_CARD_DETECT }];

# SPI FLASH
set_property -dict { PACKAGE_PIN L12   IOSTANDARD LVCMOS33 } [get_ports { SPI_CS }];
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { SPI_MOSI }];
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { SPI_MISO }];
