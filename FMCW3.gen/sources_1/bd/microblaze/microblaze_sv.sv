// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: amd.com:blockdesign:microblaze:1.0

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module microblaze_sv (
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_RXD_0" *)
  (* X_INTERFACE_MODE = "slave AXI_STR_RXD_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_STR_RXD_0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, LAYERED_METADATA undef, INSERT_VIP 0" *)
  vivado_axis_v1_0.slave AXI_STR_RXD_0,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_TXD_0" *)
  (* X_INTERFACE_MODE = "master AXI_STR_TXD_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_STR_TXD_0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, LAYERED_METADATA undef, INSERT_VIP 0" *)
  vivado_axis_v1_0.master AXI_STR_TXD_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [15:0] gpio_rtl_0_tri_o,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire uart_rtl_0_rxd,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire uart_rtl_0_txd,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire reset_rtl_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire spi0_mosi,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire spi0_miso,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire spi0_sck,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] spi0_cs,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire clk_100MHz
);

  // interface wire assignments
  assign AXI_STR_TXD_0.TDEST = 0;
  assign AXI_STR_TXD_0.TID = 0;
  assign AXI_STR_TXD_0.TKEEP = 0;
  assign AXI_STR_TXD_0.TSTRB = 0;
  assign AXI_STR_TXD_0.TUSER = 0;

  microblaze inst (
    .gpio_rtl_0_tri_o(gpio_rtl_0_tri_o),
    .uart_rtl_0_rxd(uart_rtl_0_rxd),
    .uart_rtl_0_txd(uart_rtl_0_txd),
    .AXI_STR_RXD_0_tdata(AXI_STR_RXD_0.TDATA),
    .AXI_STR_RXD_0_tlast(AXI_STR_RXD_0.TLAST),
    .AXI_STR_RXD_0_tready(AXI_STR_RXD_0.TREADY),
    .AXI_STR_RXD_0_tvalid(AXI_STR_RXD_0.TVALID),
    .AXI_STR_TXD_0_tdata(AXI_STR_TXD_0.TDATA),
    .AXI_STR_TXD_0_tlast(AXI_STR_TXD_0.TLAST),
    .AXI_STR_TXD_0_tready(AXI_STR_TXD_0.TREADY),
    .AXI_STR_TXD_0_tvalid(AXI_STR_TXD_0.TVALID),
    .reset_rtl_0(reset_rtl_0),
    .spi0_mosi(spi0_mosi),
    .spi0_miso(spi0_miso),
    .spi0_sck(spi0_sck),
    .spi0_cs(spi0_cs),
    .clk_100MHz(clk_100MHz)
  );

endmodule
