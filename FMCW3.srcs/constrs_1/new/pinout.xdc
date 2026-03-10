set_property -dict { PACKAGE_PIN N11   IOSTANDARD LVCMOS33 } [get_ports { sysclk }];
create_clock -add -name sysclk -period 25.00 -waveform {0 12.5} [get_ports {sysclk}]; # 40 MHz main clock

set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { usb_clkout }]; # clock capable pin p not n
create_clock -add -name usb_clkout -period 16.667 -waveform {0.000 8.333} [get_ports {usb_clkout}]; # 60 MHz main clock

set_property -dict { PACKAGE_PIN B4   IOSTANDARD LVCMOS33 } [get_ports { reset_n }]; # rightmost button

# ADF4158
set_property -dict { PACKAGE_PIN R3   IOSTANDARD LVCMOS33 } [get_ports { adf_ce }];     # (low disables, high enables adf4158 chip)
set_property -dict { PACKAGE_PIN P3   IOSTANDARD LVCMOS33 } [get_ports { adf_txdata }];
set_property -dict { PACKAGE_PIN R1   IOSTANDARD LVCMOS33 } [get_ports { adf_clk }];    # SPI CLK
set_property -dict { PACKAGE_PIN M2   IOSTANDARD LVCMOS33 } [get_ports { adf_data }];   # SPI MOSI
set_property -dict { PACKAGE_PIN T4   IOSTANDARD LVCMOS33 } [get_ports { adf_done }];   # Mosfet connected to adf_muxout. Not populated
set_property -dict { PACKAGE_PIN N1   IOSTANDARD LVCMOS33 } [get_ports { adf_le }];     # low before write register and high after write, make it high before read
set_property -dict { PACKAGE_PIN K3   IOSTANDARD LVCMOS33 } [get_ports { adf_muxout }]; # ramp indicator high low according to ramp start and gap


# LTC2292 - Clock is same for fpga, adc and adf ref in
set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[0] }];
set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[1] }];
set_property -dict { PACKAGE_PIN K1   IOSTANDARD LVCMOS33 } [get_ports { adc_data[2] }];
set_property -dict { PACKAGE_PIN J3   IOSTANDARD LVCMOS33 } [get_ports { adc_data[3] }];
set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports { adc_data[4] }];
set_property -dict { PACKAGE_PIN H2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[5] }];
set_property -dict { PACKAGE_PIN H3   IOSTANDARD LVCMOS33 } [get_ports { adc_data[6] }];
set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[7] }];
set_property -dict { PACKAGE_PIN G1   IOSTANDARD LVCMOS33 } [get_ports { adc_data[8] }];
set_property -dict { PACKAGE_PIN F2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[9] }];
set_property -dict { PACKAGE_PIN E1   IOSTANDARD LVCMOS33 } [get_ports { adc_data[10] }];
set_property -dict { PACKAGE_PIN E2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[11] }];

set_property -dict { PACKAGE_PIN C2   IOSTANDARD LVCMOS33 } [get_ports { adc_of[0] }];
set_property -dict { PACKAGE_PIN M1   IOSTANDARD LVCMOS33 } [get_ports { adc_of[1] }];
set_property -dict { PACKAGE_PIN B2   IOSTANDARD LVCMOS33 } [get_ports { adc_oe[0] }];
set_property -dict { PACKAGE_PIN P1   IOSTANDARD LVCMOS33 } [get_ports { adc_oe[1] }];
set_property -dict { PACKAGE_PIN B1   IOSTANDARD LVCMOS33 } [get_ports { adc_shdn[0] }];
set_property -dict { PACKAGE_PIN N2   IOSTANDARD LVCMOS33 } [get_ports { adc_shdn[1] }];


# FT2232H USB
set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { usb_data[0] }];
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { usb_data[1] }];
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { usb_data[2] }];
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { usb_data[3] }];
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { usb_data[4] }];
set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { usb_data[5] }];
set_property -dict { PACKAGE_PIN D16   IOSTANDARD LVCMOS33 } [get_ports { usb_data[6] }];
set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { usb_data[7] }];
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { usb_rxf }];
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { usb_txe }];
set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { usb_rd }];
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { usb_wr }];
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { usb_siwua }];
set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS33 } [get_ports { usb_oe }];
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { usb_suspend }];

# ONBOARD LED
set_property -dict { PACKAGE_PIN D1   IOSTANDARD LVCMOS33 } [get_ports { led1 }];

# TQP5525 PA 
set_property -dict { PACKAGE_PIN T2   IOSTANDARD LVCMOS33 } [get_ports { pa_en }];

#ADL5802 MIXER
set_property -dict { PACKAGE_PIN J4   IOSTANDARD LVCMOS33 } [get_ports { mix_en }];


# External Connector

set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { ext1[0] }];
set_property -dict { PACKAGE_PIN B10   IOSTANDARD LVCMOS33 } [get_ports { ext1[1] }];
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { ext1[2] }];
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { ext1[3] }];
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { ext1[4] }];
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { ext1[5] }];

set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { ext2[0] }];
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { ext2[1] }];
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { ext2[2] }];
set_property -dict { PACKAGE_PIN A7    IOSTANDARD LVCMOS33 } [get_ports { ext2[3] }];
set_property -dict { PACKAGE_PIN B5    IOSTANDARD LVCMOS33 } [get_ports { ext2[4] }];
set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { ext2[5] }];


# SD CARD
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[0] }];
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[1] }];
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[2] }];
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[3] }];
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { SD_CMD }];
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { SD_CLK }];
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { SD_CARD_DETECT }];
