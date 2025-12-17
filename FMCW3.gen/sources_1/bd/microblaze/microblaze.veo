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

// The following must be inserted into your Verilog file for this
// module to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

// INST_TAG     ------ Begin cut for INSTANTIATION Template ------
microblaze your_instance_name (
  .gpio_rtl_0_tri_o(gpio_rtl_0_tri_o), // output wire [15:0] gpio_rtl_0_tri_o
  .uart_rtl_0_rxd(uart_rtl_0_rxd), // input wire uart_rtl_0_rxd
  .uart_rtl_0_txd(uart_rtl_0_txd), // output wire uart_rtl_0_txd
  .AXI_STR_RXD_0_tdata(AXI_STR_RXD_0_tdata), // input wire [31:0] AXI_STR_RXD_0_tdata
  .AXI_STR_RXD_0_tlast(AXI_STR_RXD_0_tlast), // input wire AXI_STR_RXD_0_tlast
  .AXI_STR_RXD_0_tready(AXI_STR_RXD_0_tready), // output wire AXI_STR_RXD_0_tready
  .AXI_STR_RXD_0_tvalid(AXI_STR_RXD_0_tvalid), // input wire AXI_STR_RXD_0_tvalid
  .AXI_STR_TXD_0_tdata(AXI_STR_TXD_0_tdata), // output wire [31:0] AXI_STR_TXD_0_tdata
  .AXI_STR_TXD_0_tlast(AXI_STR_TXD_0_tlast), // output wire AXI_STR_TXD_0_tlast
  .AXI_STR_TXD_0_tready(AXI_STR_TXD_0_tready), // input wire AXI_STR_TXD_0_tready
  .AXI_STR_TXD_0_tvalid(AXI_STR_TXD_0_tvalid), // output wire AXI_STR_TXD_0_tvalid
  .reset_rtl_0(reset_rtl_0), // input wire reset_rtl_0
  .spi0_mosi(spi0_mosi), // output wire spi0_mosi
  .spi0_miso(spi0_miso), // input wire spi0_miso
  .spi0_sck(spi0_sck), // output wire spi0_sck
  .spi0_cs(spi0_cs), // output wire [0:0] spi0_cs
  .clk_100MHz(clk_100MHz) // input wire clk_100MHz
);
// INST_TAG_END ------  End cut for INSTANTIATION Template  ------

// You must compile the wrapper file microblaze.v when simulating
// the module, microblaze. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.
