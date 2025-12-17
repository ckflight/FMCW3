set_property SRC_FILE_INFO {cfile:C:/Users/CK/Desktop/Vivado/FMCW3/FMCW3.srcs/constrs_1/new/pinout.xdc rfile:../../../FMCW3.srcs/constrs_1/new/pinout.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N11   IOSTANDARD LVCMOS33 } [get_ports { sysclk }];
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { usb_clkout }]; # clock capable pin p not n
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B4   IOSTANDARD LVCMOS33 } [get_ports { reset_n }]; # rightmost button
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R3   IOSTANDARD LVCMOS33 } [get_ports { adf_ce }];     # (low disables, high enables adf4158 chip)
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P3   IOSTANDARD LVCMOS33 } [get_ports { adf_txdata }];
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R1   IOSTANDARD LVCMOS33 } [get_ports { adf_clk }];    # SPI CLK
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M2   IOSTANDARD LVCMOS33 } [get_ports { adf_data }];   # SPI MOSI
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T4   IOSTANDARD LVCMOS33 } [get_ports { adf_done }];   # Mosfet connected to adf_muxout. Not populated
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N1   IOSTANDARD LVCMOS33 } [get_ports { adf_le }];     # low before write register and high after write, make it high before read
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K3   IOSTANDARD LVCMOS33 } [get_ports { adf_muxout }]; # ramp indicator high low according to ramp start and gap
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[0] }];
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[1] }];
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K1   IOSTANDARD LVCMOS33 } [get_ports { adc_data[2] }];
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J3   IOSTANDARD LVCMOS33 } [get_ports { adc_data[3] }];
set_property src_info {type:XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports { adc_data[4] }];
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[5] }];
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H3   IOSTANDARD LVCMOS33 } [get_ports { adc_data[6] }];
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[7] }];
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G1   IOSTANDARD LVCMOS33 } [get_ports { adc_data[8] }];
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[9] }];
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E1   IOSTANDARD LVCMOS33 } [get_ports { adc_data[10] }];
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E2   IOSTANDARD LVCMOS33 } [get_ports { adc_data[11] }];
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C2   IOSTANDARD LVCMOS33 } [get_ports { adc_of[0] }];
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M1   IOSTANDARD LVCMOS33 } [get_ports { adc_of[1] }];
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B2   IOSTANDARD LVCMOS33 } [get_ports { adc_oe[0] }];
set_property src_info {type:XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P1   IOSTANDARD LVCMOS33 } [get_ports { adc_oe[1] }];
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B1   IOSTANDARD LVCMOS33 } [get_ports { adc_shdn[0] }];
set_property src_info {type:XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N2   IOSTANDARD LVCMOS33 } [get_ports { adc_shdn[1] }];
set_property src_info {type:XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { usb_data[0] }];
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { usb_data[1] }];
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { usb_data[2] }];
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { usb_data[3] }];
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { usb_data[4] }];
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { usb_data[5] }];
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D16   IOSTANDARD LVCMOS33 } [get_ports { usb_data[6] }];
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { usb_data[7] }];
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { usb_rxf }];
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { usb_txe }];
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { usb_rd }];
set_property src_info {type:XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { usb_wr }];
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { usb_siwua }];
set_property src_info {type:XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS33 } [get_ports { usb_oe }];
set_property src_info {type:XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { usb_suspend }];
set_property src_info {type:XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D1   IOSTANDARD LVCMOS33 } [get_ports { led1 }];
set_property src_info {type:XDC file:1 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T2   IOSTANDARD LVCMOS33 } [get_ports { pa_en }];
set_property src_info {type:XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J4   IOSTANDARD LVCMOS33 } [get_ports { mix_en }];
set_property src_info {type:XDC file:1 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { ext1[0] }];
set_property src_info {type:XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B10   IOSTANDARD LVCMOS33 } [get_ports { ext1[1] }];
set_property src_info {type:XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { ext1[2] }];
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { ext1[3] }];
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { ext1[4] }];
set_property src_info {type:XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { ext1[5] }];
set_property src_info {type:XDC file:1 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { ext2[0] }];
set_property src_info {type:XDC file:1 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { ext2[1] }];
set_property src_info {type:XDC file:1 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { ext2[2] }];
set_property src_info {type:XDC file:1 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A7    IOSTANDARD LVCMOS33 } [get_ports { ext2[3] }];
set_property src_info {type:XDC file:1 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B5    IOSTANDARD LVCMOS33 } [get_ports { ext2[4] }];
set_property src_info {type:XDC file:1 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { ext2[5] }];
set_property src_info {type:XDC file:1 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[0] }];
set_property src_info {type:XDC file:1 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[1] }];
set_property src_info {type:XDC file:1 line:89 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[2] }];
set_property src_info {type:XDC file:1 line:90 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { SD_DATA[3] }];
set_property src_info {type:XDC file:1 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { SD_CMD }];
set_property src_info {type:XDC file:1 line:92 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { SD_CLK }];
set_property src_info {type:XDC file:1 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { SD_CARD_DETECT }];
set_property src_info {type:XDC file:1 line:96 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L12   IOSTANDARD LVCMOS33 } [get_ports { SPI_CS }];
set_property src_info {type:XDC file:1 line:97 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { SPI_MOSI }];
set_property src_info {type:XDC file:1 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { SPI_MISO }];
