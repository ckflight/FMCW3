// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Aug  3 14:48:36 2026
// Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
// Command     : write_verilog -force -mode synth_stub
//               /home/ck/Desktop/Workspace/FPGA_Workspace/Vivado/FMCW3_100T/FMCW3.gen/sources_1/bd/microblaze/ip/microblaze_axi_fifo_mm_s_0_2/microblaze_axi_fifo_mm_s_0_2_stub.v
// Design      : microblaze_axi_fifo_mm_s_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "microblaze_axi_fifo_mm_s_0_2,axi_fifo_mm_s,{}" *) (* core_generation_info = "microblaze_axi_fifo_mm_s_0_2,axi_fifo_mm_s,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_fifo_mm_s,x_ipVersion=4.3,x_ipCoreRevision=7,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_S_AXI_ID_WIDTH=4,C_S_AXI_ADDR_WIDTH=32,C_S_AXI_DATA_WIDTH=32,C_S_AXI4_DATA_WIDTH=32,C_TX_FIFO_DEPTH=512,C_RX_FIFO_DEPTH=512,C_TX_CASCADE_HEIGHT=0,C_RX_CASCADE_HEIGHT=0,C_TX_FIFO_PF_THRESHOLD=507,C_TX_FIFO_PE_THRESHOLD=5,C_RX_FIFO_PF_THRESHOLD=507,C_RX_FIFO_PE_THRESHOLD=5,C_USE_TX_CUT_THROUGH=0,C_DATA_INTERFACE_TYPE=0,C_TX_ENABLE_ECC=0,C_RX_ENABLE_ECC=0,C_TX_HAS_ECC_ERR_INJECT=0,C_RX_HAS_ECC_ERR_INJECT=0,C_BASEADDR=0x44A10000,C_HIGHADDR=0x44A1FFFF,C_AXI4_BASEADDR=0x80001000,C_AXI4_HIGHADDR=0x80002FFF,C_HAS_AXIS_TID=0,C_HAS_AXIS_TDEST=0,C_HAS_AXIS_TUSER=0,C_HAS_AXIS_TSTRB=0,C_HAS_AXIS_TKEEP=0,C_AXIS_TID_WIDTH=4,C_AXIS_TDEST_WIDTH=4,C_AXIS_TUSER_WIDTH=4,C_USE_RX_CUT_THROUGH=0,C_USE_TX_DATA=1,C_USE_TX_CTRL=1,C_USE_RX_DATA=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_fifo_mm_s,Vivado 2025.2" *) 
module microblaze_axi_fifo_mm_s_0_2(interrupt, s_axi_aclk, s_axi_aresetn, 
  s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, 
  s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, 
  mm2s_prmry_reset_out_n, axi_str_txd_tvalid, axi_str_txd_tready, axi_str_txd_tlast, 
  axi_str_txd_tdata, mm2s_cntrl_reset_out_n, axi_str_txc_tvalid, axi_str_txc_tready, 
  axi_str_txc_tlast, axi_str_txc_tdata, s2mm_prmry_reset_out_n, axi_str_rxd_tvalid, 
  axi_str_rxd_tready, axi_str_rxd_tlast, axi_str_rxd_tdata)
/* synthesis syn_black_box black_box_pad_pin="interrupt,s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,mm2s_prmry_reset_out_n,axi_str_txd_tvalid,axi_str_txd_tready,axi_str_txd_tlast,axi_str_txd_tdata[31:0],mm2s_cntrl_reset_out_n,axi_str_txc_tvalid,axi_str_txc_tready,axi_str_txc_tlast,axi_str_txc_tdata[31:0],s2mm_prmry_reset_out_n,axi_str_rxd_tvalid,axi_str_rxd_tready,axi_str_rxd_tlast,axi_str_rxd_tdata[31:0]" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt_intf INTERRUPT" *) (* x_interface_mode = "master interrupt_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt_intf, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_s_axi CLK" *) (* x_interface_mode = "slave aclk_s_axi" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_s_axi, ASSOCIATED_BUSIF S_AXI:S_AXI_FULL:AXI_STR_TXD:AXI_STR_TXC:AXI_STR_RXD, ASSOCIATED_RESET s_axi_aresetn:mm2s_prmry_reset_out_n:mm2s_cntrl_reset_out_n:s2mm_prmry_reset_out_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_Clk, INSERT_VIP 0" *) input s_axi_aclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_s_axi RST" *) (* x_interface_mode = "slave rst_s_axi" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_s_axi, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN microblaze_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_axi_str_txd RST" *) (* x_interface_mode = "master rst_axi_str_txd" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_axi_str_txd, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output mm2s_prmry_reset_out_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXD TVALID" *) (* x_interface_mode = "master AXI_STR_TXD" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_STR_TXD, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN microblaze_Clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output axi_str_txd_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXD TREADY" *) input axi_str_txd_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXD TLAST" *) output axi_str_txd_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXD TDATA" *) output [31:0]axi_str_txd_tdata;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_axi_str_txc RST" *) (* x_interface_mode = "master rst_axi_str_txc" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_axi_str_txc, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output mm2s_cntrl_reset_out_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXC TVALID" *) (* x_interface_mode = "master AXI_STR_TXC" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_STR_TXC, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN microblaze_Clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output axi_str_txc_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXC TREADY" *) input axi_str_txc_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXC TLAST" *) output axi_str_txc_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXC TDATA" *) output [31:0]axi_str_txc_tdata;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_axi_str_rxd RST" *) (* x_interface_mode = "master rst_axi_str_rxd" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_axi_str_rxd, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output s2mm_prmry_reset_out_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TVALID" *) (* x_interface_mode = "slave AXI_STR_RXD" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_STR_RXD, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN microblaze_Clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input axi_str_rxd_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TREADY" *) output axi_str_rxd_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TLAST" *) input axi_str_rxd_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TDATA" *) input [31:0]axi_str_rxd_tdata;
endmodule
