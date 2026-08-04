// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Aug  3 14:48:36 2026
// Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
// Command     : write_verilog -force -mode funcsim -rename_top fifo_generator_0 -prefix
//               fifo_generator_0_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_14 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single__1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SYNC_RST" *) 
module fifo_generator_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_generator_0_xpm_cdc_sync_rst__1
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 120592)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
