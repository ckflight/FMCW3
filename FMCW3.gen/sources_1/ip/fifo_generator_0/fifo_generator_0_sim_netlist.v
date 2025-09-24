// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Sep 13 20:30:52 2025
// Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
// Command     : write_verilog -force -mode funcsim -rename_top fifo_generator_0 -prefix
//               fifo_generator_0_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tiftg256-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
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
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
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
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
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
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_HAS_RST = "0" *) 
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
  (* C_USE_DOUT_RST = "0" *) 
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
  fifo_generator_0_fifo_generator_v13_2_13 U0
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
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
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
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
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
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
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
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 90784)
`pragma protect data_block
B2IqtmtGdtO02d9dcLTmWKFVoTKv7AdOKVFCbvMmist0YAsvMzXMmDLXl8cGC2iwEN0E47dyMNTq
A8mHzBaN5xKinESttsWd+8V45iV04I6C8zkAkcdcWAciRik6odemahP4UzYxMr4S4IF5iz3teEbE
kDoBRnkNEFIctYzM1/zLnDzxYcrf5hq1JrXqYn9LOg63HLLm2Ua7Kam+VmSrK9X/pKvpaaIBgC39
Kgx/gOb7qRLoZTysJzPidq0aL0daHmbfHKHxN9FTnEdBuCkJ4dHVnvAIxInw/hAkuL/h02/Pxk09
RdwyCE41Ij+pgfIepdtuKS+Al4iJqxneJZB+wjfTymWiZh2TOi62i2thbK46JE4yMVwrUczyDEBA
oYAudN4l3gRWoJ7wwnHw7o7U1Oi871raE0hDWfp9Zohe9PVBCEHW3TCh9lIlSvteldSiF1PMtq59
GEQ57cmp2XSnu/7y3tdC+AthTJHivFyDh1KVrp4EFLj2uu2XuPFa4EE39Y28fAaSTY64BArKUfIX
4ErDAYpfDqWLIhcVHO+x4PJqALhT2E85z4KcC1nhLFrkWIhUeAtRJbNQ6IDA4nWW2BpmIenwThow
h+pGFVHZ4rcT1TywiL1MznPpv3Y8/MdIL8fRfOA4gkNh6x83m10xrvfhsgabE7BstCpzYWz3oDi2
adpsCO6zQzQUw7gWdEdlvcKPjDJY9/iymELtHLEcwERL81Or/EHxqqihGwL4A95uJVhgruK6jOJY
MKZck+2AXyawkh7Tsnjb1xg7OAbiceNMzUKEB1rEJjjorBSlciD/En2ryJWgS25PO+DRABtoewSs
46Njt2L/dLaxXGDc6213uqFe1orcpAbZQ/K5zncggXr2xH5yzoHNBPxbkayfpfKhMADaQae89ukO
aydzfc3X2+fV8SShV5LEaZf7WPaXoyQy/bo/L5uHO/DUj63GaTWOsZ7Fl3XM4kS+yNZ4meCgVFuW
sHFIogY+ZMD1/AKBTXbisej74sJA4OyPOY86t1c1y5UKIp2EYt2f5zbiPM1XDoQUD9crLewRZqN8
VqyVVEg+ReIYnx4kbeeH+3Hawmu48UyilagEVudWAfLmYWFixnBzOOh21gleXyLKgaMGy2VnSm2O
6Qi1UWcyzsOX6SgmpNuPzhLZDUjRaI6A6k7xzhQFmUakAFl9kZ4Za5vfJZMl+3aejlIbeEFqljpb
BI13RWyV2OxBgne2271IsEy9dOIZLcUlGFR4R1XqfSe1/JsN/KUj2rme9e1UcD72vQ+QhldNVKd9
+vIbrpmpsKWfgOMgYi6CfxQ5USUm3MD6dXIr9W5KV2iPH1FXwZYlIMnEoe+9C0P9Y8S54dSRlpkh
Wcap1+AnZGfqy+r9wQ/2s9iP8DhqslO1Z0eVbqUgJCHtRZVsMn1nFUUa+p2GNztFPzWh5ESDNTO4
V3tKI/Y8fMENc0sPbOunIWnyCqeDZskAjKg4XHzcxcFailYa1iieo9E2bS7YiTzXk2ZIYp0jhiyr
u9EZbYPIRqDrvnQMMPejytEKl68OS7HdOVogRyOa7jP9ILYVdZgszUTYDfUk6VV84xRn0yPtGDar
+UHodZ41RRFE2t4VOUlRxPwLR1YXLspGXDPWieDfm/EldOIiUBUfavq8n3axToN1/XlPPkZwRLq+
cIGuY2hmPEWgVWY3b/t9msSNYDJYBYW4xisc+PIUz0AUGME6V3GUGKo+5GDT57JwoTokAge6omNB
dG3hzaMsbSKajXiwDMfavD2OwBlW7fZUyvYQmTt3TRgZtGYVIePjhQT/S/2yZVI5CJ2NfqwtVwzN
aV3bbEnFKM/ajXBCcAklHLUSr4kGZYIxGtUaVoIpfpqu+TXkWPKmFkiQO0j/o7AlAJtiAakFY0BQ
IjD/wKPieubyhl6UKRJ7p/xWJ+SbjYi5fB5QPjrLwkDxIrqHUpHVusUTmbkUFNf5eR6myO44RUJN
Yto3ELGzkSD2Ja+ujQKqDXBlBT0Qb6fO2+EFK/3AxxXtNFMvXb6Md67jnM4Om/RGGdajf7IJtogD
0FPXmGAzNIcnjU3My3nvPnqV/vqRRvaDg+MqQO//uGpewJ7FbIpNz1XiWfwyB9tgQsMbIIk++e70
fAZbVuqfz+v5IQG0vc2B4FkO5gc+2KmFkZA/SqyueeAs12qHYLyRe/Y/w7nuGSxRGCm3gGB0VYp1
oGt5tcAgjwvaHLoADGVM6gDXuuDMv0f1uGJ57sGHKg2QcTYK+c1NNSGVQO8xjtNAlWUp4QaTt2Yf
3VIwCFKALzKQ1fwA1UNRTLaAYPfg36C7VY/WqQpLnxJUb0BA7aDzDD81bpR5qg0+Al5zZr8c6bJk
dEg4okRLusJcB+vA10HmljfjCtb8q1y7zFgAIkMnOU/SBsZDBdRXWxisFz0S/VPAdtxGStaMrvbo
NjIm4h3gHrs2HNNeqSnskLrS/1+lk6DHQaKVEdY7y25zRUgLN50wcHjmhU1TCILey8E2C1HHFD4l
J+vVi9/ZLjXB8BWJEmEzoDtdiDOyXUgWfudSf1HeEpL6GBLRi/W/RqibD2O5gShCFIu1GK0nRI/X
+7KoqcYSgWBC3oGP2u5as/bjhk0TlaRyO5NymZzhJMynOD99v4NkL3A/2uDf1av6pBC+2Sjc64YT
xx2w2ztpOVNU/PJli3FdFjigzxqab7jYLTYvpzQgb5P0NwcOagqmiiXQTN2dJRDyx6RilKb7emzR
Z0EvIQ5LUt4c+daQeAupGKz53/RKJypUMZityJSrp341VGJqIG7evcdMY9R5jRG++0as16RAAoF1
Vu8PjvDXP5V5ROUYbdx24Hm3gLuqr3ANLj7/0Xr2Ow5zVV5DhNtcCp1BKBZeDNG9+nosqZZvvX6r
L0mCUUtMPAKw2BiKy4lhs5XtE+PkHNGHbtafEXPIc4pR9dvxaLYgktyf+nLEYZURJzK8COf1j0Ed
28SDOqk4J27kzvyCXxv5oFZxvYfZPtROV1ihj6V/4zyX8+H8V6R/y8o/WK0RlnsxC2RgiSkBVZ1p
jR3o3jAm5XPIC+9c5fP4FzjTKTsU3FGB8UZbw//GsSoRVUiceejq+i5ooiYlMrM2tX//xjpAvOAZ
U6yjxw28aULFReRraOlon8fLMLT9k3mbZ6lv8i3Jja1UMT2rgPbDGz16o5UqlL64Gx7/hEQEXy3v
5ICdiRbXgRYPRH3ubAPm7W7PI/iPtVcsaNoi0oxr/egSqVQ5gOlsyPo6MJAjwNwQ2lJDokqosX95
F61OnpkhAq0VIyInwTX5f9eBdnojqHJb2gh6IAwCgHbPil7tMqQKUPUsR7p/a9OLLbk1UWkxr88G
qHZnt1uRkTPV68e0mqqpWorT9PwV8bHHTazkFjNUNsCvMnrqUQxXJmoIxoFULYfv6sbK4fwuSRYQ
ab1T5owlcOmcyafXcWVhkqhou+QH+2EFtnifXV3AmPyCs2xNxdUvG96kjK4kbSGr5iuk4zchz4DP
NpLnkuA4pv3nD7CU8V7jaAHqdQz57wrST7mCk5IOVlI99Iv/M5XIIuj00US/z5acPZrjJp5FM/Wt
n7oTi9DY8ckvjNEv6fGwHt5PCB0FYNwl6MjlV/aQeE/5aEtDQrNmNX3B5lgv8xvY9A+aLe9KodlR
PlGJuqgr3ihVQw9Pz22MTrfUhIrM+wyOLERBPmDbLlkiZn1AQ5lJQyo/jvWTOnnk3jzQrXAYvfBl
SN/4dverRtVYz8y9BbaexnfWMtenuBNb+QvAExxrJP2Oq6aodpXFcYjG1lzbQ10cyoNWbUlxX3UZ
3Q3Ns1g/8h4Y7Zz0ARE/r58QyjivSL0HwK3oM/kGagGLqj+a2U6PTX+iJ5qc4Z0ca/Zzz/fR7Kq9
atBMDII6pXzl5Dn+yfGqOL1Zpt4Tv2VOsxft0f0HLkAnhTAqLSGzZTDLDyAN/ZaHHOKpFJNAXZDO
dh6KE3iDE5bAzfuXLiHMLUzIUkYML2+kG66ZsY8KrOS4V72FNFJ7+gSeV30Z/Fr4b7r1OoHJicwx
p4I4XqkwOJrTablP3oOxRHpGfSr9AY+pIMXvN4q2+9OCUZPgEVkRHqjPWyfX/SOJAEpSWKs9E5Kt
IW2JxskpiFBbtKhW6w3Wub9XV6WTuLZx7ENBfBrhv0CzfnmWwvOhO6xFHLty0y3PtQ9rlQ59+D7F
mXZV6hwC6T3PYjsUJ+jcaVZPhvdSVPeZH2m3IggowoV/k/jRJumRGkSXTeQkiamlhV6PUt5RkDEc
d2W3OhxPyCmcxLcUMPetNift+AxBP8lfWpWCI6qKQAumSHiO+0JNXXvb0ms1XNypF83c8MKFra94
j3oJOtEVnzn8/T/PzI1kSS6ioQOorAr6w3WxRWrE6IHPD1FXZ9/8iuxT/YpO6IPI5J7VLsGowLzH
VvFNpy4K1jubrr8vdGlKCDNk5KS/XVAAEMPNwx+zyNo7p8NYdx7l+Yi59n19C2HMqbCSqySbgUHu
g4AkJEBbgrHGbXOHO7pd9oFo8ECn2546FvmdOnWggNZJDnoZKMNYJ/fFCJkVr/wX0f0VQLIqtgrF
IDI/M5p859tlALS6gwR911DC5YMximgLMRG1dEdgGd/PFqnCZ5Kf++1uvUB4QcBmkn4IP+EzXKaH
/ejCFFEv5F7csbU66NnxsJCBkQqo5Iqx5GAb7onvVNDPEuB6BIlsJg1xT+mTQQolBqFN09P+DZhP
aldDLOM3peNfZbHp/yk/4JKdsMm70nh0yOAD08ePaiqQzEqwp18MtFm5i3wLq64f1hN46YL6E5x6
oI2dT/UOx5jAGeU2ZvtuXDHpE+XbqPiuun0Pcg62Tyg4Q2xs3MjV2MbE5Q1iNm0Ct8QNBsLOk5P0
N7xy75Zo1NSH+5d+QRK4qid/ciCmOJeH9q0hmOWkdg1yLhR4N43Hu42w4QO0d/FmphJ1fQee1jsR
QB5GtouCwzu7ogthLcpRONBvu/w9frOwMINItuJ+1hubCKteC6xLOhG5JTWNGCMpFiCiUiyI3Bdn
bxdiopTEeVjILnUSe9x0qwSZ+fRXKhuWvs3U0LrUML8YkHw1A5Da1l7kCMvAS2T3ivgRFXuvCg5z
WB7s0Li47ceK0vwUTTuuvMwTAhXgzfXWxOw0s4uwmYMtMq7y9B3gI154/QhiEsY0/SxXP1vSwYbP
U1KTZmb52XOHyfL4qyKqdhsSnUAMWrhFE92w3aEb/M5nQc+Lxh215gbwWbtQTwyvP510KcClhVcJ
dncJ4X7qGD3uFMr/S2Y/E1tVvHyh9hqOFZKKZOmo4F4/rABJwO9agbFtPaunSfQXrny/MKPJWUvW
MtiuppxTGY7nNWiRMx4xe0cDR9x9A+Bm1iaV6jEEdP8aw0byUd9hzJPaROfY8ce3CESm+FHTBAhE
Vcg5T/3F5b4uQkaroXfr8/yVTDmgToMzUE/nWZAzBwc/uGVuGDbIuYnWxBSy+5I9wgoWn3ugJivX
frqbpIUIEIq5ZH+m+1b9mOWtN0/Vpf5qu8RJ6pdEJg9P5qb3p8s7pFyamnt2/pi0+8CqK3MZFDZw
qSAlqpBXUhE8A9QkaHWZjwzrLDqnaebVo9lFOKE8NPgRuYkLzTrqsiDIRu3RiLmhjcG6UDltQQzJ
wkJ6QyxLu7f3S9rih+ZEfFQ+mCxUuSKZfXOl+Bh78MowUF/dmKuBprZh6VuCnzmOeUSpH4T7f6eo
9Wk2bCfOkCCRhyE2roDYFHuPTjcSXE9WI3UtpWvXiEheBwReEBOTXWYwuh2H6340Q88YkjEG4li/
A+PEErph0vAbv4fYbT37V7cXX9M0Hq677YSLQPa40TmPlJ82bSpPl9PHl/2p+0Ko4mIN0u0wlNlw
weG3SifNyK23RDWrORXQYuN41xBPeBw7mRU+Emg4HmpBqu9a01mH5OixX7r87ml1xmR4VX2+aUEd
gphzLXV9zfybUCSqqzmf5m/HzSmjlRW49CAIMO56qPEHf6auXmp6bqQ2h0S6q+JzMxW12H3luxH+
QlxuSS5ehqzMYusPvT4KNfLhni7/OuM1k6Tj7ca9Nr99HwR9MHSizvWmuht/KUTGuT0f5uSUTXi/
0NQReBAiGRGyxXIxArKjZf81haStAzVtUSWJ2d1juleWu+DA1y4tGwqiPvYd3r71S6dIrSoloQAh
F8hbBUEA6u297JIqlNrl8vYlQZl09V1GH1rw/Q5yGaF39Wndhve6DChMADjAJC0slGJG7H3Kxf1Q
F3Tm/QHHMgPAP7NPZBA5XI/Ol1niXZ4+UIHI54seP1zR/nf6u3W7AH/BcVMhhb71hMr3TZkEMvhM
qsUY+3j6f5Ul5SSkK0kOTMh3zWvDICZk62zlNF4V3tRWM3ri/+cQoi3ucCJDZ1rGG47oeZeKKhcH
WrbSDeb6MAPU1Dg/pb/Mc1UtsCUbO3uwpV1thBBcgkjrDGJQde9OYGVI3qTdqaheHlp0nrkiRiYW
ywYmzu+f8+sueEevwLWLkUMx+BXH/BdD8hAgW1ISTjqkmy1yL0IP2zcu1qWVEKwn4dQhGkj+PRDZ
IEOAOjTjq4Uw06MNVShWtpirw+NmTdTfP/ju+Jt48jErZl383nBYRc7pqhJ5xKf4iFkmLpbW8NNj
3iqpaBQRGpakFnasfbCB8EdJdXkWInIQKuO7GL7IZpWIi4gxJY4FA8WCfnFw8VxhLObinl1AWxIn
Wizv7eV7EddKBI3DWpI9ogBbrn+do2rla5UZMHzUK5d3wbLi9y37Fqu/3iqpj/C0nAOHX/SBD6kQ
IS1S2/rP2N93Y3NRCQbIjne1V9TIHughFdJYLYDTQagP5hXn2BO7f60bdNr+mY5Lw9RSDp2VmglY
0tIA0BPv1b1lf74uNhSYKOqUtanxbUOUe2VVnziqCEQbXhJBL+M36BdzP4R+ufzmfalkkh561MYf
XdudUyVykjPNUgIKL1tZyj9qx6G9FLzIuTe0EpjVOiswqdUuMGCiRUUzh0VWkPckscEDiuhvZixq
fT96XMr2H3n8D0o4xuO+fmOdNH+XIVwbRiR0ExADj+Mb48ErHbI4lZ9w69D2cG6ALzYJ360uEdrW
i90/cm3opHqM9A1kTdovytLhOotGDAdaeGV3IFaq+A/jC5axz6bV/i/dZAXc/Cc817LqbCHdt5S8
4DiAxV5ABG+n/OrHg233BRAOe+VT82X9lVEh4MsPju2wvUlvVaF5bWH5rIe9Kcq0xxATmOSVcTEp
UORjlkx6BXDpE5/olcuCdbltD+4inHHHKqBK3ONdeTy+w51CKDrzE913aAbbkaeJEGJZV0LyfxT7
vxA1s60TVBYx0lMxINnufp73epWQe0TuVdIZpNpQOkAJNyrSDiIHa87HXAGJQfP3JEGsmZBt7GpE
Af/ES17vXu26s8queK2kDEQAbEjZjiRJ5+1pZx3eOOHXBekdgBCWdpNgszKOz2Hb0EMuBi1Uf7No
vFVPTL4yWjenVsFN3EsK7wZWx0PJKqJMvdBik5deiV1nzfVqm8K0B3Pn2nycCaMashPIYro9n8eW
QYEzFM7VYUYF/DX0lSr5rYDWrKbxjlbnD/ie4KwV4Up7uRtH3b1MzyWwIbazcjsmdhkD84VGWHR2
9HSdVh5RIH9Uw6p7a9LFfl00JuFEIhahL4fWQIlzP2oZ0SfAKyKoTB8e41IJAz59nMtxrxoryOH+
WdqTXVltTXvN7y9M6x3I6vWywDWFnXN58tzR/mBeSH9RBJn2jcvFrRVCAkAUQAKVUSMmHZ25Y6il
Ay0qbyfCjkVWPAIHKKIfQenwrpT3un0vqrxP9Q/3uoW+KbYQAGg4iHDBjnaLgfTTePiVvhmJIMCl
DiOg2dpbDexS/wWjrY44ypDhz6M/6d0+f6isURqqaqwGVijqalA9Z3+ahW+RkFWlmXWdHwX1Iga6
3tgg+RD0UpYKoR7lUG9o+YfhAfDLsOCKncmgRQB1miMxVuLx5QY3lnjzUteAcNrRa45fQCjONUkv
77l/bx6wvoltljPKqXbyrACD9MA0IKYW27DlakcMsDSfcXck07nOcQInUb5V0rZSgyzfHCb2Y2J0
UGLykzhbLv762EJGzMkHX1XrsFdVn9SmllTHdGLGVOKJtDhk9kKrAZgVX3kEFy2wNqjX0p1ApAyg
vTRJY9cpBd/tWNJVgQGsOWxOLNsN4n8AjgcxLBzVkYOzgKF8Diwx/vMEZgC1L45bzk+BtQWL4r4G
oAEPa0ABfSa3iRZxyOV+zPjBiDBXE2fFNvWhl2XndO7O1JCvQWMaocJflhTmgPRogE5a3TGTgUfi
PiKUse01ddreR9UnN5yWPsnJe+QFm3r5D8VHQ+8SRd5OQX+u7k71Dic0A+pGuqgbyWghTsL45MnQ
vgPyanFIIgwX6rqgkWBYCRLCAdJjcZxxuCWL6a3DtlbKHg4jRKC7lLi+B653fcENB1IKKNBAmy5I
4E9S9SvgqztXDmHGPdtBALJKrdV854njcgD4EmC/FjTQwS0Yka81dZndI4MKwBXYbOJjJi+oovOt
bEK8UtOUSN42J9nZyFznPf5Y3KE8PnTxk3zifRfv773K/+Ii4z3Hegc9gcV6xPOlyFAYndV6/mGY
00pqD4Fw8rbZr50hpsmIkFuZge5BvFqwI6tnuYygOb2JtGrAPkeVONzynrtagSW54GukLdQp1WIY
1Zof/KRGqKowYg+k0f19h+dWq4pY+MO3K4spGmsNXRb9X1ZvLeVrXKNuhjh+2wWGY8momnBBSrUs
BYmH56cEQzQJ+CYNwbgESzfOmbTcmcoLSTK62o8JjFUhORKcpWEL5dYrg3xBqA5LyWkQwqj3XdHH
kYHSwEJcKdRP9XKwWMgimKIN4k93OM/Zyu+uZc1Ye/g30lQbm60Pkvd0JGK3fXg6zi2co5Q9BGKM
nLxeLn5Gd5SutbBQT2ubea3zJkyJdBZSaPP+Thzo9+E7EyW0WkbvuDBVVeyrHEPqXKlOTaTE7n40
38taCBt+zUM0ko3pxHW4D7OfKd7SfB+6bgNAtebjf8pRhRbGQydaI3FB9lILbwuLuHp7/sj9nTIu
p0RCJDC640Ladx0OWb6X2n6eqjqE93xv+QeLYx5mNrDlOHIgde7ZcdhuHoFaAW3qTM1YokjXxhsq
OEAS56oMNg1Wa5czYyTOyBvE0psCqGplwSbOZ3PN0/oivEKR7QA/XQaSe2JX80CE8bW7JTjTh0Kf
Yk4tr0omYSqfV7HZpgS8FFVqNWmITkn6RdReb6une4W3CmM2ZglT+M3BTRnNjXD+4jt9mIYjW+On
tubZW9c5vUMjPqYWqut9RUUS0sQe5sKJF4l2p177AO9esnQp33bkd6vpfehlXucRXcnfNrFRTe2n
MpRE2RTsQF9KAhdhNA0byDF7Y6ib5Xyb6vLi4Y8Qqy4YcbIlvpIPUrvbH+I1ocJWxiAarrqBi6Tb
aPtxedpSjD6BTQTzVjb2cL5k1EKLhei72kljMvypCwy4e5zqvp9CMNYEXjrqoV0ftsyczfD7NUi9
PcuDiw9m/Y1HcIoL+iPHq87Ha619A3mcshMTKhc6QOFAccI18qLMQMG8fPSq8jAp+tHLhFJ/UH71
IHcVqbRoVuwJ9OIyLaLRnz8seq5wyIl+01FyPS4kALuthrHbTCDefGvEzzMFNf0XSMjSp0LfzePF
yoabPsleycje2sJA+NKP3yAn/nfeGhrLJKPoUfcpZ/zo1zVHCMYcHM4l5yYhn6zFt84fmjX4A9sv
4rxbhD88PTvUiQNEg9O7y49oUZsmWOCnC+Jjvd/reS9qqJ+UN04JE0JPWuKWfw5lgsKh2YXehbWj
TKXM9PqsBYTxIP1R64A/mmthQy9ki+dTusyjeaKON2CFP/AmyqpYPJnx7C+DmEhSNQ+8W3T38ffC
DxduqQtmNLNPo1Y6P0x1buR9UeisqoXtoYXsyUqNwLo0zcWEeWhbJSXVafrzHGZYFpcLQxIMySDs
JCNVzaoXfR9ayQUN8KaO9lWyWr6GQvyob1+c3TzX2zPIcqCSxHT1qWAQ61agVC3LWv4IZCDRVJ+H
51DzTLDpJ+qUTPVNltuoqQhkBy1Ee7uJgjDlQsXj0JTwO29GLnkIqtv4i1+tfyg69fXtGQDEm2Rk
tXlK9mVr85A6nJee2tTjenMeJQ4oRNmt3UFPB+VutzAL74x5gqvtl5AuD6H/fSgbbu8XHVD0a/tf
yTvsGYkmCoMP0FlSicnmGGefQN8hQohZkuL8CUdRs4XXbuWfqA3RZFWA4ulOfIALf5u2iOCRvkb4
dmCTgKVNZh12d4ITexvxTozQhSeaxoQaRpOa6lzziNGpu0HGwuX+DeRUAnEyEhg17wOX8BGxEToH
tZIOaZESHIQ+t6ZIF/5jzgyK3GMIh8CXeU15eMgD7Uir3T40SdLaJ0VJTiBon6h1fhnz8rfFKbJY
KCWGfxrQgeW22dJoGqtbKPr6lrvEbcGu+dacpE6830YJK0QW5z4RFMm2ep90X0feuu5ROl/nppB6
uTuLsBrzayxyWQsztxzpV6L+4BRgGBMFntsy0BvT6Q+CXgKXhCO605+bjdYHtNiszSx//Pj1G1zL
AqhyGeEYSyMwyj9dKHMPTkH7A0M9+Ve22sN7DvNmb12vKvfGNHL8G6hUrHzuIxHafeDzyGEX+oDG
6H3FgfulsZR1GYvJ2znYjBEGXtfU/87AIj1YTZAWHNQUasAVybL+bfAquNoe2IBg3PO0rlz1x+mE
Av7Fp3sgDfRNQyzNkuYXOwSvIXR4WZJfV9s9A9d+aHclQDiJ7Micd0IMeTD0JamZAxRCBaHar6Oh
5FmbmCAa3NIZu6/RoeyXySbn569xIRuXVL2GgqcvbO0MtTlX4M0MOIANIYrLtn+PLtz65ntnUTsE
G/gRiHND6onQu1pNt4/iRot+SOP2YzyTVQMeIG/Bd5JfKH2qjJ8WjuUYWEBNNW1nHjVuXmflFvkS
Qz2TMveFm9YFb7A88LeA38+jVuhowvTX/N4yO9NUpnXwdw4LuVVDE75X+PEG5nnLlKSn4k6XUDmE
IUH5S5bAVLj+8GLEVCFTbuQ4vcuF8vrg4lRaikxLKghGrOyjt+kkSEUt4gHm4qPpuSRWtpp6Q+oC
D5C3av/gz4vz7K/XTTIT054YLkCUKG8hMKLHmXDKryXD5TZpJtERUGtvLk1e9lXUkxRurUpDfj5+
mpz4I/bTfdpICBvdeo7TGYzgIG7vH5yF8GX1N4O4FMBoDxdBdLFDpJ4KyWTM5OyfA/x4Zbt5e19l
dXJAX53B6vbOgKbefwQZ44G3osIs5/iaukWfsln9GnLh1c6aD/kDjoe9pWApca0qIYHm2edhA7Qo
3UPjC5IQyfa5atDUUrudhCtaI1wszPvKXaobHTx26UPmbs6tr74D7k7+xk3HFnspgOVMF83fxJhh
qru+dk1o5khR5aVUyDT94gjQIRr8NifOi9nFWL+g8/e/n6vZYqu8us62mfdXaYU+rzhJgadOc9gj
fff/qEgJ7s8bEO6I0CknX/sTGS2psExJ+mPwRvawTZdJTd71zd3asgUuJypCrwUk4I3rAGo4/vYS
KdPw6NOMrRKzRZN8Umo5U5qFs+z3OpGRNUvKfWyDgzep4+t38kNwAP5XLnHV5v975jsrThXmr9FU
uqYCxThe3RU25y47ozEBjcsSBEL4A3yMaY+BASBhv13adVM7YGdvtZmaUbolJxTZ8mkvDydEHt3I
d4sbxyxDzlA3lB6cVX0pOx+qBVSYMQODaPpn3AF7T3jR7ksBfphY09sVmzdXD7Fl1ZaJY09drJJr
H7a73xFeC6kD+soBdzkPgFBUTsZzrsmN85n1Lnfr/6NDV9Iy8j4XATSi2mZqeMmeopJ1lCn/fovw
vcR9gzoaoYe8Pc6oIB77aCbsNa0ddjo2M+h07n4YVTteTqG5PwAeI38dO3mw5GlDauHdVVEeXiJq
+i6aF15whmj3pRTTgdD1Es+FOPXpZQPkK1cdTvFBQlj2MVeS/4KkWJS5PRPAJjFxBFpw0HmPtq0u
cWnahjFeHvFQ3fJKI9qA4/70U94I8nDhPvduGusKCuZKCsBIbAHNDQa86W2qyZAIpbaLNualandG
8mJ62BQE78zjmVYzBo0iBtQsEPSRaSfwdXy+RMS/ttV/lt4h88QDiKFbtgFWheKapyrkvGUmFSe0
J03D70ws9rIEjteBOuJxNTulbcjp2p/dM5b/NfUWAhq3vZkyrYhsvTuzhrGbIG1q4sMBkK8fm1BR
wOe/lwzC+1kazIoweZg21LLGsSxa8Fg/uPSnuzjmaTWDvLkzSfYNUpWdfVy3ENw9KN5pMBfDAjfr
HYiu9zTQurG9+6TJ4+ia6H4aoI3cwP6yBNfExVwKwyFf2SZ0pLJc9djyvepXgeUwLbRod6HF98w1
SVJcemF67QHTFoRTqxgbeyQr0TE6UE2kQ8DGZIknglH2F1an6USoaZxxUL5dsKMBM2z3KJe084vn
JgPYRP31cpsglZPoLoBq2UXyVEhJfqGRn38/iAxLMDPHQ04khpzH0umtsbi++Rv8w6ou4DgAnU63
mnWzJUeEshHZTW3JiRixWp0U5sZcJo+XcpjrbSGMzCkNVmWbjlNJLA1z3jCyoofZBQ+5HqGb2VgN
NrOAFesQ4mMlhYEGerC3LckhFjddVpfm3E87O9XppCAPOqx2zJvO5OdvnCKqa2D1ZH6br/bcZ+h9
g+mXV4Ri8xJS8aSaGkdSPSA1ch/BqqFnNymteeyPAThhTmQJD4IFt3FYOM+QFcC2IN7/GMBGwiU6
ZBye+Qwqu6C79V3BXZUZnUPvJ2IJEYyuD1PrRj5QxLDpIcF9Xsf1d3fN1eq7uqmgjTJEMUSRY1Z9
2g9KZzFw6AzRToIW7cJ8rX8tvOP/orA2AFqDH5cUx0KtZCFiNDmql6f5uX4MJSPhb7BOg6/fEmgx
yOQROxPVpJlm4hE5Nsh+CCpeJUFkMdYb9p5CxAWU7rNQt15x7h0zsL+vtOW9/rCfiNnPUDF+4cQy
mf5AuFskrGydVlu5IoMY6mVy5D2di5Kuu4hZbSYCEriUQkZipOkt+1EVRgm9ZhMAvseAtnSjeEuI
4AGBIpLcvJtPz77hPFeb2v6/kbaCuS2N6w2jaTVxdvErckC7TlYQzC8UYmmHQlygQJW8IVhFF+Iw
Yd0a3vEbOAMzTIuQANJ8HhkRUywM9/QO7XSt2KMdTA4zM2XTxKqsEjNwuiUAdyv24GGBkauaoPsq
Jqz0/d5omGgC3eIcJYu67a0lThd8NFAeiXIYPUx95h0op4uqfDqooia2TznhHyCpQ3PGrum72oj/
7NM1vUxenQk9HwNnna7fQB7mOSn6upBfQxHjx3ElgIewoYjvkFEY0rwD2kZOspNwhm4RJYWsSySk
MRaRY5BENB3hVAi5WS7HZY9GOHbB+K2foU/xQQLQRyzcdXFX4sgkTCjT0vllo8W67tuy9KorBVgl
cmI4NI6pNqXaUDa8GnFeYvVczDWHmBr/pPxLnan2GX4Afpo9hj3nST19rvLOtfHLkrBZoQSmxB97
FTq5jIH1LQQRYOKa+zX2sDEV/TNMt8czIh60wb2oTcz0Vx1VJA8TD08xyhzoRYtRFVblLmEfRols
tovCATg1FU1/2p3H+e2xi7tOPqH/XGGM2yaVvfAkQE95/3/i3xdUFUDA3IanTjXfatg2Wv4aRlUj
xPoYfH7gSp080fBQAixx4ziwKYK0+t9NVO2UbdZVFpBK/Q6QKkPEW1v/1fzHamTizLyUqf5eCzua
a7CZqKCy/jHMzbN/D1P4b/kvSkduJymIVy2fsSdoXlMhQ/H4KE+6+MsoqmAPWt/DJ2WWV6VaKLsd
FR3S1ZfIXYxNPdp3grQ4xAkRuVlfVbZDzKHy3W7QUIl+eY6szT9QF4k7nEaHBW88jYW+5wyDgHep
nI1SWMsDgB7x5X9wAWpGIGK+28aG67NOe1m2WNuMEPNbNDSVM8WNe4uItvn9YBsn+dSAlraJdvUx
XKwNAAbAL+PyBLV4htgJ1X8UxwreANZY9pGMiF5ovtPYDtMajzUk6HO409YCZXhnOoA8bKrb4QzA
xw0zr8tLq33FR8uMCfexlqzwTfXk5R5lAAcidFCUXOdIm8domQG9XZfd66+6VMWZFVWPF3ZsEWR5
QXf7P2+Mu11qDVrdeI1WuG8gjCuSJ3gKcAtG7DqsKVMcnAszkBKaQUz/O9m0KAt0UAAMqK7SJMAV
hhjt48H6BitAmLJ3rJlBgdro547bceUiJ5kiQ5X3z1RTqVLL8uqJE3e1dUO64iTTKij10xK1WQxW
+0JT3RGryrJrUEj3Z6q2VZHRv5ANjIzGdbj/ZLRkbS4WLRIPHptrGxs7GiYuz0o0fqb00J87Tpyq
qWdw0KA1rGWDQMNjcOFETooMe+iuJUkzTZmOAOGHdngw3pD8aT8R0b6i1QzKUW2HVa1B2jWam3CT
NH5/h8evW9aW835fUGv2ij6BTMTrWLqPkfSuRvr8L1Yjk1cALu+ILimi6/kb7b7lWwV3LUZ47P2j
S3wTGx8p/mr8MuOYmHxtEzzZ+PfKvB2XGL8nkvzRz1kVGXRTKqV5sHpqS6W9w7TQOAYXVuTbd3qk
kxhDieAuX9k9lFXR7B5CqtBp7cQgH68+DHNSWyTrVPq78kCk5zbmFkv3xxtT62kjvmJe+pQ0NkI7
SBePuboIHD4O0W08Z4G2Rf8fyJxjCChFcUZ8xaedeRAdZiQhGICCBSVvU4D//IoWBbl3PjSLQkMv
lUV7GtwwXlWcBHZNFPNuIbGeGBFRiVF9dU1UEVnGf7TlqRaizHzoLfXLcSvGUkfntdX51PVJ1VV9
MxszvAoGeILz9e4EmRYdXzjdSKRkAPQ40McqpdBAw4fc+AglnMKTFTULA2nmlp6XpdSV7JYjeKwT
4Q5LA3LHIRu0zRyDiYjv+8Bil0bQV/Y+y0q27tDT2gXi7jiFFi11brrn22K1OrDWmDv/Vdv3QaF8
JUj+CDnUhIeMM0NNWjDlloNTkiE2GWsJo8s6sglwhsNiQJ0qEhPoVNS5kl6OO4tK0hl2eZssqKYY
iuGSh2NwnD9mxbFyAI2xJwf+Z9ebbWSj7f80UwjSa/GCHBOlxY3IUCJWEvvjAkzj2uoG9E4iRUoc
gzUlGkFtAGa7+TdTe72QX97uEOc7JO3CRSzqB6AZ2l4V0OwHTQ8oliT8USNPTaGnOnq9TghMWb6A
OJ/H7rCkpGj39ogYTfxnP6rL+lbiUOlkjmol8Uw8Ka7HjLCSbp22rY3Cz9LbVyBcrxP1LRMhaodn
yVOuAmHID3LGXfmR6lNj/nxWfkH9KPChHBjc2Bmt63fU0Epl46LFxaaO3PCgF7Ub0art0a5fnEOP
dwE5y2XsHSCYS8A6qebOIgdXOzIeRrxysvm/Sg1kV8X5HMiWDUDWvggtjL/J5lzubdNpLQH+DjNQ
b4r5bwMqykFR/UbqTfu8qpUjV1+hqeDDBL/9FhoRO2I7HvBuN5FMTtb79WQAV3JbDtk4Qkzv8TQX
Ve1ACWGVCaySNzDkadPikoAIP3QWST47pRW01r5AI6HT9d0dWi1j+tr5vau1VKZueh9KGvs7wVyK
yAUWd4kjYSUqaOcGTgZBZ4wk20fmwkJnvtW8Yj6N1C7ghu+Vf0kZy6OreY/e09INZ55SvkCDzGpW
QCMaHzuOTyWRC8vuQKc5nDhYi0di3qmUsBldmeAi/TTv/EsZdYOrD0NQi02jPRRH7onP6tESIs+5
EJBn/Fr4tJV/glx8lu1DTIETzcQAA4dcNIkJ5EvpfKKnERQ7ce1D8wyBRC2iGJYuX1KlWZZ94Jo9
mur/nu8waa3rz/b8PM9/sy6poWiIUGwScAJy9liFLu/amoMVkXa7jlnKfCRO6hHMHfYZBrvjMYOv
XVM4V8eL79VOzoHGIqEpi+L2WUR+N73KLuEk7n+lcCDo+hU3Qvr3W15R+xbzNBzNDkDPBGTfvxF8
TKEkAW1Lz/WNfQCfHeLSOVHgrKmJf3GR1AJh6u/0/B4JiPBqbKAtFpiPjH2fR0od8h2aUQueB+mD
XrHXiafWikQYrJI8kXYg4RwDR0vKzGo+U5QxfQehDxSbvqlfX5kMiUefawe4wSAE2ohRA7UB0xSi
13Cl/qMirFvXbHJyhf4okpSvvDCGblrH9QxsoQy9iYtUBHu1RXkRjnGWiDEU6bYkOXSlaORQBLAB
bPHNnIsjlvowx4Nlc9NDkUcva6ZwW+XKsUOcgZwWkLxIZrTjQniGu/r/kemQ+NggpW+Yov+DuDp7
Dki3+CTFD3GN+wdCGlDQgdfuGvqEHNFFcIY8OFnHU5epASHb5Z9jT1u+myaJjsPFzpkv0LFr2ufG
ZUvw1vQMohrLDebNb3jds241MQron8wcRYR5zdQGljFJuSe4Pbhp05RBfOtD+kqvMbM3ilZ/hX+j
sRtWOrR0Qfq46KUGDDRk+XPAMwu983Zu215Ofn7oyXhZdzyd2nG5q4Qo/nDf00Y39u7hPSu6POpO
KdOHs2gCdEV4CWRgQUr9Wb1LHwjCjRilnskhldEsHn4JuhCLeZT2x7wZXwuAr3oynqmZTvS9eICf
MOfeUdiRdvVMkzTAJ2aq2IsxdpSKw4GnwWvpOR9eYer/4rG6TIXFEVpnb7sxbMhEYrzyZ71PaEEs
CsU0/C38xRLX8bmKXUFIG7yXPXxWQdcGJzRuCF54AYahPR1aXBCx0/D22ricCc6iwpY9f9CaDThN
KwzUuB+nT4kuqg+yhB1RFmO4Z1fT5GJrCpbXqiuOqFwMT1e9xZ7/SdALXviQrBldywb4ICi8L/IB
29/TwFWtVhaXmzzlxT8f6mkKhjkBA6kglQ3SG4GuR28fPEOHXovmsT/heYUoo93P9EEDg0GANHdF
SbYLVbeiT8KHiCJmCZcN2/vjfLM/JjmG1iA1t0+wVLwDFy9Y4oB5tXnZVc9KGT753c7OmRpwn6zX
QK7O7xLZtw3i9oXbeNJUhWwS5wc3YuuVKxGjDsoehTuyDN1C7YxKinkgmr++T/inoqoqXu7/c7Av
hFnWFWl9shsj0RMqZ8sl7BWBtCUxofkTZbAYnYVPC+wGK7uWLUhRDzqJnYEq/qx/ai9xHg5lzA5H
oyqrUuZW9FvNQeWF7aj4hpH6RK1elvCwrEvBMzuSQoj8AKEdl50ZV5jGJoBLWNSleO4h7ULmHE6s
iWuaSQvr/wOt/qoLsMDo87VoaFZCrn37Hlqxq4ua0hLfZBBrJq8VhbNXsaBU9GZ1T8D4Q56qPjf3
YKCuJG6dVpPG7FI406nWB+vjLoG7eURbasCSqWpG1Ovqw4hkbYfbkJz+gKVrCmfyUSWAV+EbQz5o
mZaDBX/Fce6YUO3qib23TVZJi3CNppy1vBAX+OENcKh+D7RZBR2WLq9rFalwaVAIECqJzd046/CW
6zAeL/2p61l5ZOpWvS+Ck5o4O++JbfXu+dBrFPN4M0qLUrt5HuwgZcOvzqp5jzOLCfmHSIkKBizc
/yoyZ8fLPrk4wd5ISHsIVOPBazbr+kwM8tvb5mkpeYJh+4kAqHz0A191k6jrgBEJtjm5Ra2iwTtS
Mus7piu/oSrmo4zscG5QRbpJOBWcUdLcTYtzBGwUadFUNdyxMeCpTnUSDUMm7H8ZFP5scZyBS3oW
eMP4FiCs76Wgn8M7Ogznm/PdV1tNTeXNPNhiOM7OSmcn7fzflPVsReS4idiUg/dsvywExuS6uf8D
0NIA1NoNARyB6SSmp48weWxlUaAMMaPfjnu5225S6j1ey/trra8ccW3vpVz6d6jnjfngiSkvBl4k
E0ZN/+k17pXkC93QbUAZYS9hvawurNXEpeJH94C2L0yqwDfDHi/AsXI++P9v1f/YwbDgoTZwju1R
aecyz/9hQBNJvetzAxaXGNmzojjoSqb5DgcAisyJ63e/WnxIfnIuZSmikIKuRBS70Q8uH6VaGoVe
sVpV5ETDOltxTedv9vgrU4wyoX7vkLqnl4pzotW3l9C8/uOw6+FSLVrr+f/RWN/vSDvr37HxoVeI
nzJHlSX6L7DtNp5Rv10RQItnDPxgkQbInOUnvjpq47WK3FbiYFPIu6mJP0T0ICnVotdNbSZIem0j
XsAU0sfauLBQhqb4sOOyQkQVPACg9kAUbsNzCwKGyQkMTl9iMTRqMbmsrkaCxZulqUb8qdfZtP7L
0WFQE8B0YMmAfTV+w81t1ys6AjTEhgg562EzJxgJ3//PPItNWENFt4gw68JdfwblwaoO5dCLtDOs
Jw4McYCEWdyT67aOVVrP3KLEWc0QrYt0SrCwtefy5ZutOAbXMF8jo8oTdlPd/LhDDspLvZKioCvk
sUFUNfwl3XByjipVO/anwiknktP2N9msFe03CVX4+ho0AtyJAaAau0hdTw75e2YoRRTkztDyoflj
iA0d5B9mW1i6GjobGl48zGViwfpGtIjHBDt/NltPcSCehNDlHhk0H52xFYV/29XNwz5YjvUBxSiz
tzfe478q79PS/ZScCmxzcIuo4weC3DIGu2eDRltIajULJh5v8cChFU1D3Pne3h0q0ohmfH29EMsP
zUxIMExe1GcIaomT017Nkw8+OmRdtrZqtCku180yVsA2k1BkxQf+8NZ9S3hKkEBFMYen5hQezrLB
Kf1rn6kQbnJII6/ehqdEjF4BqRXj6Qb87Oi6iki/MIdAz6Iy6WLcSGUwRcBmO+lSBj9oJjj82ZuQ
b4Q6JcxPamco99vEvMoG0ryJntytIX9aRCDPtbagBjsU48MNcmsSpIfGSbfkOq/bfzrf6ESMwpmB
eXWgsl/DeQfNw9VuIq8T3Z4miMY9d8kX6Vvh/Zewf93j5/5NoHg/jw3gF5Vww6SCm1c1ElH+G52P
2XeEiZR9I/eiWnrmWvWWlUL+25ESooNEaWg/t/cVcrpJ4DpVKBdrL5RXVciQjivmlZVEjiJ94At0
DlEKKoqddbd0HYDmpSV4vyj9t45orqWLV5qKUgQKVVko0g/JcPpkCZkuz0Z8i2r5mEA+XdkplDSn
/SFuqDzX3ohSfZ9UNbJqeUd0JAheEsrgwOA72fR9buAAuP4ztLedPs4zD3e4/AsbCXxztzywMGVP
ppfhl3WTULuowP/Dbdpvh97yN9dHbsRbN2LI6l9XF8Yf+OlIqHlYNLV5FCsdY5oM/4RzuPyYWu02
xfC3qXAKqiLLZoz1tI8/afW8FawPCvk1cT1zxRPaUF2Witm00vxXYue2cxf/ZAl1havjAO//F0+V
daY2NWOq2eUDjSy1HE9SDNuWl6tZonnvterM6pCKq84xs4IhOxHI/NbKs5FDlkMX32jBjFGCt4wi
SnGD9OalJI7yvZnNzvILLN5JuaZphzyiWBlzhtK8XgZPq3fpZO451WPJMkSERtG1/Daz4gTB+LcG
0Xwhk+Z9x+u9MvWt39IzWOGtYCLHm6v83vwDOKe+aapVtW+82xL20CnanqEZVA2cKPd2P+4PhKqn
K8n3v+0JGnJnnowNrhPlrBRPGnJytJ+Zmc0RGrM8Uwh56ftpJsot/NoVER5A53BiShHTlu0Zkpn+
CsC5PA1/lwR/K6yd/Z2SRMfYV1MeaKSFUxkpDZKH3O8ZjR1gG9bR4lsYdS86whyEblUzM5c9ulKe
mF92lOpD/Na8F/4/8oZ+xPJTmeQg115HQWwO0spy8DziH47YT4JnaDNUHNNI1DqcqhhfMfOyWuEp
/99iMC2Xchyf7yFVcUAsUPjLTD/hIh6YLkxvd14xJ745BfZxjJDnbRCvrTyJkRh5CYNoPG9cTZri
9pPQYhhz8lZIelRZNjq+FLIv4WSC1h9Q/FKWZt1DdJuz+wS7/WU4cM4uTLmpZOStxxURdE4jr1iN
CeH1t0Ba4QPL1sKFLjDOTei1sIDRG3doUe8nyWxcJH2a2nNFG8K2Brp9QTcb6xBT0L76KKlvpWDr
IN7tW3xA5vakydp/bHx6HuGUvzDPMZnf6HHcSmI8Ywu4dRf7WYq6fGARm965mCa+fI2o5nTYHQsm
q3ULF2HbNGPH1p2GFt4PNl37DDd5En0sFpoEYYc5uUS/sd/CvYqc5sykk2UxI7PIArMsdReVvWGg
jKvy+aggE57fEmbdhfzINpal/JxawX3oYyM2Xn3Yurx/xTzCfpy4t6T+/ddEBCyYYGEF4liwBB6/
dZmXsQJicjsIUtPB1pFcPrjliWbMKOxO1GE1hp1W/acfag2bhgG04w8ofw8heJuT/ulwEaJ3fIQH
lfL2V3ZnV9eu+r3uadSIJibEDHBnqUjsp0SrQKdtyDsgq8tORnxYuxPJy81UkisWdaTxQmnuQ/dF
UpCuiLD38+yWYZVzv0I2mEqckm/2k1reZpc5vjT8LTqNve2Lv/RJkqJaHUUXoOBG2KrT3ejlx1dK
QQHKz15HvTyQaHAxv8KQP+u3j1qxcgyK7E2zLECgto78yhNC4ZFm6oDvdO/rsUvohaZAKBLaiAcJ
+mClOtWPDvuXFv6HmcApF7HB4iHZsIJivFHrHNxgo7miqjj11W23g/sHBrVBsfUIHdE1clJmHURd
f/Q6Y3sV8dpF5jphf+2pARUxUZEbGnHOofi2AagmpKbTqv4si/JV8ZzKrmJqKl9/Bnz7YgvMofMw
l0c05iMNzof6oiDtkOCmJn34WwQiHQc/N+adr1J2zFDZwUAq3O2WCQZkO0bHItkMXg+rXhlXQcUq
OxB6yZjIY17NKkjX1cC33+baqkNdS5yOh99gCa+SqzHzAOw2fcN1poqgxkIbH2gbOv/KxvyYjqlC
vM1obtQq0/IqHAeuTqwpf0PE2JWGxzo7yEaVlSavF/agM8gvZOc25eyboP0gQOhwBvLdtbJYt6zC
YY2qOUveyqjxXIbSkhO97N9rLo2KF46cmyoEjzjM1q/4tz/UQM038siSaJdFtIr0Gv/em6/Bjt1q
C+yml0wqwkrCSzVv+sOfjkeV6NP9IuahjRpWJwAtFvcICDpUpaSDhkgWMbRPxDBv7QHzzOK7SW0a
B3NcRonAZmIzxP9c/0A4Y4X9co/kUgs+Ss80nIIce2FL19W9AMk38Vg5Frk59KMT1RbYTjxuPgz6
OPHZFhDUUnK24DYDqp5mZ7g3/2Wlqy1sdh8BFEmgdHCb10Sb7/4IOtlDlH5UXP7CTnNbyW2y9Op1
0A0VlkxFF1y0co6dAAnqXXIcxFjttFOL6Tt44LvvVmxzl5MTZTIDtVMCKYoklHyromZg38Ef4PyW
cN7OEQp4g4TBCQ2nqkOwjeBfDBQISekZxc+kdlhNSy0MzszBpzhwdh1fLLKmEGpInpgt7Gjb0j5k
BKOgxz4EhPiqLcfE0XeEvXWBuWRypcX122icW/++sF1Em+/KryKTCS82jn3eLJhqz0ADQDu65Aof
LQc+Hs/B8MXMi1AymAra6GfxEUBOidhQ7PXsOrJYnLqIWUwKpwK/5BviENz6KlSFr+Jp6jMy0aGT
lnqBky8g7wv33se+26OEaVckHBEUYLHhN3ZinrZgcvCaHIlmroTPhWbgUb64e9dCVNGAbnpoPCnt
lkC7yISit3fFzMrOOgIf9K6tujj7iawo9Q9fRbxkgrh1QfQ/egihQMJ7/UzCKEfx84BHAx8RFVmQ
TRoGnBcrQ5n71FH/1DjUY/3/QWm8PSuyDchu3Y8kf3frmyBml/cdIL6lsiDz+NqttBbmAIotH+t/
k91IUX4GVkh63xvcHRnDeHL+5CyZ2q/VrqsWCnbf1fgcd5WjOeeaRpQ8h3xdjvEJWFQWNaRKWgCP
rPudfA15jiWBPj2/bW2uOOqw+vNmYKdGiDpmzo4djcrl1i1VRTEYALd11CVobSwPJ7j4qLyOfUap
03Z3QgmpZ6yqgFc/Zg9uBWUYd2/JQU9DVrBewK4IY4bLzHvf9dBpEOZJMffBtsv6FRRy6PwX5RF9
XP5x8Q7fFtC1NVsAEKW5NzrqFZM6tfGU19yF8fjhrZLfPM2UMOohTFFZbGzcQhFqYk5CdgteWIGW
LFA299NgmQpoOQ1Llxa70vVnufbUiQPym2olO3zdBcjh/GOOTiyaYB3mDV+HRY2tZM3yr5gANlVb
WGj2TbKcQkeRB+Za+GQhoW/EIyAK2Gy/A+geE+af2Ky9ht7fmmyI9+wPdZZwh7rvN61D4/njwPli
tTF6Ihp/kbKxu9cRsqANyU6J1RX7rgVn+v/BfdTs0R3fj/PLQxfiFkUvZEL/fQIz1PhWXKm+AdlY
deRriYd65Pvwv2Eawe6fw1nM/cp5vAsC7ZRkY7tMmRKqgtHFVvVZWp0MJgjWNI/uHSBLsLLPBj3Z
2c4/Ck3LA7zmW98XaFiSuwF5zpSmI26tK+lAn03w/USUiG77jy0R2f3HCFZ9eO8UfeFuF5hwG2sR
aQhCWOCNnhBjFLkc38bpiVJBuPmL++ehWS+7vjN+QA5Jz9TrgZ1Er06na3sRgwo5Jqf5Sw5UePxh
POCknfiaBr1JVJSYAhqaANY1IbM+slYXIE6IwkyOaqgpk2+xggMjz7huLVcBh5Ll7y+L802IpLlM
jx9dENXca6+0YRMYCF5McQyG9kpOxoW1ZEuMnQfSNQCPV6WzEabW1DHu7fIE3AMylQ4gVHal745o
WqhNWqXxLQAx6RvIddNw9kLWuBAOxtAl46nDloWaUOog7Y1GkCm3xT+u+s7BalSqQcpX3sFD020P
Jc6o3VgmQDr2Jpu8V+FJCdhuSqzX9PVr4lk50bUKgYkMZ/EVjwOBzTjC+AgBR6TCmKYuOk3DwmOu
PD97O3E8nxb0eBtgDiDQ5iEPtgjy+imtiuFAjeEbS+vin6TpEgDDOM9BK3zWFwfZnmS3HWSyuikD
EIFzHOvAXkRI8more9DEiq/P/htgAz8+oZCAxZvtSiKRirt+zQeBCJ6u33IYrc2wQD++HcBEbURv
jd5XN7DzS6M41lF15OOCttm49LF3jeSCdBtgDg8icNUfDS3WZkEK4oUM6lOlQ5Di2HY7LLWTRpst
QrgGsoqjUy+Fwo7hq/uqfs04rSoEMEXcbs9i8v6mZyTThjGCmmSemdxlsAh6xvdqsOkXsYpmC0jd
JKFnWaA+gpqdvGXSzOaJWtVc6FZtImXuQWL2YA7SngAPdCy33GD9mGRy5LXLW3Byv8wIy0Fd/551
z19Lng2wn7aFX6q+haVVVjNbcWE64o4tlHwL4lMTMzucXq7QSV0eICZvWtpFSjG5MVzoMswutfEc
rsn1OC7z9l2qBqop5lLfLjTTmwwk5PSjTliS+urtZF6e0vHGJEEK/kKMAe5O05FnkzYFx0of+OVZ
ysV4k2mgXmOZpZjRgI+q5PvMEs/BfHlnWCJlcBBu8qt4vN5metMCWzPUKTVfwLFhkqDFnDMy+N5v
hTquLeoN6XmX3cqms7UTDgXNX2PO3fhtNMovE6nCXEaKKcXkAmPyffugW2bMClvNDlypfNeJCyhv
4eTeoL7r5HxOfMKKcQ29icU/Iba1mcxzolMfFle0YJEylhwLyZUNad7SAUUZ2XKgZA2llL4N4Lni
fvQVEGVb6Bkh9lqMnangEd7W9ELUt8GwNByaUgViFVKec+usXjVPNt0Hd7CQki5/NkTlYRSzeo8C
HvVhBS3rWuf9ddX6BBGzPQjtvAk4EyVipTCqkzn2HRWe4spIb7p7lJxhhrSE/3LrB90eUj1EWO14
48hx78i0Jkriro4rJKxBKBraMoSBVArIj4d+ySbkoaMXFYgU4Dw5Jwkszw4g7oAvQ6rlYmzCQxYR
fv7bnHhfxAG5U274bJanr/oEz8OLPOF3yf80VfLy6AREi9BIlsDRmCdLDqTfwr/XaqkVZD8tsFac
L3uTNgZilBJ+96ct6Dw9j3jJeMDf89fmf381qne9A61Qpmu6h9E1C2JZLzRsckd0wCla5TRVREUC
0raoERk9EvV/cTNRMh3lrDZeHCWCNAXz0lysUFy0r9ZAlI2OoNjihd313YMkCZswQCEXxkMs9+oT
QWPpk96qBI9kzM9dfpFZHfwvi7ibsB1bBnob8MU4mD1gPzHpfDdnitautndfG9RXgxAPOyRFu1k/
RCUk4YYEe6RBA4CLsVBckvBXsyntMlt1xGEAbYW7lA121Dd0/RTud7jN21kk7xUlBOBAZrMtR9Gu
ORL52yMV1cU28gqKVUOAiMBU3fl47tiEXj1PUQzPS1AJETxk83OKcKTFD2vUDnvnhuQLOawebnK9
dkIciBW455hhev3Q1AYISfnSYUgHMlIjWBr7EF7DGK/7wMFIhFlI1JP5sJETJ1L47RSI3TypeDYT
CQ3q1PWMtLWtWxeLFK1qRud9/Nw1SUhfZLyOJ4qMgxLGLSnhc0BYL0lsifjzSsPIifcjvcsQ/GwX
vob29kBLAsAriXB2tNQ67bfVoyv4RLBF5LSutZUZBNTKWuHMwrjq75oaFWWD/8zbKbR9t8rtb7Df
+oXHLTFifpZuYU1dW43LgLWrigBLbpVL129e5aBZ6vF2YEIRDNuc1+wKRaeRA1HiGnX/HMS4aYED
yfIVq8arLo0+if26RbI8FLKM//rTJ2h3sFUOqwIF+0GGFIoHGID8+LcaV0rdzwnP6FZZm6P6kTlZ
iTd64qQAywW0ejYG8td+nmLGJ1zhXIRZepQD74PHX96q4Y42otkU0F3XZf3M0HdDd8yEy+ELr0Xr
RlCuPGB/4rDxWIQE7o0lAj2uMn15ZCCKoeQFxaVWnEJgXPn6pQNJw5ku2wPsygaFD0Zgt6qhOZfi
c+fZnzlIaoSW94YDy49//Ogw9umZsogpVNmFEDR+Wx/Cp+6UqlrPQ85O3V6Ss+BgUOy46znLI03M
2UKZxGfR3mty4HtaYGLSKtDGal4ZbpAJHBA3eNB6GEMCbYsJr2w8hzljjvnc8y/IXaWNGyObxq+H
nes5KBCtUc+E5piz9s9U3119FYStzd65tZ4fzfrtfU6K4DY2hA0MA0M8c8rFmeYnjq90lZV42uv+
PvdsQ1TzRvEv4nGRM4ujs6R9TaIebmoi9lYuKfHC3TXAmoipb7RFeOhbnJej0FanpmYkARh7kvXI
K4G7n6x/dFgiTIZMqsWzONJpBlvLEARS5B//XfrpeLeUQCejftj2w4O6QG304QAoL6IFrw7LGRF1
iuhjsSYez1ERu3w8GdWmLTbv4zYP0DUUgBBPKhLO8+AeH84CJfqoTJHX8Jg+ARlDeD/I/ztqIJ3O
R+YJ8jb5ZNAfTzI0dQvHgrgy5jO0DbqvIwZcjGykEdQ6f/zXR6WppBsMQij36lLCAnVbrSvMIzbL
Ii4HQLlyxU19p7E3+pTGLyRGnpLkR+YzLMSIdLYeHlyax3ug8hez8yqbfFfSJQQuA5r8iHvpzUmQ
vzvEVFjpyA4sXpaMmUXFidjFpHrx0OkAstw2XybH0Verjw9p25lN0gw0uCLBpYW6Gvyc69nTWhlE
aW7Fi4h69JxvVk48JHdyq4rW7L6FGr+03zS4Sf9uv0QAE6jLNEcjf32Jvf7sbuHdTLgu7p81Zm4T
3aYvR3jc3anTe3lMZJSoVcrXaIPaDfs5qPxIZ0AdwkzFfYJmgcrKtfIei2zf7xGFuCLm492ddRKO
ecnUJTQj8sLeAaQT6EAzlZtxdDuoAzg5CggQ4dLc5L0tQQB3cpllkXURRPTtt0a53z5+OoGGEU67
M8wPSx+8ulA5bpkE23DXHocUb3XDt43q+VAK99XDzzP4b+9ie4o92oMFPdBYdAIYj3zgEXQMuoYw
Wwn2X6FLMaqKgz6yJhDH9gBfShagEBd/7lFS3Ne4FWSxTmDNPiJWM9oDaoHE6RtQk3r+AFltn7XI
jbjLTCHIM0ME61kGMcCld8MEStWQujGqbMaGDP8u9i3jrepIKzj74Jt+I2QOIIDfhbWCG/WbSkRJ
NwoR4ib7ZvpL8DxQ3Y433lr9Q23BryjWltN8qo4N4CrkZHV2iBQFz0FV7rFqHGeItsfYM2721OCy
lGtWU7mVZIJVYzxYDmeJMZ4hs+FrRd2ABFlpayu3FRMo2CfmhmSVhIvDiNtkBfZnnCOZ2qn3o1jg
JFYH3ei5OeMJm3P3Xrbw4aSNYn7bnny/a2uaF9qQr8T8oJlB0aKojNNgLlaztaH1h1PXd7yW1vqX
TWEwpG84yFm0dNsSAJxyKUfh6Xzz2qT/cdWhLloYhoQ9DolqW9jT05Tdy/J5qv/BbKdCw/tEZRYs
krHYMVuu++WrLFYmzl4/vMV6fIgk/ngkT7+Pu7FDr+lBINl++hep+SqCvzTN4eLN02llhd1Crwmz
kbLd0wBCgiHSl0x7cq/olLHbtgHFqltEMQzSK+qrFbODgEXZu7VF1e+bJNOYr5kpQavMqKl+c5BW
PJwWmtjMPtUqz0iMV8hONJCDrrD/h2wOQK4awDWSA6fCKFuOgtCS8KG0EWh0KzfOINkYOMQHAxfI
UeN6j4LmOw/LlfMtpLvuRKX5KG58efUNNv00cJzPDE320GxIWeRi0bNKEhotncPARFnEz8nC10T3
TJsGawulKLA0v6KaOG92FRS5bClsW6qdjPCEhVaOXNtvqRA4Zx96Hzma+WLOwWHawAyj1gsEBD8D
hyQ+hY43OPz3MI61jahSJrt4EsztOBdt7hxv61vB49WiHGmX6VthaChpLvQkJzqbInNmvXKo88RY
2J2+gpMRaemvm8WswsNYL4+dPJNfmpZ8eAJ3MiVYjgGhCzLjHxk1QZcuURpyq/zX+s4pxJwB1QCg
s2fU2QFEGMfkCUzCXiDoQVBbDXQq4PblLbxf8RM1LK2AnuqEqZd+z+OwW2qLxOit6bhZQJ8t6bIi
GtQ1xxEY1E6f6UcFS47hzcwwimlQrHam3LkOypml3N+Mo7gT/QszgE8pwyVtX0jKSMIb9mwlw+ca
LwEcbiEKy5aoKiTH+snOoMLJQZmlxrDCf7VxsIEUvhNN/EMCpH2mR9xF4rnOwN4ata1tI/IHWfUj
RLbmCI8jBxr0GkWfSBKaV31flnO4tGusbMgSIoA2F6RaIzu9v82EvU201eFCUHzA9uFJEjuUS4r0
Q0yJ4AO4JuCGGDTvviAq6SzOOzBcIqnketB1++YCI3LfZ0h7J05ykrCEasGD0mVEJEnO37HXYlFt
DkGAU0mWSQ7GcHv4fjSL/gWdT84kZ5wET9YeB7eDOyDj+FmzBCUoM9jGlxJZ1wuA8p7470omgg8M
sVXP19RUExKrNBspjd4ikBtApMtGImisZjkgJQA/vof/ntPL9dOFzC5AKCMjfGDKcmBvYDKbgQ5O
Tuz95EL4zaOEz4OEI52y46H5GBIV+vlRTB2YAUjqfNWvU0C0gCcFv6F5Fgq/PS4jFdw6Nx3uUxWp
VQGyq2+ylaCZcnXfbLVPozOyBQ0CdxogKQ4z1DN+7LPpg/vI0ZqKCQ0bf5yMhDhi3+pLC9rR4E3+
KHWwpC/pdgWKlDh9WbWa/sNZgZeb3AgJRrX2I/JM+jdPLxEVPGk9SxFp7fy8ax96Z7gAUG4x6LOy
nKG0HK7clWhr3myR/db6ov7ZUt/+9dDkglSZauLkmmdND5vr4u+SBzmf2+y9LLtiL11EtqaJEc35
Y8UAir739dH982kbvQVSMXzqjagaxWIeSejJA/qjSMupMKiFMZ+xv20rzjFLUvc9BZIeJiBBqczF
oKJmmvi6pB0K7eb5PHRen227qu7xRSgD0JXALLAeKdkfY5E83Ioole3VtQyxsIxivzhLXKeqMeEF
HMvOC4C3i3AKTX4XfwXKgo6vrKL7LWUHjsjJlzqykfg1TjAB6MY6H4Z9y97fCKfJnUWfAHTlmpsr
GPKIpSJLRe6oHD6yYG0x+V748oU7Ful4aJ6dvQTzvnWK/v3OORYdCiW/wdqM9F4S+/GcaDB640DQ
F34kjlDLQ5bS7FowNNjm4Aw13lPkAqPViaywxCZ4ruhgjltwUUnK1OZ2Vsi6GFSuh+2XjxfesZvd
OC5dxggV7K9wBf3isHQT4emHDOOeB4ok/kMeNFR39hxx16h9fttG1XlZ5Lv7I7kLYnLc5YbjCrHR
QoDPC41raK2NBiuRUoZxLhGl3LIEyu0ojdSYcLiSkiYT0dUVRcRsP3BWH/04Q3YKq+NdGqXjHoT2
ZH+uKu1ItKJExaBkdlH+A/z9xXx/X06q7lzyeUkD+gYFgseD9in51sc8xXB/7ydcRQdTauQ2xaX2
H77OikqNF7MTNfXsYFOwVdGJ9irrGQ3zVaTvvopxJ9BW3QXWqazWhhhdfaPysDHlATATY+sgjVin
dAJQ+2e+raiAoWwdpySvz8UgdUP3BjkWakbJVd4iiS3knzC0ZXA/iUlfXFnIypAZf+Q3Ryk6yFD4
6uDMwDbhUjGEBccdBSctFRaTLnsfzo/2d4gqVBStfshFMfwH1Gsn37I+HpE4RgxIL3iN06zHvJOI
pp+KIfuLfZ4ASAdlZUEMETg5OVpVT9d/s6bFWuUibZChmeq9bnnMw6vhqZOmnAajfJMo9W7zA5kk
XD2c8RPrCa3Z6LqHYafVU7dz/RXTgPTRGiPZxSxlkibxNxRfuPyeX6QZvp6ZTqXzYvEedQ5s8ZKe
7E7ltxbzvBeDeOTbPXBtDhzWzZ/QpFZxTPP8AaqgLIQZeFWfrbdePMGDIeTSE639xlnc+0+JLak3
Wf1rpm0czZzDyxlQYDDlI/frCsmY+bQlfaiCrAgEuWtgTUJFhxQXimk7vRId0hR0CD6qf8wq3xRK
+RE2L4BkRo3SrWDpFx7YR/Wq6WroAnuTAQCSijQL9C7kmQ0oT2NUS9XftJ3Dk//S6ODAawvADUCE
/+cGB1p337/eWbCZqwOzE81/hbr3hp9x3F3s2a+3dH5QOJN1l+RSo4JP+EbP6xRHyJC+oz4BbYSZ
D3815OMFhKWYOTdakc6QXb7pa4PBLaubkyysQjW3Xq+Wkapk5cirqsY3FrBzTvXUxHEPEPoAOsFa
i0SRWVSwiNtB17sFraXFadKRLiYwgBkWN3UOWi19iHqjjuxqG209L/UhOHB0vxTYeRn9rlKhYd51
urz6S99Srdae2DO0mnCzx74wlb/0dV5AU70uyxLMQn77Qo86w4rb6vC0YrII7sKI7FxiSTXJlXNj
vIe80LVYI2BK63BDuR23yAhqQAvRwtYvEXhJHfQVK6GNM1kltZ77nRB/epu1BTlZ2+r5SPlo7nRw
XJOKhczPCM0SuQ+jAPH0Y8mntV9GHRHyKMQWJC1mCf7O/QUHWy/Wwq5m/3q06zI0JQEaWhVbVhan
AAUgx0LO8dJBxs3KRMqSq/tTH1jJzjEM32oVUygXjhsMRAa4H6YTIUD6JKr01TqW2UD/QXBQzpyx
9vJrSBdZNbcP55bkcZLsJDs3MymVtv2Ka/myBl9XLtyOGF6Hxp7r9WMg1A+eHxS6pqbzrieaEVis
jNqgFSUTUscCyBf6sdvpF6HXF7zp7UxXcADeVoxkOb2fbw9m8/3FcX++CcT/eOaX2Ex/cB/qTqxq
S33REQveDR2KDJNyBN7yeUQ6sDHO5BSsdeXqhMbhjowRYm73s6HqlBdCJcXLXmWFCkF66GCMPvl/
aNFtBgDPzYZ7NB9hVKB7UTnmXGvNQrNnozBhA1M8aR9aERTqj5xWW3a2u030uwrs8LEwGsw0rpaR
aHsZd8GDp8ocHqBy/w6dF98DW8KJQ9UjSheNbmt53N20ITGli1sAMv8N1PleRNhV+zNklNBD2RSw
Z2HLPooIx3/3v+oGYmGjflt+Z0VSq1rrzAkS5IO3BLz+1pnvQiFBIawQN67E6Y6vJtNYRxaPhMAB
3BUqg61o8ixrXMJYzAT8cLxEzHos2Ri1nSwfltKWFEX/PnK2MFezK2DGAna9DMJJOW51aKn3pU7D
Vlsj1Vr/zfHf9cCctCMWapM33Rrhm9s7Tyi1mH+Ub+/v45BrlsQbvXrX/A8gbNxRrCU+tmfThCLF
uUAlEgyFyF1SD5XKesQ/VvNt6mg15Ok/8jpsw2nAclI9F5UFb9ScN73YpESCoHADVZAhv96qdAOW
DbmdPGf49GB7xccd0nxgEsd/6NGfwzDSFOJ0SOcyf8M/L9Gdp4pKsaYOnx05QBmuk+qODifxDdk0
Q+lvtN5eAiVUfmBpjiZJJ4TF2lFBtDNBMJELHjvTt73rkmgtMDTnkkIDMapbSIgWzZlZ0UN/ECRn
XevbsYVu/IolxNycKC8nPSnj6Xv8SpHZHLz8xYAsWFwPfhoyoJco1rqH7RKZoJPF6F9ZzdQSNquT
H+gkEj0Nw9VNbdiUOyuCG5CkjhQ6ixueEEB45r2gZfsiwAT838yHNvZLO+237Pnzc6KZyTxSHlxy
E32K3TkA+YUsTHX04ZbJvztz0wDRLj4fUR/S7YJBtiL3DDVhU+LOjEMWqWfiwDASDHXvFYiBXmE3
zz0UYt/RwkgJOmn6eIgVnkA5QIr73P8AhKesRHKNtzM3ItS0YcxTAhEtrPCwXS7tV1VvYYiTYrmY
gHoHdoRTXv4GPLtQX8FXURbwfwKR8EvTuI2/YBAOWUTds/ROefddVpqvma4MdNI/pWiu0DfR6+CH
r3qf83M5qFm7H+l2aTqLT1/jy2jMnG+Nu8WApe3ywCGQ7dSLiC0CsRWvwWSauq7B5Yu8H/WdJEYA
bhGPR9LUFm9Hf/0hR/fhZRp55P4h5z9a5wT14AAuQEwkrw8PDU948q2HnhQsR80HZBpu7Gn/GJ3H
tKXOHlCaSE1NwUWnc7pP7g5fmjK4fs8nYVzc5LnXaeaN/AUdFcsScGAnCwPaDsrQB+K2LJwzFsiI
Yxz+LFvJZsATMM0TgKrZ8s/KlkiOCbsKSjBJC2gg+aBbpI3MZCPV17M0+0ki0rwDR/4941JpiuV5
klrEIY1sV+klZnPffZPsjI/ma11Sp1L+MwcY3H2CCy/XB0qaYa0h8AN/fDzzVgApecX+hjogNLtN
X+kLyX2+E+8w2F5rc6FRJl1FdwQH+/wJ3OvbaJIqWQf1OeDsbbNFmhsGj7xcreNO0zhFxXb1dH1W
bOoe0M9e8aDTIiasFq/uxRjON/xWTOJ218XSk1ssmphCiI6Gzfhk4KjBzVrZ6TWOTgr39nWusS/U
bFSwLwcWt5WVZyEmHPyrz9bVCMb0MDE8vn0sRQDyumHlBJvQ8meAiIZiYOoNcPJjLrn89jjNoBdp
lsfpfv63Jeg43HhGU/yY+m56RYPXADnphq8uD3PLqqUJ9Azq579nEL55YdLEp7hV26YoJbg4wnah
jyfcgr+IaK+OFZqa5DsNqYHtfcDTZsN93M0z00o82w5/g8JDTb7pGxp0jxHeK2mLkTXinqiMjPt2
Ca8ArSHZ7JYeh5v1/BZBHDzPp2xBP0hNnHXK6Eg7YJbdaiY4wdtcDx+GlDbAYfj3KaZlMGARQiVa
9NBqbgUqQjdlHUQj7ikTnwLvR9sFRsJv496kMrKQgQSKFwdvsgI1/aNsS656Vfn4hfR4zRDkmIa+
gLsK2DiYPmi84tXPj7NfnmqOBXstEW5nXztUbxRWVVLEv6NDOx2endPcyyJzxxymYhjdDV4cRqVN
b7EMV0zztHs9O67y4N690H1neFUkLGklp3I6qK0ptRlJFBQ2Epsfrc6MmjUjdmFilrrkgKV+8EPg
R8G8zeFCHwFG3W9B8Vmg9WiquN6G0rLzBZ1yAMi1yWDfmDNEiPLb5+X6/lk7LRf99kpn8jq0D8FX
5Z7csesKp8za9lwl2s3Lb2MlRbv9ipqT/XDzf+x/ao74sWSCtCvQT7zfp4sUk4SOPh7pXHRVZ7LV
34ndV/SF9UHl9FwifNqtkcZN8YAAAo2XgbmM8fLLTKutpNaVCr0Mw/dI+xRPiVXw8JfUTAGBaGdL
qMGUx3mdL9WdF7lX8XVVGBBbAFx0UHADZqFTjKcnH9i2cSUNGhFNz5xqWMd+G9V+ZuuSmvY/jV/4
e9Z/Qw65wsvJly+71bi4AXzsNjpXcpfMKHAoXDcUd+xLjSGpKViNiOupOtvWqhGpk8DlHfEFJdP+
2PidSklDfRi0rFOLEqQPr3J43ZGtF3sPd4OQM4kRYvxslG2V70oEd5oE7VgakuZ14E5iYruMNCKZ
Y/bXaxRuRFu4eHHkhBEzbB+TNlDRJa6qP/IT+ZjXu+u7Gi2Z57kke0gvDwxRXJvdDARjvfkrh7Qo
g91jbCo9+x9OSex9asTQLlaCNoVXla9pdN5OVysjzXMoI0aOxBQ6YSRUbuoSMQjP3b5VY+thnAx1
hEC9A4FQ1QqykH1gY7ts5MeFqqGxRmTTbx+WY9xJy6yC5tFEgS2JHGDRVpN02SqgcsNLp37aKhNQ
/5aJeCKCV6k2FhWNvnuAIE794EgBRGT2smkkOZAgmAmEbPWvoVslsNP8KIm+D+vXESiHm+C8EJ1k
9gqHD/V/n29ywi2w/evdSEF67Y1HaPaumdhPP1jvxnHRBAiwo3r8BAIMCgmDQEWsiUSXfZIUXxHT
zWGs4+bw0Hik1ObVBm4ePuDZ6AMUTAGEVjdx6UOvvDIr5jafCxQU0o+dc1OqwX5AB0XDHQYWTmN1
C02ZfS6mpFK/QAkNJOJFhh7bHXW4sPjs59cr7SVjLV+EsRPDdo7CFhoQ3KRyLIk6sWfChFnWIjmw
+GkA10HQqigDNMUgD3StRnW7Yj7t9a44qGsEGPs+uf4d8eGHv6FGqj1YjeUrSEl3qN0aseVweMd+
19ovNVpFHeupnORMnqmyIuA1n5j/YbDqGchRNKBJ+hyPjxYuyCeC7zOuI46vNaPGpUO8fse0JUxV
0aNYb7pmjEExj8Pj1W+FM+1305FbEf+gOdSrZWfkfMQlkw5gsouTceDem8WNre0BsfwfoeTm0xVK
Bgy/hEfF5Y4BGVxKgN8F7+ZMbKFD4l3iRUCtdvJbLoIgd8v2vvG91f6XwQZgmlK4eQtkJ2dXSG82
5jqnThhuEkiQd9n8m7ay6JSUUOxUTy/Vn09MZVikQ3jENkvy6sr3pZrFqVAj4JnrcNKETqxVLzJ5
LZFaFMJY0D7xQDFJHFzgy+L0LBnWUVOl6BM9YdUpcVw/uMX7EUgZ6Z/35EVcJqDRJHaLq8iJ34oj
fM/NIMn5Y/PN9Y0lPRmKApwsD5L+NHTuF5+8ylR4QxSufhiVanD5QEcBaDtJQpyVwmVljRpZ8Mwz
v8y5K9C1dLrkrNOU0l8teaGpzrXlPsuRBH6Du5nCxeYOQjXUBWgGonPRlJbVE+MNSkPFJOGCjG4V
Ud0bw4Q5OvKo+x4LaQLL/Te+s/UUlswdOyRtJTNYZzZ+ZhX/9AQyTkRfz4v7YYob3pGDsLiJ+zJD
SKTuOjza8q6WCKtFipPhEny8ZGAJGnKfVByP64wCSBDLC66r3WqUsqNd5WmMrosHP1wcomjofUvb
4aOYT6p5+9Xs5LaY8yfF5X8PgxQMyuqGiZ87YWr/ihVzbvq8f/Xst1w484SFTpdMMxPhCyJtCsWj
Jak3Wt4BLWRkbFnECDRyAV3A1/ym9cmYfMlz4lac4UyVejmjjQl5Ekwt/rw5EG0gzZaqs7NhfSSQ
5gudrP1yo+xwbLwJhjLt3IAkNBKYVUlbl3vcGEmoAtdJlF6Fek/dgQDqPXQHVvgGTYcDmZgLFi8H
z0lZXl+o5k162j8UEL1HvhrdylVLvO91TafreJp/8jnzz+dV4xJOz/ewDkbkZg7q8omL1COam3mu
SJCzbDGnL5ylQ+g31corc4iqKlVpQqeo1Q9qhGx4vg1FoSOYHnpyVPqxwARMCytq+hbogXUhAR4n
D8kwVSbc69ARkYssqW7Vli0zgSwi/sBLHOSs68vtbf2xpoYsuOE8SDQMXa6qqdeJte5aEJtmjCW5
H4hyOcIs5Mg9UNejEd+pJLBLzULPj/61VCEITA69/R1lXh4J7SV0TtW1G6bME1SQU7xZ/rzpEKs2
icjiKKwyHCsnzhpChBgcdCHNXqw86QTmBfaMED+yJXYmVSu/9HAjYRXJoMOz4hc9XSE/rJCanysc
K57tTmAiIFp5w4hYJPW5qHtMoHxVO5oMWUJ7f3Ft414LJpf+pWJIf97SbAMRIc/UxR5Y0BqvoAxe
CEJgoot0SC5KpMWq9zIELh/42fFwwPvw7OlD6ShJVmzrvhhmZvjWxsU6DRZzrTqbanEG3bOE//E9
LY9+IXBSfolhSGhAR0ix1QOMV0RqfJ69YS58fon9bkoZP2yPrsEnZn6uGjHkhm3NKFk7Fw3jUOvh
a4ZYojm2EqRsaqerSCihfX1UH1J1+7vp+PNp0HmX1rYpvlS4IYjXeHXa7rZ6x9SiyfvdVdaQkVKw
ZAvbmj6rrkKSRDnCcmUppq2zIhp9lj9bwy4KsceEaT1IHctkbmTX8lTsmQht64ts31eF6yMHm/NX
HQlVlBc22RiGYO7SIfsdSZMus6r74Z7B/LexGeQggzcAQMPIxlW8zBVUud2KTKiYQrgtdJddwS1k
55Eaxb6ndtxV8ToBbgAlOuxITsMElm048CyIA+wXRUE1DtTvptVO7Jfl2GGAkW1YkAsfSlO1sGmw
FIceu37U8ZARZvTrmhMELaCKEPwmdFryzcMhJpe178bXKglEwICAwrGsQstaz1qtglh61VDcpk7w
b5nILStUACnosQ5wOsdgYs6FqEPLRTgYpguOfqhlljd99s29SQIvyBObjRURMIsslkoLvsmb8s7L
OLF2bu+Rxbn38mSd7MYKJ87VFa8IiIi2JFf8KYRCgX9VWIjuiKWlaR2p5TuZPEyrKHxQpjqX5SHE
Kr9huzSMorfy90L7M2Wr0LoM84yfpp2lnWT+Xfjfm5SQa95/pEKfa0HV4ZetbsYLvjI5L/xEKybJ
PTTzuwOPobmRgw4tylwos9VIUB+jRyCW8P3hY0liFFYbZjPA0kGR8hS51YpZLG37kQA9PT1SknXD
3P6t3zSITvCWIFoxZMUuUdK3skdEcFp77grvG5v9R8UfDzBahREd1zJCqVYsrpbzT7lJsomVLzNk
d5xd61889fBOpH+J64eQo88vX7t0Hu2KustJalaSdm1FO6cnuO390oMPl8pChjPEEB8h40xLKwg2
YJEj1pAeCfIW5RZOgnamZYLJtVYEn6NgRJPA7OgVSs6I6Y8GbvIGe4TaWaqxpG6vaSW7IGnBRDaw
ohQPNIjrbKj7f8rW6fe3XYJ6K+JiPPBSYLQR82PCA3FWBifOC2j8/dqdnfuPHaKje4aFgG6MdWpS
/76IiWJGuaVcuLzyesFeYoA5K9YsCVRYPqmAL5LzoEPXzJtxiXxpXTakcqk3RxSt0AbnHS8DqX+F
nrkE/f7oXpElBSQAib9N5M8dA0/rDOKmYWbCKmt1CtVeN8LRwGMKI7ZkRAU0yorozrMT6leeV6Aq
PO35WJHnPz5g2Wpp6TVMf2YP5fRJkXJPF9Gu5WY17hvIYS6Qft5Zy32leNFTG2m532dnOZcB3HHL
z93NCbEMm/gV6UJbtuqQPrufB97ZydQUvgGSwiHE+h6BfzOQ53WoXpJt8G5lbD8L4nU/+PlFWC0t
LWuHqbwrPQyUQnH8d4xpuFk5OIEF2JbELexs44ilGPyOruRSgvRBDUd35W125n6wAKzGfqRus5Zs
td9tbfJj5SGCSVfdQorBaL7POMg3jqTgW6n3+FbN1cJTNQJE0RmRqbPDkvnXLDbvGQHvcz+qAHQ1
agW//FM6o6CVA8EuUiOm7LO2ZMw8pN2els6hyXH9NFSZd00b8PifiQPKYLrxGq2pyjFwyF+Jm0dA
aS4kxuBfUqbGD32FF5dcC9UI3fRI96Ow8uF1x7GHmenYzH7xBhnXSJeKBKSscBsXAAJnmeGaXwVG
ICPgCHvCJBGnRPGtV31/Mhv0VZIikkeS2Lfp05SWkvvCPUR8TlCM8irOtOCZ5S58m9+2Ths3w/vv
MSDYlD0BoEtDcbh54M7tZdaP1NKNpUQxOaBd4SWj4FdoD4HjW7slOtyNTftS8LhF00TlmKwZ2P+D
3r/LuN9EiGTmhvxWuWzr0KZofB7cX9ndD7X1Ta4F1MlPAUtQTuich5K3jjp9jP8HnxIb3Hurdqq1
KJxqKIPfziKRZAsed8TbDM6jOvwjrDBpKmn3ACtr9FaMtX6d4uo+cbW+yRsuhi0GK5jdQXnaf8Bd
dRcII/V3wtZigdUXf47bmrOq85CTjMioBosrqfz1UrbiAmI11yvJo3+jqNGzfx6iB5oJ0rc5N2G+
Aqow8X6bVpkqLNPPyMpwHpnrAi95Fg/35Zq8YrRAWjpkfUqXeSIuJrB5hVCYwpGcJF9OJIRYlk5z
Db6zRX9PkyBmi43SiNbXH7UvuxkEx6Fy1t+2+sOqOYrIan/ihF8pSGAeE2BdkmGecZrFJqN12x45
Tiz0m6DU7L71xz5ZyKM2yq1KgC4TCL4kNkz8tcFXDEaxT5cBFPKXtUIOA5g5AbqJmJjWWVJiOqj5
0N2cCvRa2mW2ol42+ggaDwK+JabxgjPR8KB+MEF4OEqiGQ5747C8WRU0tvhte/5nZCvDiYwahh0M
P3cjcZML0v2i/jsW85j22F2MfG5nq97QxcVGXfYlQA9doB+wKR4CBwhb+MQVWN/AopuAgiHySXVV
yI7R7bwOnHoOEnMwVjnKqvJ6svWFkKMRiJpMArKF80iG60rx56v1eK+iI5cKmHxIXJZ9oYYxg4ME
EJVHkXOENrfIoB6tNSOwhCUmI6TWIYDfeXqn9SphQ3OK0VYrNvHprpyMXUzqkMYWe1uhII2Zgbw+
Wdk/8p7dN8e69/Zq9GtcL4qCyX0Rcr+cUbUgCMcCk9g667OH4kDUjz9Xu4mP8EHKUBpYK3Hu9orj
/q1LKsNsrsjjKOm0nEjz3ZTm+k7+EvJ6U4T4ahvVIIdSxcJ9yIiyCrYxfKGR6PQBy+pGDnc2Ltr4
WEi66CCq9+djABD8/NSkj1BU+TFbzJHRTAhlwTTQjtdstO7Dsqjd6aDsrbcbcczdMBCwuD94Pb8/
H7/HjlXrdelGiyKpDIUhhm9C3nVrvM3nvsy837CUNWj1kUkMOX22erDJXO3t5psMf6IEOJg/2ULx
rQk0eEeiebBWPA5m+QJe+SLTHDz4QU3XtiycG60abAXwI3CDFoboiCA3opZVsd9r9/CyXkV+zTC6
+oi7+m4guVnJGdJbmzpJOE1mW7wUHujm1q/T+klCsbltzW6K4NMxkDqgdbR2HvU/ypJrM+VDBuvL
2bylY5Sq0YNjeLxj+A11nRTepk9Ys+LfIOp/Qo/rUzcjaecZxEgp/u1uq4laZelM3jM/IL8/5mOa
kP0GTGEog25HwNcWE9aVnj/TmCdRhISFxeg1J0f0JYTPxtxv/ngDY1elLp84yFg0Ip4gvKKf37bm
5YX9W83JRM7ST9+mUhk8zDFg1LzK4XDEEb76TLiOA1nYdTzJjyTspLObLml0BJSSRdm+PFMBDkLJ
C9g3UoFvwa/T/nJ79XOc6H/rqn1HZCN3LwSRdpas1bpShZAnxkR4DEQqVVqcQQkoky82/xD1Igb9
jlNTVBE84h3r4VXlCkMDmmTNUlBNYLFOKgtIKqCzkq7AilEMjDBcYXInsTcyDJm96MKTWIIHovAy
5dBzqjl9w5BQHhWsz4vdRAqaFrAG+bz5mTiHEGJgL6QU/A7hnNWFjrbmQMy6lrayv+4tto6KMhqV
i4KL/mLK47WwndMjQQm/2UBDCChmTFG613126ifNyLvTDjewQD8BYXt2FN834x2blbT/Ac3E+Bkk
/o8/KZ6RgCoccxyF8j3jslEWQO56qm6dIOn47lGMhLVE7jyMvQVu2mIZqiQBHjtP6Bn31URCiEjQ
dEKWUPfmElrE5SGovLP1uADxz0Si8OGmReaz6A4KR/Dz61EAFtee5sU7QSxf4djXf9pICQvN4SR9
O8ux/EbC2kx4uAqA7UBlq5o7KER+9YTT0xJ/g70tzNzROcu0kCbz79JBJhlV2M+6jLeoctRSDzrD
WeL1EmA3CDZ75AnUb1oCr614lCwMEfajH8/+3p5KEWGYY7++/vZYJ/izC1HQAyfNCG9je57qbmdc
SbOOMK0T+EbyDVa+mCl5RsPWqqLiQx9fhfOjc06KQ+uzekZZ3J97JevgxZ5ek6YXAE/Z/JRjyXMI
jh+gIpfO+NAEkvU+hg8XwZcEShXrkqkr3iJ/eY2ak3ODhCZ2r8TLeGubYgEyKrj1rRqVJr1fjioX
9TbgcgKodgQ80nRdz836q1Rdw+4Pq5KhwlwP16KGPwjD0OmAUxKFUPwwT7J9HnCg0vXDnmqSOhDK
FSez7NRVwqK2MFL6oJSpJiDshGa3vYb4n4Z3wYXJuJG5KUWEHyuILJtHIwVl3AoINbcyUpYsX/gX
2+vJ5wrYchtzbefC/Bwb/cr4LxTzj71SgbHyv2Qj9uq3BCBp4BcXc3bGBcfKidDretD+o+JitAn2
jlO63KLj7CueH4s5MCPC5H3UkGTQBuUT2mW32//EwoMuvp690mHgMubGtxK5LjQw2uuTPKv7IKlR
6pMJS4s+DCsVJe3/jN+jUPmt9GrA+EFN0Qab6NPPwuLVy9b7D31B0ClxgrTi9/1nVxbtlr6E4+Cm
EBqM2lsGQlJYVjVRhgnG8EarGnRW2b00lvuzpWvST1rYjWm0MycIg08K+8ccgrZfOr2lF76fOBOv
RHdtXcYBhMSyIWLnna+csUMbKzv1gQmzsrjIBjGWwOq4HnYPwA6xMGx3TLpYeeqJv9ddUgU3PwKh
/lrMKpmyoWaUf+DHFlf4+A6H7UycSgZt0yxfjfkawx34dCQPjse5a3fiCDt9+RNdmUcxxvq7QoAh
HWSU6AGbFW8jikItWq0tfy74WdT2heSaAKQI8MQe8/NOcdkwGF/uy2vk2y85+byvh8OSPYV5NAxz
NdDc/cEs+mpbeVbI8tNS8vFh0/4mtUIP3lDfvZA1nHd0M0wDBRkcBvWEPNmBcMkg4IW0steqSYOi
PERykCzRkF62jW1YPzJbztmYO/eZyg+j/ngdERfSmYjpXafFidun55o7jLz9SRj6S7ZuvZBMp9lN
DZAXFrT1IiAmKSnz9uaaLxyW5/w+xHZDTYnv2Xt4lrC4N5zeLb6MQt2aOzkRkPfcddWcJ/t94Eah
TcwGewgIio2i1E1yT/sfWfFzJAgqunjc5e/CeB0mw7hBCGSG990tBixzYCTPe0btCeeQBAzn1OMB
YDQLgUeUkKpgJ0ut1L+KEZtmtrZcUg3JubTvqJaxjqhtIQDqWJCFbWBQJbRHFoC96HzzzyQ3QkuD
gLaVh3fz5kX5P3rcCnshu3EMQQ9MBZxqExDTYnXRXqazTG6r1ukV3h+HDjQbxIhyNvnzuQ7RjLO9
hN47CqbczgzKDgJLeATJLnm6F8cnkHx3P8GfUfTSoeuXMDRyl+p1Xa2ooFRUw/r/b9bGTePk/cuy
BS/Xi2YolZ5Ykz/rD/VHaKDaKXdTQrWTUZDnNNDuNtsduklaZF9tqzANXiMsce4qYU0vfTUMXWdq
E78LPpht3J02WkvOmsNHNy+yZMV4lIYTTimMkv+Z9jtktfkAf/7gf5P4ousm0FpM2QGfKCmKS5I/
PIvhuuSU9RWwVbZZmo53en3+uAsv6GLWqKEyTcUVO+3QHijgiqmDbdY0cdu5xKnlvjVMbN3l3GJZ
7ooecnJxywjcH6OOAtfiwzQ1znv6VOr/HXmcyxp6aZTQuR4rGEMawQqulTfv6bB1wPWFtSLcJOGH
UZd+nukdfqGcJphyNmIemCi6QcsrSdDWGsM0V7Rjs2aRCqZmA/fnNZ32YI+suQWd3Dt7Khra26m7
0ZHe+CQcOrGu+ExLLj29wr58Fpw225/2Z8HavVxmDMrYODjowYlWoVg8PE3z24d/OBJ1dV02MFAg
tDeI5qh8NTXhGB4vaC6H0cBYKYG+xdGVMO2yX6wz+vEAY9OoZx934dGchn3T2LGAQCxSde0HSJCO
dxZ/S3WhrcGjy1XJNOrxj9qJxnoDjZMkQkt+Jx/IF7mUiWDDym6Pz4erEsL4ZYZOVvk79GGxmhj5
/I1OQu5DoAADAyScoIsZT0RzzKUoX2EVPyA9iN52AM0ndqcqIpoICMr66eizXVIvpeNDx3qYreMk
GdHYFsKRQ0MK/UqymYBX9clNzwJGUXVbWG+3fj7Arxq6HBBiVQNe9HkUOi4uRQphhgiwFeO7VGWd
gmSMcx++CY2jkouasq1CQjDIv0To2ucwQnWnYLVRxelc73ej7QuCv2YlMeC6EYbWC3vTxcXsPzmD
1lHQpqnv/7I5b7ZWX/D+WNlxbtl6fWggmthU+19HkQbOtS/CVFVkVP1Ll4RKEn6F07tuMUUDf2Xw
603+fBqAGS7+vt/PKu3iE2n60T7/qG/EjMMszkEhFovuHgvYQx5PXlyTyxrwl/lqjM140eSGW9Dy
vtuHGQZqySZeiq+DkNd4OFAMuLdhvg3hBVzcOYcbsEsjVbTqVZ/QksI0OF9wN9C8J8hvh7RDos5E
6iXUbgfUNsI47WmeEyuIfbYJb3+wiJ1Go8TScB1TkYSonpqUI0kRqmh0t4VOqIaDWv68zVPA68kP
wMhuFbGi47Mf3EzN1LYFK5+KgBt4glOiwunNxLLQor9/z14f5fSgqgC2EPr0Zxe0C+HKqCwjqLw1
5RABvbR6OXMkvuSRbBmeOV7mXLGS27yyc81LM5cZuhhuo/eQSte6rXBbPrabMV3NV2qqjUat5ugA
WJrFlOf5kn6kWMYWQokkegGysN8sjofkrMG6knWj8U/hkGtUBMhJP67FiVZYSL38tyE+3M2M6hf+
FOSbFL/j1/CbHhOoyf+Pt8y6/R7BWRpqgJmg86Gwoum6elYY1IZOFdYzabl3SBbEw0dLdLeOxkr3
fbHYdFIOug5yKM7YKcgozhKn3upgFceF5rXwDFnbdcJ9CiuXAzEu6LUKzXjAQeCWMJX2bIMcsGEn
KUmb32OsaukVcesSDOarG39gPpAZSKNvHJKM4+FycNoP2lXTRVi7/nY28+FYoOS2DVzYyAg0wo2W
DbLVYEU/l6y5sgdPwHb6FrPBg4qwr5ZFgxy0IAlb3Vxyngic434mtwsHyPmCguVs92/nMWmp8/9j
mq8YoSondsK0pOb0RWAKwXNwZ8qYHPijTg7mEFFaEP+ZODBm+4zNDxhyECzuu6ZPsMUqbk3b/ng9
il5sGKCYIJeDi54aM9R3V1aftShoV4hmudNtlk8rJiwCg70IvvuEuHa4YwX3JgDaD+hnncecSVzQ
0IKJ2syaak+eArTD+3fLFgkqZ4KvplS7dvzi9JAO3AWr6ObXPIIaayL+eqTiNknCnHEVsYZL2J4f
BjsWyx2oDRG1YRwFMpxt3dEE5gw43PNEya+eXbGOE/KQfW6tLTVWO7Y+W9lmuvPmQnzrYnhl1CQj
2JvymezWmeeBnMYNRU4j42uJBzv7HCiDf8vqrJGhzEH4uE7fIW5qfm9SdwKEyr8Y/TLmD33KCLjN
wKvmtZcPEE5UTZRa5bWFu+lViPBKfFvusxcmnJVfK4FBN+fegHXjMpixZH4dB5fHo33+xPOxGkRA
YxEQvMpT4TULsmNHE/5mVaehoJVy0ht1SoRYAXJyWanEk2nPxv/718s6s4/HlXUNxiREepVrKNbl
EjrvkJo6M6jxayQQVTybA6xUXtny0cchX1Tunz7qjLqNcwilx3tgtitGka/icckUV7xUg2YMPZCr
spBTPlMz9jYtLLRonflxp7LQo7B6T/PmS1Y2P5l4c4XwPoFrdP+Fq1XhBemjGBMLLbB11mnR+ml8
KjkBWhehNVXjVjhZUMohxvr8E4I7vjBoqcx65mruVpvx9KDIu8lDALpEJ0JBBAreBk5ud8gsSr3/
oU7eixCp07AwrkDTXoy7Si2F+nvFwuflWV2Q88JSTJOMGFbVIMpZVzb2k+6fEHkzPrNIbQ2XthsQ
MujbuLGCWmT7AyziHsW1TQBdADOhnizg/zlMub9PgzU5V7uuBJWVleyw/2EXVu371Y7Cg6dAMUNy
OuL/fBy9g/Gx9xBxOARvYKNVnl/6ePKqNaVYZdDkMDiclTBFm2KyrvOitFzHPYwBMA1Nkjs4cyoW
IR5TNxl+C/MEtpmeJRy4oGyhDutcsIvX5AOZNiwdrjdy2dSSR8ksv7DyXTKnzHqmJ9x8xYkNOVAN
cttuY/xk7HIL/T4AyZZ8t9aTYc71gAArPv9LQi2E/m0iAGcTYMgt92T9DlYonB7zCXZ5sYuRQ07f
QjMqa8cCx9a1Lx9UdlgckG67OBxXxzyLG9Nfx85scJi//pD7I5OOwJKhT94Ozq3R5eLkEeL7tvvY
vJd7AEMVZtracDir3hNk/frAD2dg8uqPbTTVj8BDIhSduSv1z699tT37maaGmJcLQgkSB4QdeQEp
VKCrpKZnOBpDFh2JNCvhMBWXa5URccnUh6otPibzZCCuC0Y8Id8f4poIe/3g4DX5KG7ZbvNzly3p
I859VVkfBE3cdZoQnvpPwFkPq0dGJm8U34hrLP+s2UVcFypvoolLjhbtVh2L5FkRliDeS8dkk3LW
EXztVFvDGmQRjSYGGvwK8ocCFdDfWV0NNEQtNbDYpeLZruVeLlqH0pAh1PH/7BZdzlVdBa2qt0Ms
LIICghILlkaI6151Pp9reTae1Rnvx6VxTD3ZXETpN7JaLmkTwPuOZ4hcXKnwGpovQpTAjaFCK2Mm
Z5ZOFUIW6SSiEXRlhpd3iT4+ddH2Ej9GqF6h5K8G5wzaMt/dEHFNmg9yhyWy199pCpsnaAlVCFTC
PQKSkLRmc9vsBp2UWMueJFFsi3jTAMQz0MeWCnIx6J381DLdlQxm08gUsD2cg5ku7KSk1Mx3hbJg
BQfJtebq2mLmJAqAwBbpxVgAe7iXFuky1yPIUjzLwMC25ZBda7CEW0O/ZSUbdj2VOfH7UcwbkFmp
EFBr8vXgXkYUwmWVOqecLA62MjLeA4rnI2vkLO2Tnf3scaGG7m7vIG79inYR8ed08D2r8J3ald7u
jKnoO9N/OvIcfXVBBUBSUnO0nsBv4mPnbuNMRF2xw8KlKLeW0A3oaW2V25VESsgdg0LbOEzHCEnw
bb6wf3ERxckU0UyN4ul/pnvUmc2RLhPaTMTIdJPI0032EYhMefQ/qSjoJrlwbwS6SotdZykfq7iQ
8ldLMUoarbhRNDI3zMkAkkwKar5YzpHiLICse4s8+oBT17cZZMTab+WgzinCvWbGtOwvd8yDqmby
JAcwBpw3a+G/h+dSKhQYz545aO6l3HH9OsxK6vikRulmFdug/vN21e/OW1owgJ1Z/nOLv9Wn90oy
ZANuEx4uHkdgkv/rnEbsGsnS3PSdIQeuYC3d9e+z/ZLbr8J+ZBiQyxy22rQ/kmsPyU1vtyYGen++
M6LHejIa91erwVdgtcvlgLi6kwpMu44cc3IG49t6fnZPD1/TGHQvKtR62V/hgLk1okRaph+2ltER
w5RmRJmifmIBdhwG02be35M6AXQh1/TkrpgItQjZcwNUAx7ywSyrXVg1DrBlqisVHyqxZdLPrapJ
vZeqDcDO5zm6g3sDo1+8kuCQ/2IE6k7Y8GqXkIPoEmhEDSZDN+N4IP6o2avCTB1nKXpw+yGWrSQi
ucspMnyE/8t1gGnnj1lzBxN8/V2WHMYNzMhM92AD8FoAqPHZs6WH3CPLAykpFV20xc6HBShlPoI3
zx4E2Q92bZm7evpk/ihDuow6C2fro3YB6yqo7NE2Mi4S2ffzt8+1Mt1143lNqx7RwM/2JoITp8FV
5YVhyjmLnR/+jYb/rKX2Swb522JCENqVTjK51VvWiE37vgTKXv3XRjZ/UsJKhMadYITOC1F8kHQd
YvDom6GcRbH5K7T++XsQxgTFBOesRXYFxBRrNJj/9oVpSLGWrXR1EWpbj+0woodHBxUfChkP3d4S
DTrYbDZycXIP/SHLdL6t6mLPE052lU0owGam2LJZOz6GM0fMR61/JnsHBIScdkVqfPHSm5E3qSfs
IsQ/AejHHNSxnqFVOfMn1AL4CS1KOYnyTSR5nERCQhcDNhqbYu57H9YPf3OMC7kdVJDNHJCw+83x
ERVCiZY1at/Etg5lbAImjP817/aVwTuoHsIBgMOJriK1+hlhFpNV0Iy/7ovAkHioXAFAdR/vfBQG
UasSTfCLqJJ08YNLnTJTIhnpB12zisnA/EiL8kln5V/zKlHMNjsOJUgjmpcBvThVUT8DrQmzJnIl
2+mFcrhlzczYsCphmAnD6snSQGanc6E6uxrVo1nHslbkhPN4fXR0xn9A5qMxBUFAPIsIPBqab/7o
cvXTU6952D32Em7nHNG2iy55u97tP38PACnA80J+IlQE4NR+MmbOO00QhJeN5fhZzTNGPb9nCizl
gLWBhtCZ0J1ZsycQLGYh14pXnqyfFvQ2ZzKsLk3xyuwqWw4bn/Kwb9eLacvlwnxMfPIsCHgkJg6p
/45aeBupx1X6j6xZpbjnjGWIv4DDV56yZvFNhFJjCLGvhx6sovaST2e+U1nvX4AFAplVocte3xtp
eBqan1M2/MXUoy7tMrtdNHJSrkFEjwRCr2MHGn6yaj6iZe0STeQMN8xXscEmc0bip2ilyBHyx84Z
hLPP3e1xfZeSo2jviqxYTbqNFt7HXl7zD3CDODmYEEoyB5a036BLRwLTKY4W5Ie/bSyqj/i6zgM6
+iF5Ge0pqNOBiTDvmt8+3KU9c99wMitVjwK/OhQGsqq+wgpbwVYCT7CS/AXiHyfPNFs1lsfHsSBj
YDRS/kRZmFMRTSULkL4rYgScFO+dhqrtv9DsTSqn9uehEUyqKAwxgHZyvY8C4g7FwgNBLD+KtcXQ
3+WuNqiBJsd7lzCoWdU7zHqR6/sGQ3lOGZgas5866D6sBSaQ2Usz5RJJTsT8kAVRcYwlAJ1ZXfBV
KSx0HEcHvZWczyDN3LLymywybCWZdaSM4U8C+88jxm7G/aJ5UBiUeiDtSgEBPuEyb5pIsYwdQfPc
e1RvMtPUL2Dgb41qwAq6wVvCkyLbC3pFxNxaZBl80ySxrTin5ova9ikN5LxbrSAjttgvWnMarbGA
532z9GLFFeXBldV/jrbjRJzYsXAsLLCmmkQ2AJUN0gweWrFMSng+vgfLxoWhcSBRLQMDsenNtzVK
9FokSX7IzFhgUl7GUBgVxq3yBjSs3nyOdC5yLH/vLA409RZ4TFfOA5bIrl9WCbR88hy3aot0ZPtU
Y2ChUPn/KxBxsOk17UnbbtDxSBrFngCySUU2XOYEq9SYUR1B8uUIhuupFK7GVUq8vmwxEGV/OZMZ
ychKNvukWNftU/ndyPFw3EYCu5ixNfcAABZ4mr0DpZmua+SqwvM1dnIVff1p1dbxKPQVWG5P1bC/
l7O4ku/h/eznI6kyjfRqjbZl9mRxIy1v5VMqDgl472im1WAs1xzYcYuNEaUiGgh86AEWi3FZoUXM
NrSlUwvxjtIdG7uU5vzTqHxCw6kOtVykpC+evHcnfxVkP0OifLpQ0NAa9QHpz61nXwouZqGo6h1a
1p15OHMVNy8qFQZBeR2DmseBiTC2TDZfQvXP/+nq6LC8JEIgrcATz1LlLf2JqT/wb3gg5qg/YmXe
UAB838FbZL/HpmeOZCHRC+7eyOAdE6indMCAqs3C+Y63iU3KPVxi8FvG6QUsXyzpYWrU25VaOVUM
+MPh68fz7a2HWUbLYH9xfi8T/bBbXzovoWTZjba7T2FyvMK3VRMbjS7r+VmIW6X7VR5AdqIKsegO
8Tp2kXtv/mT6K/7XFQJDxqHZiVBU20HOWkkUWAawCwqA9UEpU1dhELtqX8RsHDHnlvN3Y3/bWYH6
34yfXZaPBZ1vwgU19qZUdA3hpha/WM3FuEyecoZY0JpRynRNBkDCXNGegR1CZu2B5n/1VyoRRU9a
MQ1gr+QKotuOQT6uF430YeWDA9lWF4IaJez1LC/izgU3b2rVYNy5g0t76S3iEGpVK3zQM1PQlBpO
P6q/+3hOH56DRElLvv05Zvo0nHlVsZtzkzoGR2KfUOiUnsGJ7F3TxmWqllfkq3mLpEAo989YEvin
U3ZwjQ/91PIxEzMAiE4ba+6xzp9OAxcShFcyAKetvy3dBlELFOb7xSkcEMjktMkO5tIk6usFsNZy
pHmpkcfVli/vCsJ131RYRBPmmm5ou7bd0vlv6XwpWJk4YYZPCxFVJCJJMXO3x9SygPFovUV0rGx4
RanH23qC7eAqTyC+/gk0zpHm0+HVYHXSHEqJW78ValIFZYEU7rYnfnkcBRCUrOab3Zoz0NBN81w4
gWU3P2wYA0vJC6r2uDnY5Z+rZGH2wla7qLxgV7NVRM4juBfOdabQxbibErxbAdpb+dIhm3zmEGUo
B4nRtF0mXXYlcICuiOdfniaDYaY8hvROQ2+gg9q4YhHzy+Ty4q8KyYYDmM4wrPnB3rEKqFteIYb3
u8kMazCzw2lHeoA6KOMzGIZ0But5Yw/flwhvb0QpyE8ikmE7T/tQCHBZUWyzsasQrJk0gJvsSWZb
lkC8mxsvqhxk0/UCwZ0+wa5oRYu4TSc6O4vif0AfawVatQn/Lk1arkkuvqv8Aa3DXibLvsJz8fsd
Li/TcNg2kgiH2/bSr2a0jCRkx2IOTnfC8m8w7BFdpXRvVAgb/HFOAKsRHdAHlfXWhzZolWW90JAv
mpEEaiMEzm0LEWSj1B/b26e5dCvftqtmwgIOsf8IvooO5mONFUjkEuJyAsagoblOxPLfroIzEG1m
LbLOA4oBYXAOkCFY3IQolDrNaGyoUlRnax+9DkWaiIPECiU33SnqP+paTkhzwjkEMc0btCCSQX7R
1PjMsa2pOOEpkBIKClM7F10HtiwU+N47nxYJrq+sYKfO9Uh1CDaL9+RVuJcHfVo+g4cXnVIUfAys
n0Lh261YdCnSEFWwBpCoNpCRdWBmc+Ycw2QLPTXrmGZnFaySsbbjdtMRx2RvuuzegkWFndW4ovEY
Petjqbrma+9WHThhMW+Zu68Q4RrOgx94XbGUIEaH6U9K4mH2h9t3APjiv0gD8Bh8Bvi0OjfT4ZeA
2Jsw2BP8u6fWfvsvBFhZZKnYsVQ+VUmomnHhB7Xop6KoIT+qLosD0t2rRb6fb62pYGQ3iZVAXFwX
n8Sv7Gf1273gLCtv8r4Z3948gZFLKECPWqK+l+c4GtMSBVZXCjhDaTlaHVeOTwG0fTXHS+xgmjWE
igAK940P7cCnZCJhU90u+jUM5NP+4iuhMQ3CwctpJ31K8qcEMuHXeTlsYUIb00MQEJ8jVEf5KHbz
qbtsAj9ze/nojTZ97NUDRFDsGiJ5fk0aeEih27QN0dBzmDV2QCa0a+AFH72hdSnIdKGrPD6kmTnt
V5uHFKRT+SABVqATKXkP3Q4AUDU39iWmc9v2Ymq5tUOI4nHHAI86uKBYbA7/h8CvifY3VFFdixmy
JszpSMGChsymje6LwW7k1TyDVEzaKYaJQpa1PVj4MB2SDqg04NMej3MvMVxrzG2SOtAuPpOsJ+P+
dSd+vINXoZ5+Af0Vp9M9xfN8swE8wcOWnxfNjOFVUDisjDu0H+xkoLgJlnClv8TZbKzQ58+25dol
L8nV5MYJyvLGvU+tN0fpivLjiBhscvklowhIin4/QvnQ2Xhmmpo9NmpftTT7HBA61x8kdnVN9yIV
lAAOKh4wudReYLI862zlzjQUzgnxCZMkDw2VD4+f9BDhByCkB4tWKjtSujBToKUsjDiaTBOQDIGz
fdnUTm2TwrjxFYDeccA8k8Vm7TCkgqUz6q9H2LZ0+WidFN3EUADkCXAskTgKpjByppGi8JDrmCQo
L+7s7TZVYH4L+HplAREvrFLX6FIlnferFzURh6lM+AddIsz1C+1IzLGve/AmEeZx98fab7p7by19
pPo+I7Gf+rCFmgGpdasxtkm3mnE88JUhAPs3SSXZSca+Ti5SaoDdL4oxw0YIqRDJOlhieRwjwThs
nRFiq6sOkpCwZ3GdOoNgz/SN2cyDM0xslnniNeK14P6b2AWzNRZHqFxzsavYjD6rwDFfDWb+B6Bc
xcrrOhgiE5T3OHXNc0Tdk5Z9sCfS7AsBqD6Y3+caIFJpwG+o9cbMHVmXlbqt0PNgXnI+KE3e5Iyp
TAvKEs6orskubpN0IOHzzs+tU7OQ3pKylb9T9GOyoTM1l8Ow6RyQHhpb0cXY1YmzL/G8tdWODhVQ
M6SWRAgyIf3RCu0a8VcDTK4uLkVoWGM4zuDg+ZsW2XG8bE2cmFnNpNalKilc6oRtIhPkw+AwTWcx
lguPyj5BB1N3zhHkIqfY0Mi+AAd194fUmDdvvvXnc4LVHdYPWcjJd4ys5bEYPOEtkiKe31nzCMQE
Mt5bhahi/OKl1+9Jau+ytxpQivKVKHncJiasuRiAeep8xYaQYYNFfzVp0sEjjlGU2C+c1nFnVRaE
i+P2gJ9eU6XaoX8iiqtmEUfBkYkXF6Wt7uHxvDAOPzpvwKoxzLgoR7G6anGMBiRhbmH67o+oWTY/
8X2vHZfpFxhBfbiD63UH9Rtzogdt6HggsHSsKufR5XtbUZfQ1lrAnsYUVUhXI+/20KtwIxR1ONTN
zkULFf5M09aj9/WGAILqe19riPSXSv+SKeXf5is9CbGzemLRXGGM7mOe+a1zpGmXuyTErWQEYPJF
GdTycEZhjitmMwjX09JJuhebKLfEulzPMxz+f8w/RBo6/djRzQFMB6oXzUa/io9YTvGCT6ItizEC
StUrT+RpLz8Ef2hVd/KD4GiULsogal0GS2aJIflBmpuwtNSo9925lgMSk/oO19Kw/KVrU7GCRTFX
LDvyBFjCByL4v/G6I+xDc7dMx975E4s8n83vACrVwMhfRO3L83TyH4QC7WO5x6Vg24/r0dCgeRLy
1MYrhOigriFrSrA6JuKsiZpjyYeU04/Tg5U7Wbzagj61S0HVllvZv75og984iwM8odSpBq/RzWHs
H4hWy8Qypmu4f1DaXRjNz5CjFiCKzuH7OaIQIrIWJO2ixiOPY3rTmz53VzfTbStG4h/96qErDRrn
s5nPLtHbMMCCcGTHSymTB+QAnuX9ausvlW38i7AIPvOUCWMzupGVsBVv+ig+tEBsPgQgWfGyIR2l
Ca3rmTR8hVkPb7HASRVWJH55HBOgMeSAIam/GRfwZOVMz5XrkR57wmbt31DETNCKeMHDcMOdE4vk
TOjURLUarpa7LyjjDWIV0NNqSnQPC7m9kTSHehGHWu2dBu5KFt7tjKlm/r7leOEmv7B6SQm6qB3C
arsI+id7kYAZDjdgU4w7PS63RhXVcdy+jjtsY3Uup7x6LUFS9A7faUBffGFBtvGxW5P9N2Dd0YJw
o+hZ/ny1gYw/eilgvAAgvFxxZ7X6UffS26z2/NSlRYCEjxxL5qWXkBcnKUmu00GDhZF5wQwPalJ9
UkUswi7izWI4ZNtbc2zzDVjqkpILzEY2D1Xl5afql/YZxiDZMsJi2JGIPX1ec8NhiVRuzecyAgUw
LC31snvfaGCIuOhv0tzngDxhRcMXWxM/8hCnfH91q8PREIF8PuD0dYqnoCADPwzvCC2LuhZAw1N3
zOhUVnesmiPmU9rVbJUfl+YthvNmmIw8xrYo/LXrbvJvN3kVgg45POaetfsCtQ7XIx4Fs++rBH9r
y+1l/eYWle93jbyE7vvjFE3wzJk3hU5QzdPnBENjIZYp4SdRzi9uTEPVW7JMU0Vp1nOgAVBhW4oo
ifHlzBafIJ7Z+Tkdwx/9kAwBZrucxpuiIuDGMp2RoJmC9P12FZMmYn+OSxQjZImNHSN2AeEd8tHz
XXx7kiXRK2yXmCCQI7Cuqh36ISm8NLGOHFCJlIbEUmgm00BP1xXd8gibYLS/Ywrprwg8A5frd1xQ
qqRBH+8pTvi0+IB7j3sP4lQoxg4rBG9+GEQXmkdOTPtWvQmWKl1OR0Bz0ml1BmgPnQAGBCmM1LFD
evCGpR8zX5JkhOnYuG69zPW+4OPZTKGsbzZa+dsNo803nuxREmmZjw3yP06M0VPfphrpkzxJFAys
90x7njopYwiDYXED//EUUlzWrcy2a4gQiLqOq8ST6B1F9rFBkACBSp8StBNkHiEuBPuWJAi8EzqI
i6zVgCf/BGwTIttN/OyQNxeG0DERyFHG2IAV1pE9tM83LFcNPo1ALU5/A3w8Uig1psVwQRlGFxkf
ODYPu1LO5lw565yzK26Kx2rF2M14YtFXulwgAD9CFNfGVbM5UxzUUsHHXFWGeKoSgxbDhcg4GnWL
OZyhH7HcrEXUjos60dAd+ml1CnvbkJZa1wuxIqbp6pyWCU9v6JsNWQbWD/lF5cH+TIOw1x+K+TK8
HNiiB8nPc2SUMyjbaM4402Pf4WUb4DgjZsD3RtU/xszYercglR3U5HRiAIT2qhcnyYDbueggDtNK
oPjpfuGVw9QSZMZeQDCZZ9dJJtglY/1nXfX7W2xDngt7IBthr3/9V8u7SdK1gFnTacRxarG1vHsT
AY3erEUdFnp4E017KfcCjr4jE66lBGAtadO4bXWrSa0B2RGU9UoTKiAfQT97MeDpEw9/QhrV6fBu
P+TJwRw68N1VoxirAZBQ09BB2eXNLBDYJyHWBpZtuI5MmOTzLTexTH6Pec5ywtIUb8ryv1xYAG0C
7D5Wn2p+WWHw6Tu62+6pcJu8R3dYtHrvzHY4zU6RlwAAn2W6/MnbRCWRFr1cfVVpwPDE0d2rAjBP
pSwVPf1Aibfes4lydnDo6RlYHpMYXF9UVEtenPXJr85l9lKTkwCrR8US56cOWWnuuxT+oVWr19rU
w2odOShx0gSwhPgIzDDshVj0Do/vUB3ARIX0FeEnY4TU0hSLPaFV7LHxO58wWfFIFizLJzy2H22a
dxzisZ1jilEgMt7JKBFxiRaf4AfWxDQV5ENcdMVZHV7OHxPexyixa20ysJLpJkTsavm+DAHNorvo
nHDn/UurCsUrpsCmRycpO3DAqCZ72T/D3zfgc92zp2nDoYcQjn7ioO0PziQvqJiaFVYC6j91VX0+
IJY44CPkhDwCmvKE6ZtueBZp4Zpb4mXiJpdrDh3YAPfAwOKxPesTM6bDBQJ3vloQ4O5ctkx/Xsb6
L57W+TEY43KIcrRplor5Mk8ay25YpepN13yRulfUnxx2AYZZ8oQwvGPvhCAvfjmFjrHDa9udtUY0
jcgNkDyQeyT++KasMGofZzs20SpNWU5Mf3QlCtz4ayBk09cWUkIdVMwwRaWPB5gwuRbA2/FhWaqC
ujG7WBoq4G/gNP41l0E8GtHaRvOOyUO6Q2DSdOApSwPRyXzrPf2MLOV8V87C8VscUIGiDVS/NXwX
fDDM4VX38UzJqLfBSBJWAieayiDC8JTIBiDPa9+vBEgNPorsCdDUnoqNMMd/AycCBMzcmlxnGl5f
1ZQkK2L2+YvOegZDgwSsJc1N/fp4NLskerThXBC6U1lTF4OzevB1irceqsPWMrJaYwMHxw4gC5sU
AvEITVTgbaFqisFCNOG2dp9dQaYApPtphnAm6JclPWARNPCHOMqgO+300jPKgt6XFvMPo4jk5Fz+
gVNADB1MrHt9r06pCLxHQNNu3kaJY52Yufj74/G5djWG3GO2GSpBu67p49T61HYqR4cIAA+Ajofa
C9FeriRP4jao12/FBRAPhy1Zo8/gLmzD0AE0fLuzdrSI9nM8Z8ARM/jlkUU6lmXNgGxUHREIWJiI
p3MCGfDIRgBQCfWLl1TKkwezdZchwLSEyGUc5QLXaLX4e/tfRsNzeOvFg9J2Ui/vS4jGXoBjtJF6
J4zOscsgQ8YlMTWPeey7nB6VNA7T7c7d/aFA6B8pwvRFt38JFG0Pq4sb9hMAYTFiNfvUKISDimwo
BBLWUemxs6x3ZiZXAkvC9ZCHj1vbsrTCMbEqKtE5XVtWyKOv5GeRa4capogFzeUccJKgumLxf0CU
yvyw2tWzAj4l3u0CKIeup9SQ1vH3KpMYrqXptTB/jOxJnDgpriu3R5GpGqz9vfhciXfeFbFx/Hmi
iUvc8gXrJg0Z0qDkKgN26J4bEyfE5gqpSR5tm2HKNX5SfOOI3iMhmc8H3mO4L+iPHqN+n8xZ3Sui
DplnwFUuSDZLPY0QGbK5kn3rd3gWvm3UUBm4DsFkKQQxrDGUPgygqs30kRNR7T4O2DuIZ6ATva4w
rFKqykV/UB/WqqHQBoYgCA3YKSuPX98jnzusYKSzwEMdQOQ3H6p5udlYquhFJi8a4EBZfJkBgpOp
Z6x4UovNJ+4T9t371lGOaj3qrE5/8BSc1GiEjI9f6h2T1xQ/HiJw7eCDPM7zgsZBnUXsS8BBKi93
7LD87ESaFM0besCFGaUpVFetq1RJtT1CrpSerd7oB1ji47G+MSFLy7Y5OZAndF57aMWQ158Gh3eH
LJlY3XtA316XfYgL3g7FV7+7NAxf51qQV+g3RrMJysDJd4lshk+qx8nRTos6sBakQy1EOCao0DAB
AWNKIBaE4V14ohR+inV6xEbYNXKeicugGc9zsiJxYrgku8OtEzHOwyqAaa31GB0dENgdS6npBD5m
x2YgOYQwNl5g7RQFbgEMtivI2cA+n26OA3c0IEjE1Zfmja0DprWAFARcvuq9KvpMWzZ0KB6v4qYx
Iy85V0ekZh17Fj/nZqfaLU5qQ1YaK0qKTtIbsor/7E+zguekOIxo/6niXX15OmBrlSsiHbSFvpoO
3COGshTpJpjZyMyN5gSBk2DVrvjdv10L10HzDlz0djdboo2Q+pJn0R/azis3S81JJ0A2cp6q8+jB
08TCeFYhU5S49CjGud27/pDG3xsOETFLvcyTJ9YuYpV9+Wv8Wh01rj8ezG76g4dEbQMM18kaPHto
zz1EW4RrgH7NO+HhhAmQZkMSgwgdt/zsb1+J2sAm0hs2b2QNwyAC9LPjvHFLdbspC8RNbUdqn58d
FxHXH3nIrv8pj5jok7zlXGbxo6m9EFCYq825c072HWqHAHbAOyZOkOtxmTrxi3H07ZRECUgQzqqo
gpLvxpd9VgR4y0jTqaI6hQEHdfJUFC4xVvRQDVPhwHi4fJBvE0t+n5lN+IZuyY4t3fKr9EC9dvza
1ANBufQ5iJO4q9F5YNX9bHytAnn/byhySNCQjTRp++9YZ5U80WiPJ54/N7taiJJCW8DkkJsfE9YZ
9ZdGqywW6+4IrMBOf+qq8oCoOc74KjH+5Kn065bUTZoEdcrPA34bWblPtSMKvoYp3UVaVI/T8DPc
eR9v0ilteSRKmteGvTVm5/L0EQvq0Vq9fBah86awCf6zAiOnOXdcJtbfmWvIvNX8CtVleS2mNo1C
Xm7xor2A+6aiRYvtzOTe4NJDcU0AwWJwetAETo6Q67WKoX54cheObZsFQA2QrT0z96w+t0KbjtzB
pGu4bbOq8VAqS7ZVyz7drmc6viDrPwvbN8nYjVxhCMD8WI2cFn/8w/GN0nuW8hdrdu5DOQgPmmI+
O5kBUla814Ba0OIPwP7rMI6DBMhs/AUqFcSi7YILymAsdp0q+XAnSgBnIya8KGJQVJ6hc9lJwXP6
6Z34NgO50uFeJ7udspoxCEU8FVWslODXmyYngudCHFZCnMWDUL1smoOc3+W5/s4Bx812f23gxRGk
ZCg/pZS+x5Z0ryqCE676VblInSpiM0Pn2Pm3QPkbBCw6X3rg1KK1y+i75nrjntXOu1dVHmWuAxOI
InXkJssAhiBgy6Ttzb3F5JJWdk9R9bd1n7PMB90C3FuoGVLd1Ugi9njHUIZyvZ6+G1upISBeqYNz
DAUrCzKEEaS/+bLN+c/PLA0fBm9gwY4LDRII/CEbAnwxTfC/qhSSi9tQqin4Od3Mqw5CfLk2JzKX
gLmr88k3rsvNhu+G8+RbEGmIc7ZyKPktdMkm3SeiFeAPVAS6m+dX2yjGdDphuXPcxp9DD1Npaett
bjOTwk6+P1O2Itw8S9BSTa5HrtnKms3ehc7CElpHTWYHTDr/UC/mgALPlsKwTrxZd/E6MTaWU7ca
x8wtRG4x3YMC5EjgXWXh9800YiGXKWxHFtSvUQmnYMfI7HKbbzPg9IhfRsvR/ptQvnj1KCNQxRy3
TYapwAEyhoah3m1LivqZ10x1O5jDAwFbuz+QSbzYKXdutMkffByeHXUhE1kZvtUhvz/yZCM16xKs
OfQEsHZyHvawa2LDWwqbUQNMJyXokw4hPn6h6ckIfBwQfY7SEh9vhfoZ4yI2aJgWsxrtF+ZBUOC7
agY4ZSXgfScu0+uKBg5F0aocWFSHi5yh47qbxFX1BsA97e/lJh7X2EQZLu8WT0QaqCF23ZY6ozuu
tkn57qzvaSFY63dWUnIffYQSFIY6zoiZ4m835SmlAmZQ5Xc/MvSzM/agGJYGOam/g3iu26sY/ftg
z4NJA6ZfrqBy2pF8bqlLqdHhjIIUzfYmUr3SRcLlaoHaN6VtL1Mk/EZkkY6XNkK77peWbeRnw7ts
c3w1i0doYq7rWwBahasKMBUDP3iL3eKxZ5UZ+n0GdVYaFg1s6P+v9wzq4a0cW0hSvhNYaZtNS+oo
LRKm3QBcMyvndMBrzDED0ZhhYgFGV9UflfeZNDUryc638JNb9JybE9nxtzr9wXSvfJqX0e9rHrOG
k+I5PKtjaI14LUqDUZBBM2BPBakebHffcInghT0tzEP37XaM2lBy35UVn+Crr1lQbxVoBvWZsSbB
sItLl+oiejlv7uhcnO23LYFkWYEJYWgZzjGMfuUjCZYuzj1BcK5VzNmB6ZfLtpmMosCbZLi47nF0
RDlahN0ZrjxbPgdw4rzUyLCHoJKvDlf/dCGUK4AI/HEX5WOTr/OCnMhV0gTe/mYts3qcVB9rMI/N
n9G3ePOavqNu+CW1i9nM7ec7qM2yK6CcOifahNglm3RhfI2PH9JezE18g05ndvN3L+IH3jDskDzn
BV75PxxHCXTl3p6Y22CabH3dae/8UR613bpHc4orNahrIPZ4Fuicy+glE2Af716ZeaHCyo2sqAS+
OITndyIFoPfYXetBta1dGv8awXu8Bl8r9cxRnJB011DIpDfk0xHxtX0vYRhxu1mXw9xQ/Qd41J69
UeqW4GCJZCYjzb32YxrZ/n5KtzfzbhVqNmQ6wPaybP8szd+SD19fLQjOSVH/JA4QSkTAWGUzv4KD
c1i8YUDU6dJdMkUeydOJNv5zAdrjFaejPrGDJMiKOszVOlJeIC5rQTk0WimVQKWFVdDFoWoLlmwO
p9vtoJyAmDio87MMUsbQyfEGrc9jR1MZ2jT+Y6u5S2K3RTbIXhZPoiqlvDDw9qY1/eo/i6M5yubt
T17F6SRw773glRRTaa7GfXRqQRHX+xYQmn50m3pxX8Mzh+ZkaUxxhbN0I+svPXd16ZLJHW2Imvdy
LlfHCvdoF9jOVoveIhl5e6l3wZpZUIOIKxnvf9Q031gDtTZpve/+Qdf85GzaLR8K3wweDo4Gwuno
xlgk1LasbFZ+NlK3+HmRx/U/zytuK2uPZlZIyKUGUOQDdXtvyrnftn+hC1+JeT4glpQEKlLcND7e
v/6XpSoOhXdKQ/WLlPWCKwRt1+7+XRTTkMI2MiUEaQd+sB2ozcyPJLbDU5I/lZ/smIa6NuW6qP58
oM6/NcNi7Lw8HU68J1PUXLWfRc8VQr0bRqR1Ci8Qq2NaX0Ek1ebXCJl+y0xbojyEV/R0safUND4J
U+pf4Haq53VgqfaAR9464pcQFX+nOPlmLNj32ckf3ttKVGyr6Uv+eByLkU1+GKcq+6CPXhSPa+6R
HaaDJBkYDZm97pWMxMN0GzfqtQ/f5Y3saEAle4iaQedUcXLtcrcesImq+VjAPN9DMMMdp4oMGhog
22tP3831hveW+2Lno72y5uwwAOpt2l/CkP/DBPGRgf6y2PN5ZAz8CVYzFKUthu8DTBMZY3c8m/Cb
t7mnGNG1JeMxYnU9cynJN4m2rOS3EH1KHO4/wNy8tBjCIa6bXYXEpDgKBnjtnAMGS1OqrpfD+V5f
/AKO5hB+TpMmVPxyqxuKNWBEOrmqtNcr37qKF6IiKqEbeoUPL0hBItvjU5aevOd8TfhUe7uRtWLK
oH35CVqmyzbWZKAHuoWVF3qSjzL8OgXh3AViAHBANwnuSyVG4Mwp2liGYxFlVlmIvmWYRL9bgZfx
Sg6vnxG+CPPEMbIi6CV7sKhWum/mEKz8+AnPk4Y4QnMGcNS7Lf+0AziPiRPP4xzh6T0BkK8IrkMu
GoPAHkgFaF1rv1jCK5v+i3mi/RHQuQFfWAakHyqCH20DUpLyoh7hesvUCnXX8CQsjucY+Ild5acI
20s7C5i9BZcTn+4MULSgXwdBOPgTJmeTC3ZEJCPytzK1qJqw2A5eoc2OQNsTt6qJnYjqUNUzInr5
B721HY5SxtWocQcEp3qIoJlxqJMGUxlwVTP6keJBhYJZ5hjRxNeC7+0I/gHUiwvVd58FGtEo2q3U
PFHy2AY5HuMj4U8xeigoQ+8g/yScU+hvOQn2Tx3rAwWHX49XT6Ztwvs7X8uyaEV8uFGNtdfd2OxD
9R3PYU1Xnh2KeXc2bt0v9bt/ikisufv2uSGnFK/pIaxYgM98TUb2rqPIeXpy9mYe5WHwCVC6W7WC
BMeCuvztiF3TN15WEwDktiGcTSYJwC4X+2TzDqcYd/K7+h//st3+bQxFLZnQaYEevDqcfD6/ns07
7Ah2Odoj29S5vph5dZFC77h6Rouh5r3lNZ4b2UiUZ7KH+8NqlFwAIOVTTW9pRxD5O3Z4ficVdySk
n60/q3+sBcplcfk4/XAP6luYXnAtsDlrXs08pth5opTUqXBoSV9mljacKBc2K4E4NiXd50ZJrPyE
1GOI9HJ4wRSG+7OqecfI3VYkkiIpX84NqJZjEJ9R+nFiJGfqjRs6ByKnaYad1AxmY2RknDCmnwTE
f4fTPLhH8Gy1g1bb6t+EGWEW7f3I/ji7EMJPDV9JU4MF2bJ+iO9icH441d1NH83+hDVo9gWwopIW
0ckULRxsEAaF/Fh36Gvnk/pGrTP7QO460RkxpnCCyw9rq5NWKzQWMlpslFPD6mlZEz+Z63Az1VVm
LCD+v9h51y7qL/GaC5jTn24yRYqDOtsgOQZf3Rlb/vmLuwC4FsXy5NofMog37LXXphv8mKPkqpMP
NNz9R5ObmusftTY66v660O4NDSIib0dnxxlN/zRr2zmhurX1hg6rmya0ls2bWEFQ63b1b1r7uUHj
yWeJH3nGmS4YVfCvsAQx7CaPNbNprUSjTGYweScZzwYyTpuEE7pObBIQX0UMWA3qFkadWLTTHeqy
B5dKbyJcQ6h6eLQ9S/1dzc5U+Hl3U9ukxnu3yEyRAACuI782GbVivI5kiDxAFHsx6+euAUBXI7CS
lMxnG+NFP41No6OHuBCKN2TC4VEJst7xWczFqjpieO6u6JzLqmmnxvULQqsWa29fFTfHz3Nw3Cwo
b6YqjlmcIPr7hHeUHSJcnAVMI33SZhOe++CFhVnVawXvuG9IbxLS4KAtmgkyyxizy7LD8Dzp119M
BZBWCf99m21l4CyL3FX8Or26kXbBKxWnGyIJEvWyP360euUmtKfTHPpZLuhFTX0nMOuzB14jETEN
FcuGOftRRUPunnjX3JJGqXlY8E4MJSVu4S7BuM+ciEa/XGmTuuK+p0IdNeyCAB347VHbrhRp4eK4
wcEankmav0+FD2zEmX2l6Jpo027ajSY3NrdfGb6RZMRBZGSdgbNKTCnpy0ycorAr9qnKdNy6VLV5
iF58sJhv34FkazBdhHCaozqId4TzJ6npWvuJjiAbhmpPZevpE20D7XgUEv8lBRJePDg+1CAr+XWs
jHSH2+g2VPfBGqogKIyKNMbHH9vLiXJBoabrBA4f4PlnruoKCS82uc/XhI+log3AK08L1W3/dwyD
L/6u/aHXyeux/OYhBR60Qu2G2iFPydod0g82K2jAtOTvKB+ZR9uV80RfbXN8+c2djXhwqdCMHpGm
1DIBBM2+QYPgSO1huMbq/ywAPvybRGH8ZRNl0zjhUwPCx8IWLpM0s6S3TrNzoOKk3/TK1K2Gys/g
k60HYvav9qsjhHwmsr64n08vxEbVwa8Qu2Dv5Kxm4JtS9rKWvb5sYrYKxmKgZvVBWt9W4nEJ3YnW
iAsiTMujc7UX3i5JxOrFFQ8flaNPix3foqb/1VkpfAdOtePWnTTAkPKA4/BN+ccn5jcti+PlwjKf
VavjBAsLJ555n9QX5Xobv4kYnS6ZiOVbJLZ6uG2CYtEUhfYrVV4SydZU2vqLqWiE8PqpKBgrqMkp
3IoXoxkb32EBaZ/XX/VAysB2eF0iVfEa8Q0iU+J36DzhOqA43n8s6fshjej39geAKgEQE5VEvyFl
NgHzLPrN8bKY2P0WZpxrEL0uYpE070OPn5H7OQaAmyPFLySI15vpJJ2p5xYoEKyI39KJ06sahBac
YRb6lwly/PzHJ7zQefHN9vVdbgTatHzxsOatk2lUIuivZRTmm09ioUiLaD3aTbOFJFDC3p7xO6hD
pNk1gs7epWpT1sob3i3fXvZgcn61/EhBHctx8lrDRT3Ld4O5WzLhnr362lssuOgHumZLrtqaw6rO
G+QZqsK8TzZeEdCDcbqJZlEIEAusjpoHbZktax7Sz/SmXUK/25dpB50yWDrPRGD47ACTBnf7KZRt
xCw9+VKPewyE/yxIdCupK23n6WfEpT6A67tvdEUrP0qFqpQqT92ofFSdlxXLvsGMgxWYgc+0ebJJ
UU1GyXTAy5/SCy38PYKsC3wfLLm9eMqnDcp3+5neO65x51g+San0LQ/qtjPFZbaEYBomi4p6WTaU
LVLaIVouSNLouX5DvkLPiQfXgW5JxkyVpUN5+8db9eh6VEuR5kHMTPCXSMWPwt36tL6/nuHlYLEp
rAyK4pj4+JcKqwFWxqXnRcrf4udTK+W8Hk1NhH8WDyiiZSUBEb1ypjbQicZ0QSRNWzDnMZBmNWxF
CwSk4NsD3BLB8bozggCXHQMySeSYgl/ht4VddG4DkpyrN0RtY2k9WeV+j8NeAEU7qLsndfzU05GS
0v2sCrnINGmDhN1TsAJYMM9ZJCoD/3Vis03y0F+2cKN6X+oKnXGprqWd3Oy3B/QVZABdCWHQ/CZS
mqGnDxN2x3VwXpi3bFug7UABnvWKY3kTWUohiDj1IPLrf0Dfwb/XFN+WgyL/BO+JnhzsrXrFVRGv
uRc3+yK1AH4l12v81VWKx41kXynYNNaoj8olkTLu0khLwOSqjL6eSzIGNMtKceXo0GIF6Dtj01aj
WIklzpAjyWoU8rBc3fTlN70c1dHCu7hODlPqI2cmvPE4pTNS1IXNXXKwvCCH8Gw2i/bapl0bhmeD
0U304R8E6cKEHT28/wlyUIACk5NN7rClMcpqJFARjTTUOPwEBsrXQsk7DnStHaXCxj+ZlY6Hz0g4
8mrxTnZm919CofRfFGW16ai2XMuMfT21e65UiPb5k5UlEf9byUQimaxeOUfiXJMIqv0Nxo9kqoQB
MMmAkxUqhuCsk2BFKJL6ymeaArFb5CGFW3fF1+I0YbsmWPZu3lHmzdNFwfW5WqUucVfy1LQRshTP
MZw4gUGcZPntZIBKzMWe29EQC2EjeApSkHDObB2KQiNMDZJuRL/2HisK36+V//tTrTedl2K8OZcu
vjDtYreyVJwx9DhwvgkxVGR0ukci5S/xsuWiuYkqzFiA6iUVql+8hsDzGppNRg9gRSq6nBbF56EN
xMqtjObctvnFmoyU+8BdunmnhOuwvWDmdSxcKa4yAAMQnoNm3GOAlenL1qCOnd5T+nf69Dgj8e/Z
R0ozQgQqaQ2tvDa17SmYn9iEVO0uC0qADgakYuK+ac5PDy7kuTGgmjBnutS3h//eqVdjjZaASNge
ET+fLTsg3sEZGOz+IjgB5dRkpYK0qdvOdj5IRX6Ca2uCdYc3mqwIgH+m49E9CA5FD7/20M+S7MYk
MQA+DcZzDwAzLR2Gv+xY/p9ReAFWbmUqo5qQMHMg68+0fkH4lRJdCs0h6BYVxKV0IhC7/fEQlw/w
Q+hEcS//7ftEzRYX8uhT8+c8BaAV0H612pKrn0uMDIWiUC8/gx6nscFQ7fEb/1z/9wqJqPqeOUP+
DKTYP0CXzuz5avyDiKkIdWNSg5DB5f4131FJLFjG7HNthx7tQX6tyr0uTOqRmCipKELRL7AmJqiP
hHW4r75vnWFv2+sA4K3ZeTurmFkzs6IzsYGpRVMKJf0KvQX2CugJYQFEvCoAX4HQFhE2JUInSqR1
erLR9x7viuFpNNafKdmhvEp85nbyw8hZmCrbVx+0QZh0s1+i+MFqPV1RKYPdgl93DzVb05X4TBOL
YeTVeA+TlY9YKzmKFwyI4CUwzdK4zoaEHGaQowKATH71LfX0t+3dqOSZ0aa//DakG3hpRlwFa0/y
0kMS8Yt4o+WjQWyCo1ITS4Sjyy0LFMQKV6ps30IbK3BPVbQvZC1YGFqnX5WapQokZCnrRJB3uqe2
BNAo4gQdfAj/rmxp0+Ms3dxPXQDH60rDnVu6wiJLMtSPkPTm4R2G6bW145Gi+R9x7hhTl+rG06aT
KmeoPlUXYgLnZJ22A3ibpLFAJEvGtPIcx4z/nkt+wzCyimSEkbSgOidWCT55X7G6FHGtPqa/feYw
//5SXY0BdktSJvlHWEYRW4wT8DQO5OuIdF35aoQTiCarHMOqibMVjxQG1FkdlrC13gzFPKLZ60fI
aZ/IAu31rEhWGJq9qHuDO+UZtW92LYz7iZqjQifFbHd8MP3YScqUDlKxWflJ75SktzJPqQYocsLA
HQowqPuH0/aB/E1kR6jniZ4aiR5KIRsoopkBPJjhh574Z/IPAUb/UfRMcbE/Q/eTqFujts15wrnL
G1v5lxTBhPC/UclZAdk0N7zxSRLhva2q3vAZ+BiMrMvt4a63+KxgqTCRUYGTpOxU77Z9Z9+D2o8B
bvebdyzZfV0+GvHsOrGowrySfNiRgz1UZeDRzkk1FoYSQlAwmwE+5qG9PetCB4lNOEku8XI144Nq
uEJOZ5QlUq9Rg2SGE7iv7SigTYcfaGUqazsfqSS7+UzOtD18n4IGfCMwWws/X+G8V0q+4u+rVaaK
awT8xJDFAASluQ5xtIbt47xUM77yf0AEwfSIviBpaOXzQhhwY5UlQfnpOFcm8+rHQq89QVOof9P+
HaiUSNQvcgJI5LZcSa5me+FYu80djRK40bXFhLg4jWvExVw8p5I0h1owRSAYe9TP142oukn44xX+
cf2dri37KBawUzd8TsApIPzFw3vdVRQXF9kwGT316ypGpBuj8TMlzN5xx3jAKSMVV0sgJR7Ttlrj
wwk2VqA8/mxTpuMpNNS0sSIiOejqdRSMxfW3VxtA9D/6GChhe0AaAM65vnhSftymGp0DlkkTJM2J
RvSLKNFSCi7S9rZ05MXbWP2F/QaIQ5yzpWlMMQsg9Xr6UISuZzQfV+vjYoZRECwPoEe4hmr0Tk1v
8p0Lp4YaZBSmG4/rK1T7SW5CJIYBwuBNb6fnbjxUEtO4/vzLdWulepJDaSviS63qRpbVQ11nIdzP
5pz1sreh4HLlNKT9XM3oZA6vSuUQId/ViiADOMy+fpgwBeOeGxUfFQV1ULL+hpewQ/zZD8qdw0eR
64RccGSpPaT2m2ac7X/fZKpIZqV3ydj5c0U/dJ6Unt/5oMZWak5WjbvvvFW0VC0aY7pk56oiWmhI
9sdxWq7aeSCS4Qz2B1mpWMJEdUFkw7D1+fXw5XhxdUEBDlnFg7LLMPcrcJvV9nnXsnG/IeEG+BX0
WoDGhdUTc0zU6fOUr6rERqHHrFJpp0+oGAey4tnydbqM9/LEmxb/9OMIrWleE22mevrq3iCjgZ3/
FeoEvTok992oEo/4zqWCgWsckKLu0jv3Bp4XMZ1rCqwNFvDm6XM7Yj65lbALgg+K5d1H0wV4PPp2
f2a2oD6wbC/XiiqBQei3hUMUEHhJH2HnCa2v57GmACx3/0wz27Y1RjNgaNJGVn7XaqO/2J2iTdSJ
nHeEnBc5wFnmATM1Uz2h7ZYilLwutkUkqFsRVo1UqTYDQM9ktDMnQgOLcgm/RwV7nl/ZWs4RMhS5
U4frSrH+lf+tGHidNsoSIrR5kT8Nv1wyceX+PJ85+tO/i+tpGHhKofPcYRhRD08pnsL9seGmve6O
CI2p2OU2Glc59cuIQVvkadnzgrdV0wrMgpHmLPmmDC6YWq65yAssEIBBlOqu9/MBkL1jTqz9kdc5
zB1m3DlFl+nZzg4ue2AQeVsyU755Nh+CCN2PX3dBhIGAaD9egG/5hIPfDMh9BQpts8/AqzIO/Cn1
Nfa71XP2xhCnwzmbH4FMm36yTaOcjO6VSmdX25tk1opU6y/DhDGXIZWcwE0lrEbX1T7t96MIAhTv
p9MGeb+Iz0rRtYOdKfWN8DSQQJ4hxFhExGgHlsHvfiiNX7QicB7nREzyub1+IhtazdYbe8jnX3bl
+/MStZhJdyLrEW4scR3TasBfw702v9zjgTtlmifMfojORQ+terkGQXopcC7R4KTgYUxuo+mdMDcv
LGb2VZ/aM/MI4EmD3Jp6KLny443RPk39SAqTXozQavgGD9HjziocmDe6YEGeo6OhBe1/mg0KA/Mh
KUQk35MXueWOFQuSyV1xc4LaCKt0Dr/ZAfMJyUNJaoBMWYGAffZHmi8gPDmm9gAnwl4fiQmcquU5
scHpEEZ2VCxBYUmnZlB/7mgtrtw3fkWKunQXIORk+XgrkLB78XiR/YQ9H1PkPwl5ngPrmzXzfesn
k4GtkIvNJkzwVaIi5tioZyLn9BvBWiWE1Y+Cpj0R+FfbHVkqOKwxrORcc4EspdOpz6FCG+DTh4TU
aILfBt88V6uugCbVB1SnLY91u62JPaaP6DEllmOudwhyAGMgrsqOa4bv0XxRWdZ8go4bpUzMlxD5
NtoxC2CAU8BbHBYrbJ4kWMibR17KlZdFgVhJdm0fH1W1TpTHC9iTJZiQwEwvhEloUqWtkweSbdV/
4zW/Yb5U4OY/KkUuXXMrVuwxquO6YeVqNNMn9iTz/I+5sEvhrs22k9ITl3FPj12rL8dtqmKV+VMY
yY+X/xbYL6Uf8nh2PkNJUULMZKt6v5VzEFtlIkHHO4iU/PaifdNPDWIoR9O0o0DCqYxYYO0MjzfU
uGm50P3Z/+A5FU8CmZyJU434dSy79lNxIkR1APO+3nyFsz3llUWMdV+rxtWtExI0V7743RqlxDBU
1JtJKGCJcehljRObBRdvAhVj6tZlLoayhsC9v+uDibKl9uQ2huAgvs8qFh2qxDp5zAgpKmgI+WM6
aXqADyi8bAfwsdaQ3ZQcz1ne1sejcfqTdAp4K3ezI5cPkQ5hhNR1WLaX64PFRc8uQPt3kqtv/u7I
EYAu08dRuZeIe1l2+m7IZ3MJULeuMR2zp5/d1YIjwieLR7YXSNUX2qMHLee88EmEP8AJlOuUoTuT
EN6UssC1Nb68n19wBEMaDue/BRHHfXuP++9wdTwLqXbHMTN+kP5AzbIfCtWJpfbeYU4/LqOzrfZm
UO7A4xCxAiBPruZeFlBIn55alNrwb2XSj3/22yJiC5fN909LMlc+MYLJIvYyZ8kc+yLH3W8XTt3T
ixhFmAe+0jgQOJcOPdgeDm5KsmXmJBfUpPNsUvTloLuHpPbpbOFpuHYsu9Aadvo5NrBKEwcKTa5f
JPW2hVytn+lmccCYvZi4jMqmL14qDPPi0IaD4XE2k0Dh8gvrcVQc47JfU6gSG49qBR5CBVmgNgU2
WjN4LNRuEZi+S+y+5aqkyYf0r4rHadCWqoQHh20IHb02Fl3jTVTAtm7j0XqDCzunWAm+atgcWsp0
NZpO9PUXzhH/B8XDsA+l/1l+F2sIsZ+jT1iVMyCUz+T+tawUKVvnOEq6Q1FN/Jgjoio8ejZM+EFa
2wlFbBT+ZFvVnkQ8eCHTTB0DT0Z2OSiJHyPeqvaDmcRc+lu2+v3/3NKf/LNgtqzta9QoqGAwYxaW
HhOTUhq0BQ+mrWL7GWFdFlc33BR/ToqRabH6282chFKq731Wm7QVbekBR2gxby2GMT6OxUnZuFTZ
kZh5zswgQEiQ9I4DT8urFeFnnZppV/9ldnBo1deiNYUvK+lBW1opn0vJmkzPQJTtsthQmplLOwx7
OGDCYPuf9QUuFUhveVOUapYTaxHaezgDqycwG8j6OYn1iqWo76VzYZBLGhcXnyIc1oJvFHUBpYFR
C+PeWcu7oxSdqn5G9lMryDH0fu3o2F3a4uK3GrmDzU2A789WGh50z5rsUTPFfaQWT8K/esvb+aMl
1eL8FhhiNtkPituayLa5/MLPaTebpcBwavU9oygjGJbM1y+Bdod8RcWJW+4uuEC7iBRPXjlX7jVR
NJmBx16uEoC41FaJBCpdxNgXOYuNZitPf8tcjL9SkmariPCXDzP/tle1AE6djxHPjtgZklTqMfj1
EUv3eT9dUYCuuCaRzoE+QlkcKfj58joGh65ZHhr4/VFqyZy9FcJbYqsysMG5TAwZjjsWJxJTJr+n
GcP/9aVG6HGHFTpauMMu1eJjafwJuhKpJXT8ESfZ0q2p4slBRAPeN/+5/JBq6f7vzNem66M/auhe
uH2htTYmpxnCoza6GxESOSYUOSsFXNBKLcksPZqTP5abMplDnSJ61rhuGSb1hl9KmerTeRuHDOLN
JCYONWuNQ7VvJ/t7VA9IZE0DYDSqHxH0Y+GDozpMNTu1VXeZuUHqsEEsey7+QmhAob3nhupRutZm
PnIb0SphhnS6fd+zPHNyegF2t5qMRMyFWyMe1xNSEyV7oQY3JxGUNC3QD6M7JCyiVzQBcPfvXtQh
ViEUMBmdzRwPCL8lBOXCJXi0wHHwcoA6ELIV5Rmb4t/Lpi6Whlp3xaVxFfNqqJ+QRXXZIpOXYn75
iRcljMrKJSxM1WFbg0NUQA+wd85g2Z5llvktwDkASx7ejIv5qj/7bPxm1QqRVJpRLGM85EAr3F3k
CsFBSrHyBa1d8kgWNfqHmOivZmU5OruK4vyDSnbA+hJFeUN/nSXD6nZxa26VMyTJKxq1DFlYazoJ
9KBXEzg4FV8uIse8E1fYP1mVbA3q1FDeihoB8pDEp96IL7BTNXV4fxm6tNUHH8ImN1tcdp4TrPpX
FofJxvVzhNlYOnynCjNBm+HGy7HTtNouQsoioTD37Aj3u7YFc03I9BxvYClLBynd2bh7wCCXkk1q
2pfRnw/hi6GuxzpnNN4PEwWrto+aQ8dMHDqFQe7v2+rXiOkSra7ARc6ObWAmwWylJgJEzO+qPaGD
f57l3KxQ+GhaaR1qt+Dz3P67HT1+4kPLw0LOBZYjp7fWzYB0sT3jbQ0osL9ow3SGac4TlCtCJmVc
9TJTKFe5GKlcFY3cxaYZ41+4viLXQVyA+bTvvsfcw5GAJcPHQm357tuE/7NLrcQK31pX3GiWoH9Z
Yn7g/dBzfd/F4CZRgVD+N9aE/+BWfBAxk5dGko0Ao/H61zg6XRkmkbwHWHE4QYSi+KQpSpBSM6eL
c0g3mbaHO91PkT2jvI+274evgPmxUkrfIqqt0YP297zj0FFpYwVkErZPiBE5Vgfq0L/zumBC4hdX
ggUJdnUFOxDwoWmz2Y35K9Vq+6B4TrLgeJqJQ/ZF3NFe+0X9cs5PGFtBEvWlX7umJ24P2RKblHOw
AvFYEtHrnbx1RM5BoFh/gD+FHKh+FumicrQFeBm2+QmhVl8dvIT7ddy+fkBAmsQN6K6rVzPIOUD1
iQA/sVogeAZSPs631pz4ZW/8XAUvvdmJ9oAQ2j+OGzunl2BsUu1GegIkpk29DWBu97gsruTaISQF
HATuf4IerTTXbmQh1THzunzeEU83Gu3qnW+vTO6A1G3p0KJX5XDk6ItZoyfhCaZVKI3McxWHFRiE
CCwa48PqVOahkvKYlm8RefUUruFxsDjKqA5EWlBs7Zs6MUJFnxCnc7xl87w7YTzHFvBmZs9TSZxK
j2yZmf1AtXpsbfgyj0L40phgUvDQBaTAdefLucv/lLdx1EDYXxtact+8EczZK9L65k7cw1BY6D5B
hfoPtIeyjbskAMWlg9wZFzBvws1PTsvY02AZKK9ylh7hD8w/4NJJDzVaqSjMo40koeTyN7ZDzi4F
KBqbZbWTElI2+F8/DKQ9SqE/ryyIlgYuR0pVyXkQPZaw8EU6L4H4UJWcA9IwuLVO1OKtc2Lrwyn5
1nvhY8dPJsn/NMyzhN2egdr7o2aAS6xPVWi6DOaCa5b9+StZcF/BU8ajfwTBKRPWgSu4RbxGjf/U
bSwO6jeMBBFvMnWM2j6XAjKdOHoDiz9QABTe6oc9VPW/BeW173C3WMUAnpYJRRpdifulpoj4Itqm
CttY4edI0kxisd4N4ON1V2O2znB7iIHCEhpWsKBR/1CVlI1kEVkAtT5NHTb+bB4XaQ3+f72y0UZl
pyP/j9RKyMcXJYhBJc8aav1hnuFl/0+Xnt39NPjyFQVPZuwoqSv98DqAiXKkMXpphjTIxyyG3VHx
zk5fHtHZOuU+G+sdsWBebva1+ZI1p0MX3jhHcnuihUj0itvWyM0RlCVaMofyzfpj6j5oxaicQej2
IQNsI1NNvFefvZ1PTDZwykXfVxyZDKfPNwssSvPE0z1hj9VJn5jCjSP9Fjkhxd/qFm/EhxjqaN5a
94wOeK46eAW64/Pan2dqzRJu+aMD19ADS0p+SAcn03Z8zxp8bNWLBH1MuVPYcKJgnq9VR40w9Exr
lyFSzdKU8fy8lnoOFH4tG92aSClQD1YnsFeNHTt8+DxKljLDIoRMmSw4uBItn8YIWo02ux4C3PAp
79HrQT4ReVhPDFh0AS6XPZ7wYaBlNMV4GFhIHdrko+SmpiHSJhdnvxCdSbtyLemNUWqQLVNG2Y4Z
6ekyJwkqRMUWCz9H0v4izsUMJNLRP4jCD7wg3PkuZsSCmlASGoQQ67dwCR7uNqIwoobRm1aYSMiC
7adiclsuGwnT7yvJCfXVt9Msgqg79G0YRZvIeaOBY+u3T22KuOAuOQ0FZIA0tOeln+aFO7gW1URw
jw7x//fbdFWxEXDZ4g7G7stf+jC3PiEiHBKF6gSoQY2Ar1p8uOSzzMUsebEJ+Xnmb4nf+/ELFl07
nCipL9qa1hFqihYR1ZqWDRv5b4XyY/QFrp9qwL1IgNPsaIgGtyWTIdfq//DDDU2UhM9vu++O5WYu
flo5V/qXZCC53u9ZXBEtGQly5pHYuXmBPMUL9kk2Mcb5VoOWDX59BKn6unrSf67e/rNdJdWyW+li
hklh6PAuHGP/aNd/Mrc1BWzxqG9GmOxhxO0M8cojSmk7AY2xDb3QgVWgoBumSeeTCOUhAw/vfc17
+zyw/QhvSA0cnJn+FVIil402YNdmQbDeyzmfUosMVvAQgO9wKkrq1opGXNLL9Jdtvoj27t+dVIis
bDgmO64vyqtj1awkOVj12iLNP/Z4/Y2R2u6iTS54LsghSGwq7kjqC1b2QQqWvos+MsfaCIu6PLFA
U1xTbOOSrgnSE530/EXyIEC/lpD989NLFMfC1PkJYeAFwsFbpIEU0a7EnhOyRztryE/tLBkt1jLH
o2uDAF3Ycvhsdx/WP+Hq3Xyi7OlzKC8rwYs2QHFD0x+kbtcN8Z2GQVV1xE2esyE6cPO6SbSRe1JL
pDgVRjK01n0NAF0du6lTraxTPL8vrI9PQ6fAVHUe1rrIeyNlH5M5PFIulsmZp8mVBni43KEqkS8V
1rbW1yVqKZpkbjo/QKECDrpB2iFfWWuHJ5qgANmV+itFxLiihdybIEv4jszPE8buJ7q9jip9BdiN
gNCu1Q4GbFcyiL9PZq43M5ZOlUKeSLwVwcCfy67xoJhdEN0ZWc0ZE3xH4Tqnubtq2gVU60KOmQ5Q
n7iIzkfGOzmA2rn3JNUJ/F6o2C7kWSBhIRBmGIXgToKoU9N2L46yU+hPfblWQJe081LzbIKf4cGy
t8A5nxN7ziQlA4I5YjB3bkqlyTsASu4CBxuh1LQQY24vGwrZLcLixHVMta2kdjvVd+bAu8r8zjMQ
jVYb0m5/6pBqQsbVdyaVKSx7xl7/hBcdQMGAfuLYDsPFFItoB66pfRYOpWJ1QdyfjMjCBPGXW2p6
P8qkeCAvjr5bD3J2Frm+3sSv8urKUJtnviV6A35mFOgWnJNdzIJ4lkw4wqzVgz+3dRkTnNXV/TSi
yPkslaPrsh18S6EGQhmBXD9AeY+IHB3WDYicp+TsYp+TH5cQ7YKbBKmWvpngsBbL07azDP7+nJK6
n6A2YsA6qDlhZn+0s1i+G7kPzynbXaIgntaZLiY8MHo11y9WTF8YZQt3rzCgKH8svQuq5A1Gslh3
7AAKzdk6tHK7gIZuG8Hg1etXeJsxoUYZoG9ju94Ce5DWv/rcasow+HwE/zUQQQ9kedIrYEmNsxb5
gz4vet20XsJ3xiDUppOiF0d3nySZkLfazlmLBu1aifB33pPcmDSvHYKDlhyaypdmYnU17T2U/u+R
ZY+MeG8oLxSJ0FtSP3KFdaCxsqETxWjno3In9jVx1Gjewuqfpibq2P/EPYG7+obBrnlMgQVK4LuJ
tQuFA9cW9Bw+JgF3Cz9EGABGyFm705hua7l3Ufhfp+S1mo0JYaoKVGLupAwm/mMhRzrI77iYGzzy
sP55UlvYp7etvAB58JJvBhBXsymkW1OkAE5K8Py6L3vlCCWAoHpR0mHq3CAIx3uQQK44QGO6aDHO
vKxwJ0GaItKTrHUDkTg6HO0OLEKG9OHWGgBKKC3aC/bSGov1YXSgemDjP+b1ez/Rh7hTrn7nYoEM
/b7M8hus6OIZhNqjH7iPVmjgxhr+0aTqE4u8CC1u+FVu01PQdWhZsZ4MvttNF5DqwS222fm4SYxi
RHHdH/uf5NFyfqYbScnvEbeUB6+ciFuQrPKWNj8Z6ZMykyl+HAqFQ3U9BO+pOIhJ/apSU2rsd5zj
oZSJ3bUzMoWzH8U3HythNDfhqVPJtIVYG/yHxmXLbrVnRBwqNvIJrrPJvFChLllQR8x0EuWGjhcu
8bQMGKLl+cJGtGE7ez/1hipwNqJk4HuXCn/rDCXym+AptOVrwUJazwgF6jMeOyvrQCLIrzJQoHPT
QtwBOLZz/FLXUbw3S8qsd9QXQZk3oZy8hix04KV3qSQPHLjyAQ7qCy9wndoKI/mLchcZPtUC2Wbu
P0REvJrA+DPhAl/8UvMh5Cs+ayXCfcBwG4LYKHljTG5e0IHnBzpYdIHiG8fUVApC3ORTM4A+ZdsD
8IYasS50mSI96QoMm9JwA1bvpOg0AgVqlVMd0Gdy/IA2hhVHgaMa9QSh34eR2yQHim3EfgBy4lIK
TACaOnfqC9i+cRaj8iRRatAS5PBbYRRZk58q1qGD2WkZDyYl5pN4oiAQnyBs2Kdh76/bYkz5N9fS
jCDgVyK8MIigbh+GUuntYQTuEVX+Hp7Hi3F8DNmz048Z2QEran+UEPeVX9RpyCv/8LN9L0MbJI48
gaUVbh9fB9JVSTfep2SD0CrN9fmBVnEKSkv6hT5taba8uCoMeeSaTRh4YR4K2wVs2blCrTZcoHqo
PjC4jNFGk28gyV3LIEH6HigIJJ9YAJ5BSRhPLiI5/vLOji79ejHBCdKrmQgbGrA4Ten1JsoKogKI
shO+4FKZuHIKZNP4JEZmQLCrqc3iZY30uTCnGhpmHWpmJyWXONvbTZFhxKumAQHn4L2HE+ecYCUC
7Pvb+0d4daNLQ5oY7uJCk+lRKH3TF4/LbKTigG/MnWmsgrWNHbUAAS00nm5brlM6iE631whtlXqC
fFi//cP7sPfoFeeGqP+2Ym5isuHtS7ZOZBaPK1RMQ6OO0wwsYvSlUTDbNd5jgIwOcLhX2AWZBdDl
cUR0Eb3vGyilWeri4zNEAAYkMkSAhA8fhJKSh6pvfaN/dEA1+Z6TBIk8L6X9j9SLyqL82dBGW8zI
+jrQUXHpjGFFcgZ2f0lJug73DRlJmkX+L7+MQrRVm3qtlEE3zqleq+ZQ7a9cP/o4iR0j+NaEzLWI
lYR2ENo2lVhPiS5o7h/anmlqJOEUyTJzawL/Em+TtsdnfyTmnaG2x6g82+peATSnTse3237jp2ZF
s/H4i2vYWA8TEHVXkz6s6I31uZqpl45IwDQNe1vAtU2KFaIJmOLPyvM3wtSz6Q+XYwsNW+kIRqQw
LftXYEqreqLfUhlrUpb60HKIR7E/KHRGn93i2FExxLat6N9AuU+rcFIh80cfs2fF0H26o7oAV3sY
pESI/Xw3fi5LVqJrzZqyaREJxIn+5x7XyyUikArgPYnvD6P2cHfjT0sdLuPfC08DTqTZL7aYYVs/
TY63/WkmfF7U8j36G+eDM7TTZE6K653KPwj93up3pBPrVKULTutr5+bxUbAobUlmxFb594kHsAk/
c6LtLHUHMGVQU1Fd9DMbs1ZddYCWpFp9BmMwXSVGNFj4EJ9uAgjM110oAUf7BiRREr6Fan2NmT9m
nRi85j6B8DuS8OFXW6huj+NiJIRuokkYMRf/DMY6B1LtUgbbqvBEaruiLZbTS2T8gCj5a6bwyZSN
1CuCYO7BINEub31+w/u9l1iNZwi9wwh9P+y99RrtF5lm3raAKo5jIKzPzJ+PHUiVwQVOFxvZncsd
tgewNH1JVSjE1pb3a2BO+GLvq2TUNeSrYigq770aWtT21k2VfEQ8I+kuIBU+Y9G9eZpNgut5sgnw
WlJry3o7/5O9tYPw3NnzvFkDtXjJC43YxY3ixK7KsbLH0Wi4ftezR00UGN6THdyq+vU6lVyAYL4o
5jhAnfsW+xTyog8fxoZK8/0+yhkZ7PlQlENsAnHZXI0lbyp4fhXx4+lf+2wA/gmkgYksoSU+PrEP
Ziis4erHyihSe0dOe4NOmc3tLmQUcPnYPzKGItuTc1tx4ecLPiVEDMk+P58pH77A+CZQAjG3lgnT
94FoiWNm0mtkBWmjKpXcMRZ59kjqGB1Qv0F7Ozqp7Rc7/UbLw+H2HQpAalO4iI6QOg97yTeqYFOg
EMorOdmm1WxNH6DSsSGYhYk2z95/jLxRGYLT5JhvVawTbljalIKD2YkTE7vZErgmEPJwRtF3r8V9
erFt8fm/ccn9oEllTKBGaUin+AxPEUY7+Ms9B18brtC4EPh6A4X0AD+hyR8rGAWEhX+Mko7jtjMW
DI+NAF2XaTPuYLcpb1SSd91Fqe4TRm/LMsOFr874Fld1/QrBXIx51k59I1IRyoKL+2BRd2jJx2zs
N2B3vnHiDZ3MDR08YkIyoECq3kiCPgHoHZgihyppPVagqsIEBD1gK4KZUCw8KciOFIbWhrciizcc
Kl7N08ctLPMKz5tNNG53XlLEEquLPvXV5Xj1seRNz6BVKalruLCNLSyPs2CX9fRRZss0T718DAo+
2T0069eK+0/IOqHopw+vRKLSm6nW5Bofjn2zzMZzIUhTk23w72Qu8jCbvPphAQZ8Bi3+KQCaVMPg
JqKw65zSgyDSriUbvQb7dMLqNMQp6au569qzcONwSPKWihpQVhREBGj5rDiPvoF92CRUqF9FsuPj
A+v5ofISBqmpPhBn+M2e8UFZaFMoymmzPQGNerxl7X2IJguBHBhMuLVUlXxbwlaBVaOHhEmJZmN8
b/tpISBQqmss9fN7gOvx8mpIty/1b29lrPUagjDSkfjnATrMC6oVfzt95kfXtyUBSu5/ix8eqTl3
BKGkpivO9NV7PA9LYHbqaE8VGS3WKS619mAlATusWx2HuONmaaTVW+kl8CkxnaKW97oG0hsPIjQ6
uYOj0DpEDKZYDT6mz1/YvUNKzMG0+N2xpeN7ld2wQS3S5cTb0zFRCzlJCb0lrD9nXfi6noGQsjrJ
PWQohK40QgR1yFTTi8+Wk0BdKZvBl7Dd6zp9faP5tf8vfxe85GzNNkvIMzGqKt4Vpk23OwhGSZL0
/HXvn08gzMDneDwnd7mmzaE1FQMSCvV02q7GZvEcsVSHbCU0ha6vUYV7ploutVjHsKF/1T6OBhxh
odfZeTJ/2mxIrU/i/cTJaFW+1aNAFUooJ1zJmdd51rBMUQsYsI6ytsB8cfj4MHHoruaoVjqQKIFo
Hd46YgmKqsR+mOdWSLNJ3dUPKGo8hxzovUM3Uk8YmVnHyQTifeSGZZQXuij2BBfbWgO6gqnGAIUe
TRGeqL0+aTcnpxIasxkZH+hFo8poB8sr3ixEQcWVNA6v6FDuc5SVoR6F8uwZ/01QqUIWoeqx9+Vs
+9Dm4e5Da3fOtgzHz171irmnyjkkbWndaBn7bGgEIe7nzF/S9ktclYRVlPid/FokbtnsbB2O4DWT
Z60NOS2Y6nbHtKphOZWQvtJYkxgENJtuCnU7VBN6KU7OOVmVQ/havWIc1DUnt4IpgtNlu7J+qBoK
1i+vev2i1AltIUCJkVkK8X7JZgSbmZOsLN1ZmnaD21MVTRzlD8JqvzkiODg8mWcMDSPtfFLliAGH
IPTwzVduOF3orL8+i6ym9pGJpblbjGZoHsvgHtciAAcAzNAMob+H74ofKKjAtKtZ9vWOAVTZvXAd
ZlL8aUGXJUuQOv2ZCzu1QN5xXS3U9xJHg8fTmWtNmX6Ai1lsrrf71+2J8EskJvYPhlq5+fcpLziF
KPLie4u+aiSaRVzHSuhHVnhWmmcO5FpB+I+0ko8w5T68cpB48gVWk78v0s/UJXI9dJbmmptPbkke
p7XJr1u8SVYR0sguvwTZqQjwMSjBvkbC+3HIWPqPzPrzlBnGNU33NR6Vmy8i73ys77NxbfLh9wl2
BrkpKNUQkkJAj8lIS16/Y3lHyMd3VlKlFaiWtLu+iIqjblMfX7pkP81EBGsI702OjwiwyZmQmu4u
LuRp6fsyI7P/eBa+fQeznkpa30yPloId3gNyLP/Ybvj46sFxd7PsyQ4A3xCJW0ZENenqLBdhuTrR
E58XU4J9Qb5HVRekNj4aMwuWAKkTxzv39FgWhi8IKJvQL4jwX/269hLotEDdmk8RWPgcNyL15wlA
NaSbfdqPVQvabpEtq1AfsEuknUCNRgDmLN5ClVLg45mDhV9JCvQgOQLDPgCdPdL99BbBTqklRpVx
LVX8Y8MWHmsuY6JZWS7KYi4+nT53dbxnFanmyvDcASoVYHZdfa/WXQ4T41nFpmzH36qNJhQe5ez+
vik8jBxR/GZollgDPytsq412fN/kNzTbAsU0ArTZ5tJNbM9LeWz9a9cSawzpDtEICUTlX3cSAbpy
PUgxdcdJ4MCGE6/B2VIRt2geDflINhIIEM+qRuSCZCQUwUP6aUSz4YFw0BM/UMpKwGK3CBkO6QvR
i32+R1uQOaOdZWbNUMI4Ds7tTLmLp5Z5r2tKSSr8Zq/XYcytjQG1WxePKdgyAdSZRYBmUhODvx9s
1JbKTIg0JJVtimnV4PHwRbbOUoHu+JT1QKruB12vFR4YQ5AU4cshpGDRZT+RNICWKDlIeUQyHjdw
LsXFBS0gO66x4Rd0Y6bZMfbtO9xe4glOOfVerOg9Ay7nWrdu7nEzqDAkT5Ua8DR2Jaft1tIRt1De
sj4CA95a0HVM62K0cgtIeipABvX/SQOAMH83sMCgVXCruPi1ycyFCkZmnsnZxpB6m644gyKdVtuJ
Ga5i87jdXuCUZ0M3F82HCiEFipDUg38eyrKuS+zQkYLN+JX8dkl0yH6Yxo1LjOrA7deyVt8pzbFC
iBijSsGb0SkhC64VPqAC76IkZBi4usYEHNiESCIwmGscrvmDa1AZWuT/a5ai/cJxSI6Lwi1VAogT
YIVIw2yJ1/exd3LlYwBnkV6nqhVdD5EcDI6CmAP0UOddf95W2Z9DwN9dV+nHvwsnu57zFQSjiaMS
coaqZIgf+ZAKKVRlxFeHDKMyfNiMHJ7ab9LXQEwLYEiNCWqocgnn6FLmvsynK3I/bO6JoOw83m5c
+FG0mfEtI2h0Hc81ozRR8z4h9zm1OLS3MYzQmAqMqNwAsuFlnNTeXyxZtulhqkxVcBvrYrsQ66D6
gfh5otabDkPjZGWPyBv8ziFUxgcWBxqy8ut7k7FxqT/zPzuKgPvM/gW7ITsmxVWT1Pq08TtTKCuW
CQfy3QlE+MN/zrE4yutjIUu2i2gEq9Eh/ERupK+L0smvm2e8eNGH/VVW0IPHhw3VWoZ6AwgMOwYZ
oxyQSgseoECLRctApGbhxBM+vodxOQyFsklxUg9M1Cecbxzuj9J6RXiwbbJXJuUXyhqZc58xADlO
hcL4Dd0HwoRGGC+KRbQShO0RSYUoaEGOlgb4NwyRHByh8Z8ihg0tYBgM61FKygqF6WTxNZGb9Xhf
KTZAylbkv/EydrX/o9nRsIATTLB8n2zbEsSQ+t+GuSN1CNZPHISIK0rn8gAAPo4r2nL64z7O2pA2
z6l2wfZvjSf4CB0qKjs1id4UM/5hiSzKkC275NV58ZqDIlBbxP5CpGqAOm6DTIfaVt6t24E6b1lf
hUMGnugorpngAjzY5Fl9i+3MQYSTtbw02oAMsHaNnDzuWNIkHL2EoZ2fprCG/q4OK/x6Aijt865w
YE76g1LUSQOjBz+5WWNNwLTD8xqzTpulVugD3qTFeBlf/sb+DHlDgXTfrzqPSil05XJVWbeEJIzr
+6Tg62I8ZdiLTqYQR8P+rDNdYyZdxdPgef5WWnQJaUm8cKQUluQjJG7hY9sZKit93TYW1ImFvtGF
JGEOuoEvZXuT5pRt94kJetOD1D+SM1+KXHh9jPMM8ePasZNIDOO3Y3i+vOWo+O6XuTaEoJPyhOlh
nAMHODZPmorL36tVhza0OI6PO2rXEurlTcOHiYPtx3+b7S3AWCOCujgyQ5zCKKVeBziHbxOfwvLM
4JvMTXpqCRfKdgsQRqy5xjC3IOgAugmFci6iZdcVqwMPjxQxj+sw425T2fm9JxDsg4y6lWGbzML+
Hb8DCwdU7cDU2ovNvXLzCExUHGA4WnFS1XZhlB1czk6NoYDO3AMYvB1vpFDscvUx/9mgvxBvT+Co
Jxj8YnvLpddz8z+DxmSYB6BorgFVeBpYKMz07FHPaIHT61yUbNNZQDwU++bUH5m/yuBSofWffYR+
JrBULkb+UOAkeQmgha/FRqEq6YS8Icfrfn92nEjJOph5JTNgAa7pgV/74ZMnYZA11X2iRq22VC9F
9PwjcqttC9rViwX4azf8pOvzh4iHg/lF9e4AQZs4oZvP/AI0G0m9j4MGTKL7MBvdoZI+60cntYul
eyD4q9uGmY73tfdqT+969MXfM0u4h/1+2EfrxrnMkeO6z0y9vvHhkFH1ecCvVVKwhWQjrznXjKP2
+ce2vSu/5j22h5C3KAKwjlHohzc1qtWaOdGklGxzjH2nme9++V+XBE9H898Cl1b5olb24Y4xeqYv
Y3TcfG/ffJzgrQA4xk4z9NC+XDscyhZ2DRxUDVHefZhJc4VSnEtR+w2rPO1ICPyZnWri9rOdKJPw
U51b7hl0su5qwdAN1yNH4KEKzdff4IEYLlva+qzKW46nOfsSNyCXmJzUWQkZJ9+BD0taH/xUIV1L
AS7Mb2JTXXMV212/PCS5xfn3aikYBfkOuj55TGPP4z3O3Un3NSRkjLrSam2TqeSWt1ue/5w9l74Z
DgLJfx9xX7pqxzIo6VLUU7eqDFwlwqt77Ug6i3SGk7zE1yuGfT5zKDUVCQP2W4D0rvpnTNZWdTEi
eoQ9wf8AkydhTuU/LZyc/X30/udMRIVkz7bcGnKvkAsF8b15URDPUOxJnkCmAejF27QvW54m1rVS
og/Y3I7ysmD6vr82AcSrvmWQ8A4jWXJIhgzaLKSEZsxhhVVdN2vSp3HYP4ZgMjsbtUH2EO0EvV1P
A1Bo1b3tKulwt4+rHP07/hWw0yCMFt1q9FfBFI154iNVXE9tRkdMZ9JIR4Lm0PdgSmDE258sVE5N
MMF6w8NQihCj2cCZCJ793206G2Uc06WPGjgq0+pFqBAhufx306yGPwHg1WUOfYiHCZyTe+UVrE+0
RgRwS6xVPRDZ0Yz8ErFYP4uhwZjMYyjwEW3Qmizk7On9kCu+VDgupzTKVJbls5p18DJCAYHgIPxa
7ka3MSnr9Xb0zXHyZncp+MCzkJehUskEqzJyhPW/Gjn1j8f2d9fwTYQz5pnHjiV13tFwWG29mg5z
r+siR8NrN9Us1kAxemUyeC8va8fvYIy/BfzrCtHxoqRhMxYoPMabjGlKMnhZHjltq7sWgQZ15inW
Eop1xvtKzE+Cl/dGQiZBN1kl2p/59w1Rv0fAfEGUoDTcWi+9SGeMY4jzdEGtKPar84/UozkOZGVL
ZITJItKDDD9IJJrS6YqF/r/oMNM8MPNviaXYzc06VCU9CfzwecaI3ymgHiFj9pg4t5DHdsN8aph9
aXsn5mZVGGme78yRqnDDiovXHHWq1bRVvY9nidP6fxC7YBhpPDJ5dUckQvL2q3V/9+DKzPBBpWRA
vi09dWWKIcIIM6rkEkakawxM3zsBzootrbxkAH/yIKqOdgMJoeXp3KsW22ehlWXloIOnlPYkHRh7
cwewQYtEJRE66B2MuOFxolVDaZ54hdJBe+FwAyrHoDGkEjJDMxcPewix7t2Z3tg9Z3KzjguOfWqX
vUnIqU7D/y7AB5+ZFsRqlbAoCUP0vDjWvMifG15Nlo4CEKfrVfRtO7C/x719n8WwbyAqMpFQk6pQ
bb80l1AiNDSMUwXZh52LTn0GaD43NdqZqO+7fVav8l2rH1irVoXT/THBs2Iyaxx4Rqys8WxbLdzu
nRUuDmepqRYqkOlc2K67tbggixzVLSfYcuvzd5SG96SE1SnW0Za6Zs9+dazxEuUKi6C3mAFE5b6U
qTdDtj/WNr119dh39jZYLzud3rlu3GZXvGKy+83FUImdpEzHv5IdQWvIV6kcB9R/dGwCzb2wbl5b
j8sEMSilPilmwZpBG0RAAj5wDini8b+B628ruA/rUtAd92KEwNTNcKZo1vkJSCy77lwPaEes4Etj
KOL8GEMQOTRcNNJdw5RpFw4PVXuK5ZsWNVpSIVTGMrwJzV4spozc2/AG/GCHzktrn+FkybxBGNVH
bB1UD7zW5R0NlKhqRjOse9wBMh+a9QyoHpsaG2Ko7X8C24q9DnNckHLOpfZW1UJTzPDEgkz3mVGt
QjmtMhE4eTFB8YTLfsIE1iirE/yuNe1kYzIcZUwPibh9LkyD76SSwRc1Bc/Lt6WnZKxhUtVGbi+X
cWXqIE4v65qVQ+J9wnDcZKx8BaoB9tV1ckPKknXUWbEoatF/so7bdOGbCxVnKNqRmctTlJVUrkk+
4oZiB+PAKTMbOuGdgsDYEO46KT0qHls1ALTBsDzPZ4iKFUgWgfw6iey3dnTKle70/EjwTmXyfRRD
q7u0n6jRhN7ptjacovnZaHpEEFHmslf+eCN9QxLrnhA38/GRin7Y8+RVm8ldgN7fbAgrfaPfAfKi
a8Jve6dMYLhFy85CgZCsBLSNmp8DYyHKqUXG4a9JQuiUBbHHaZsmqfJSSKzaigiiyMRN0Rsi1Ynl
/K2QPoRdW5aRM4P8FSBvidhoaqKSX+cFfHx/hXCRI10zu4H25TgxwT+lL7ZYZRqTLnBUEn2Jzavs
SWh7Z2Lb0dkrzgeSFo9GG392Y35gWt9WJpPTf+xCWZCREJBZR6mHLCKa8hpb06fenEjpPloC0j9X
/BQQ7ZlST86Zk544QU5it6mrLgTT3qTk+tHqW3orCNi3i9kkefKc9XXIUJi9Z/azr2hpSf0yTjzG
TEJ0r8YSvysAgyNj8UsP3i1t5diTsNk5RE9UjzE+/EHS47RUyj7rDFEGShE4cIWTsYsGJ4rVavog
07kTYQFHAmadBv0lNJkjCSj7D2YJGYpYBhK/FWLvZhsfJC1oqszFNeI+cjV0j7H5UFJ59PnZN8z9
+MVams/BcaYDHdwILw/va0TGX7jlbs+39Ausfo/f08ghLX35bhAAC/AUjcpdgoZNgafP8Ss19OPZ
qCRFk5nnK+NWnHos+nsp+nrL/qq+Nz/1NOAflgWAQVtdc6n/LSRgeXddUEDh97behUXd5bEH/hMS
KdQov3k0uI2UCI7YJ/kHfN99gkFhIQd9Wh/qzLgNjrU43q6cZbgyh9WfA8HDYWsGjnh/eqDvVZ4Q
uc05QlNKXrK/DBJPHtt75vxACoY7TtTM7R9AZuD0DW39ASXz3F5Ki4HyKZhdrNG0TFS6dDEkBXaQ
7XC2sabR84xzkUHHviRif8usw5/Bf7lk9bYAsaXE+17vNYcUYvi9qYd8oO19LCP7Kxj7yZ5YHvuq
vbsG5rlmbz5UX7+4C3OnhKYtvDZg6Lt2tMP/8clhrG2CVrxdk7A5bXA+pJ4NLvQG8ZBM8JwzPFx/
OO4OQbUM4X28dUDpmQGUHiKT51Mati4Y82Vvd2La/fZFl4q9OTgFilKC7TGpUiw4IukX1tSF9Myi
l+pibH/pkpBHyDlvMor48vJlw0gXLpLME+d7Kyzre6TGyZGRj27HAI210VIZ8sU0QLOkIh+oABLF
x2fe3tJWEB013XnOnUsPggr7uBSzb7XH0eTyU7iPzwm99Ub0ERL6aPLznu3JF06svO++u++qFz4l
QdqE7MSEQr0iDbXpF3g/dQPLf7+NDJkfZ/Eg6ty1Ytgau9QpuRH8LBbkXMgkew7ZM5yNUM2VcS4F
ECTV39hWlnWuz6Z607P+VXjBZ8xDZIMSvfZFd901mnUZP7DfRafCOxbd96fj6OhZypZADL02YFTW
Jabuo/Km6u5GreGJlV6OUCaCjPztIBpT8FtJUMmVRYtLIoGWvnK4Vvg/CruMa0nWW5Ka6Qi0eGg/
u4/TfOtZb6D1HmOaBcrvvM9ZHzcab/NB9myPyol3aWabcK0myVh6WujfO2F+ggj2WOiWcyW1iYJL
kxkY8cjGlUSupPIkXmWn3ebCqobW+i5dQDqdS4FkQaBEPBNzH9s7zfztN6MM77Kf7DzuNWLvGpEo
XEKc16hNgb/TJjTS0M71up0v4BblX0Tw0sFpSzOqrnnk5auA2nT3f+QU45DroKYbRhmeJfWZGZPR
TD/Yh2fj1iFMWmjuOVuYTPocVJBfq9Gvby10p3YeS0Je97BVu1eWqGC0qiqBihlYmuicCiZ8K8aP
5xd8cC7vUFJHLuzDVFLnU6ossSaNGRaXhSvqu4WRMtBiRZgOsNXR8w52l2CfOV2yf7bzFxH7WB8T
Q6qAIfKCM935RpQ1aPVNOY1HgVGP++pDK6WvS/6CtLTYCyP0xd9UGxE2t6PY9QkM6IabAhT732zz
NhUuXhP8GC/EzLrY01KKg0xrFNPjt2GPEL89X/tlDtysrc6bpq+f4P7cuv56HmxJn/jhgOufq1JC
WMGSQTVRdUE7eFb9vIAEkAnZoK8SC+kSYSrmLARNWiDiSkUABzDLGa1BdDbv9aXdcpJJgNY5mXEZ
0hx/RdoZA80401tK7LjHQZVWOrC5BtMhe45t+TCjrqS6hCylxdzLN5dBhmZ+vu6r0GbLMJds7CKE
EFcdyyOyISIGMPVVervSfydcEVyxT5/1DDKGJw45zJ8RrRJ76opBtdzqMsMBFyfnRsRbnMrt5yoL
unEYVDI6iaUc0U0eVvHyP4hAgj4DAHDDF+YGJL2deQvAsj+6vcT2hwGzwyfx2c4soZlUP+Kwph32
evCjH/XdlTrJ6hx5Bjfj+kqeZM3nZNREbb4q5Fzbvusqqj9x0W5vKh9G2aF4OHvZoFfmqQawG3E+
9c4PMV9cH3ehBXEaqgzr1jUNaGKrrf/pS6I5nRxJfqhLxuMypaFZqAI5BoAXozT8CZSx37SvTyW9
DCGPlE6F/1eDwNzbd+UM6/yhgHAWhmCMcZ7zHSSNwWL0lLcPY44wGt8aYwHQhGcvxgY1MllGCRI/
/svPv3eIs9LlLkQ4L0XDhK5tMNcmNXasgj8KYWC3/afKceHB5x6mgwzyRNPiOuSDL29KnTSC+p3L
xyzXb3tW8Zrr0BIvYJ7kGLaOhJsh8ItF2p5H/r+ef1gapogxUIk9krqygFVDzWeOaGjV7TecOGyY
1EEQww4QeY1X1zttYcmXiy+D2Y59ocovGjTi6452PV8yiwsZWHD6faz120PIFyozatLUXjDdn6Ji
mZ6+drxRD2K7V5XEQW3rT4cOVVyicC5noq5rw64mc9YDHeP+mdpSPW/pD14uHVI/tOoksPA23z+p
Cig8C6Ror4OfrNtFrAzuNQfd/Ah40gFl3dPxB7YzAouetdPVpSb0EjGSfrzX4iBvnHk9Lrtu2G90
seJuyjCvw69ueRsoOKxYzL2CD0JNGaiga7n47Ta+qXP5vosvvqAWM44RzMYavfcdYhPQLW4musw8
iu49Btbpx/0knrsu1/at+ZDKzmW6Z9UpQvGccafQygsAtaTxRLP8D2dDgfIEqiWa6j+7+N9GWM83
54nfwzQI298aXuEzTLz4zKgTMl9yKdH5QJoYGsSDTUo0IeUXdO9NOk+SQS/Dje0EtoXzd1/9nUJf
5voagq+b5eJ2586iEj73LxkUuGrsFdtpTGi2CnP0AAm+9SeEZNb/jmUTywE+s/34Ety596KVqoak
98xSkLyCDf58nkIwzRrWMAOJeIkwMCXiL11i33x2u8Xe8e5ssWHRVDQFo8i/1N3E492ATLXlYPy6
JjWiWq1grnMT2bhtgHYuL+QmHUjTgkiHp1Uh1xDCIZoEj1shMXBrChT/1VlRQdy0xSSm8UouKeIt
xSn2hEYnS6AZWXQf0y18tjqH8fKxNtkY5Wf6vI54uD1s6iZZACjGLYUNXMms90WHLVgyW7Wod6Yl
w448s2xz1J6/+uJOgHZ8vhGW4FKCtjNGD5qcSgRIyQav4wWQgk7FsEe1SSXfP/OkZAfA4pRgSQkH
0rXqXB6AG5CvVkTpI7ir9d8WhS5d99KERlOMnVpUXfPswbe232TUivYxLXgnCTmnHeMMloT0yFGy
erVmCbahhn+jdfPip+VejL0pirM3/OirIQy2BOR33g8M2/ZpHXnKnqGwrwDQj4/tXaXdXNFqIpLs
9i8rv626TaEfZLdCfiIXVRxj487UqxssVsTbDrmZIEnaCKtQRxFev7NosKMSyniW4LBrEiedmnnz
jIxS2smWvug5TrJMqcddemT26EJ+fcrwlbBNKXKzsLzSeANezw3n9y+z73w+ZY5GswcBb5fsg4hE
EaEN+tbpVQ3qCc//Hy24sBZ4zLK1kaqxrQRaZjloyWaer8syKcrZQSnRF+Rw4vuTY42vaLgKq4g9
cT6y2OiJo+DE0/01FanEHql7KK+/rKbEMQfarqk3/IQcUjv1WEH0Bwm4N/FMHutmSn4lp7nJy2Ig
yrn+1KDM0Bb/hjaoOfQ7vDwE812pRxgdWWXcKiR/6eexN93En5w7aRUvQRJLDi9spEXLRWYWTNPa
ff77vE+x6N090X8lj4/pkBznhNw5xmlcnDxUX7RNIGRISI5ubeuyma6pb7vBo9b2t68SLwgK5wYU
fRe0D2Qxlpl7zBjhp4YUvEmOoRykQ78pBpd8J8pJaSAu8L0Yah2svlcCJy2en/dhhVgyMLs66+TF
n087lCmKUdRbH2TekNiQ5Tu6CXepoI8KGK1aDuV0NIrIPnQkbdvARI0U6qDDu+1BeAFzZjI0xJxJ
qJHeW863t/3vxxfpKB5Snwf9oCK8ZHI5DD/rHV5nkdBNxN4UWFI7G9nAtkg5lNgQWLdnrJ19sKHP
2gsO0S1p0SF9DcvwbcCRyY84miPTZ6WMaaEnT6PT3+cufXNO9g86tsq+ILnZ8C9618bBA6UKa8at
izDAEkg+kypXsJkWQNM1yf0cFvMbef/fq/8kFmmmlw+aZoCOl2uNiYaJfgzNc8BwisZ+rLFyunWa
C8LMFLpnfjag0lTKch9yQ6LPa3E28XgxezZk6oo/Bd/4xmRcrVeSkvKMZ+1b7G5nrCEx1blRR8wc
JTz2NdrYZxwKnTdQa7V7kb3lvalzTTiHo4wm+VdjFChD/c+Qxi048tPEvWbm0FXktY8/wRd75GMX
naR1m++J5oGkvSHhCt7kmx9mbwnf/UBv12M2+/3WI+1yGT2qqwpo7UIoHGK3b0yKyyy6XQQmPHZO
8QsT7Ts3Dcr7GGJTw9DYE6i/tw2NMHoOSIujnILAM9cr2Zif4JDt2GkDXgkdGsZbpLAv0v3teEAX
g52l0kEqeKoFQkqJgQ4Wc32C/YiuvijrFquGYjSF8dXM1x0egvC0pAo3VFSPhovo/nZ40l+Sg+Qx
/RSOYg9aWNuVhxe0mCfbLJMPky3capN8Dly3Vp3RCuPiPA1tHxOSt1yDJigatuVpFaFO5fsY3lTu
D0fmUc+TBMqYYgdBV3+qPHj1vjLR9N4m832ennfKkAm2Z3eGvUAvyNFAqO4QJHM21vhIC7ZVRR76
RVDeCabnU7JLOxDsYn6qLhdMFmc3Tt8vJA4SYjjfxZt5c5YhzpfkFiYwZkAkfiWYbbAMPB9EzTKQ
2u0HQGm38EMcSE6dSi+8kSfxhNfOZHgq1j0QFc2OMuQyFtJGwz5AsjhKvGERD8nCNDjqyXWbeVmM
s5I8vuUCnQVpDfOsj1NtOqZLUVw4l4Jw7Y1aXuRWS8k1QFACK73MAPXlkU4A9yJ17Mzg6Qxt15up
jeb3RtAz57krVrQzVgtu5+wq41hw4XMZ8gxjj51wthwgh7/WMe1Q5sYzQZ40/piKOXe+dHnmOJz+
c6PZwcJ6SEfsI+dED/GjPOmUdZoo9siRopGgutomkwGRiizH3ZSKyqMjmYvdm0uxTVlzQl1f6uz+
1KaNhYQKfaB6hKTk0mkxoKVe6xkDf2EqArvudAarI6FdzGDYxsCaDkImR5d9mBVT3b5OAN3Oz/Ch
QIYBe7gWTD3/bS/8ZEpexTR3TFJXReFed+i+xVaj7OsYOwOowskVAja7GlxeFNiXzxIPAnQlftEX
4qeG8w9kkrRMCP730+8iRCawMZ5Qr/2GNMHyx+EaaeNP4tm2exBudCruyQjTN1OZh1joaWOBgeV4
NzqpPocuid/ymXF2A+kyHKhcGdj88D35xMgNjgtxssFvYIkf7JBqNJDE+Kyv1267LE6T5gP1KI+V
W6gK+GzIj6nAUZv6hzc68TzXenC55wGPektWQ7IbPn0mXM6tv6Y5aeYzLJJjBJAQZ7r0vp/con0X
YNHN9m01Q9NxOQfg4/uaDxHfSXzSLuTzimM6FstU5h0/6SnaTR6DYauiIl8G3z3tSmSsh93I/Fgc
DqPbaLL0iPK7/VGMD8GcLb96jiWXEQfy9/rahtVgdInXpBfaQjwr4S9+/p8rMJxgHnbHf9h9vZee
0g4hfTU08trjNVRL28bdaaL8xtTLrXNNRwmR7z92JCEB5sv+I4iMQmco5vAGUCm3bRvAxiOMbvsh
m6s05MP2LdfIRMwVOQLGaOrvynKxERBqOJYtHqyLtNSGFyMtgCohy2AQTOQMCgF7BqREBK4WSlVK
x4ElD6MBhMiFKiwXfurLlHDJQia3UD5p1aGVGXeIjAInc4HUnckPar8gjD9i5X1OVw+LYQ9zRj9l
tT2Ays0TQ+ASLzNI0rEJL5ot2VugFguPoq6xwHjqna5Blzq6K4M5qAQRNDjLNi/ebsxDMlWrGmZn
JaRM/xHGKHihL9/FSSSY2UBb79xXcOQACVqbGlToPCtkiZ9ojrzYBqun3NW5HaA59/9IZLUoztiC
jN0JyZsJB5hvkX0DCB9+KsDDWVqDIoTySM41Wz0WCkDPKbE10bGRkgtlVb2bgFeU2uT357iYO8Jb
2llWZVsuI8DB0zlpi5Yt7nFdGNxf79taJyzcfih96+hk7vWQM11FzU6IwefubfOXhFbzo81j1gm5
FhPuezoUItt3I1Q85nXlkhI+NBrDZT2ak2c95QgM1EkfnFfQXfq11JCxHKLEfua2ncUpf0TIoQhO
Np7NVoGRHQ+5PQMtdUxTWmLyc0XX5HJdFqvDy0hiUj6DxIsQza8iMwiE0GbeuX+v7T5BNODELcBL
CVtRUctycb/fWpj6fammxMoCBg1Zdtbst9gsSY63QHHYBCISAPIu5CVcM/JBkHsyi+6773AnqPI4
7JObyx2VTgZjdJoCLJNU/zjmgQ7yZVouax4R81AA3nKKkRMlLQpqF/1WXE/z9S35OG7h2CMbzhCk
mee8JeEWC8ZD55mpa5HVh9aj2C1rdP0b9FCOoCTg1vBuS9vOXankfDQT1UIoar9aVVnwdGUO/GZO
svT9IWWOMOg8nYSAm7R8yFDMQ4Cu0jXUoSYZoWClUbZf6Uwo3jWyYte49O47s2Q0MLwPClxAQWTv
8GJHRILpBcPqqwZcJQ2r9nMQXGzGragh5oBiIxnxYWorcLBMRFr3jZQCG/UjZpNnjv3tgLuYWL3e
2ESACZwAMLH/UJmQ928Gu6vHTWkqhZA33hiv9OeFC/3pfeZk8Ud4hNzomL3lmE07JoWPjqzxZYKX
cFlUlcV733K8ydrf+Dri0+AtN9mpSjqfqcJjIG4JYOvDQTeOXH3zxv4/Zhhop1pYjb69FF2Irj8N
JaAoYowdZO4RkwepsnaEZyVsM88JkmBNFRShSoyGwJFb+ojHkwCAfoKjY1X9YWssD0EYnUYj8CjA
1MWzFSliBLsmYcvaQFTNzA1mseZrhzh/raz7TdQWEk8H1mCzwzFqHUgzFTN+L2v3y9ekI/wmnMnZ
lqFGqyBK9c4UWIVFD2KWsozO6QKUwQXIVxPpjqUMoNiilPcmzX+luckYzdnnS8FT1BnRSZJb3aM1
FLwkNU7ilfOGJMCgUV1bngVqdh2pFffyKzAsswjQE0tsl2fMwTWAq5ecLbgE/pQ9v/ZLmvYH39AO
YQzQ/6vl1dt/4CUR6MfKookmUCSc+ALD2wH44ccLvoplnIBTg5ML/FSOSAmhOH0tiRhKrBt/f4VP
iJhp4X+DE7zSvRjsYfCa5q7gSl74GxSMI6tmHZmR4nuc/uGrR4rP14FaDzXmPbyyZnKuvBXZaxUK
X8E3dGIBnJZzm3vbALH+/5CFhVfxOaxfv+ujYJisBEP7VHsy3wiwW8hyQ/7IqyPPJ3zOhmXR+FZT
/ch8V1ZH86XTz+E9l6ydCzcwV909lnvURBr1OyZpcLpyOOXySsDjFD8i35Zc3AYPu7Ay8FTEkhnM
ePwkIrNUF0wle1InQinosOtLnGy5GjcO6F7rRJdKR7VLsxA+MqR45llVK5HddV077+g20Rq+oyGC
JNGxT2P4e+jpaW67dWIGzKyV0tLKU2lWKlGY7eBrzQrO1Li8N/B7MtkkzHI3+5mDlrzTv9aWHO4T
JWhMDD2hUnle2BEBpoxEVZE1iaoKGy2V5H2BfZjAtCBc9eNYICDAHLLiQ4Uu7B/85GHnNfaaxxKi
kmTVunIb6WIJAtyO9AkneNJ2TIViRdhO6b0WXG9fhuSJgEPft2C5USDJNXam2vMXXayy/jIG10sq
AnrshRCMl+XnAq+wHJJThlYyqMZdtkhXVHvZ/VmoCds0dmjD9+oN8hMMIpEvr1cRuVduPYiqxe6x
+Ju+NkR9wJ/fu7c5QTRc8A17btKLHt0XuUNymM9T5Jwu3V0odwA5cHnLrOFz/ZSvq9GaqfqNBAxK
xmujR8/nC8JWYbfOnb+hB1dm+Kvi17f2DDO2ekozqUIjAkkZXYLhJIXp5bLg/PN3diGcdjABgZxh
AGgWk8GgCKxXwd6Kau+hcVaLg2UnDTOdFmsqCuf0EJbrgnpxDLgKvzuuu8bDfjATvZHsPq7qa6Zi
JyrjjtmXVUiBE4538lGjoNEXyJ21UgrFAsu7GTRbV0dsQ77X50O34+8oTnZhiR6HM6mw5WAMVN4h
hfz8VvlcW+jDNz9OVJF79X3Nf8vYZCfVoxPGKxpF1XUz/HWfLC2J5dMBFM5C538+4mXbWYoyHInd
///Gc3EoHSk+7nvZkzBFgAy1+KnMkQAOeTZB+/z3iLlvGKaBjUMPkqIsX+/NgunLBPBRF+exDxjh
cr6r+kQKTznqdW6zjb3G8gPa1MjSDF5h2OGH21Kzp4gJ0p64WCFk8ZTeiI/B3ksXT1/rMDZ9OoHW
xnGb3HqfNg25AAEzcqTLyYr3nePnwfkqf1SHY+Qu6XlN6w1RZdLVCtEmB/TpVZMdyZd3sP1lsbrx
qSMzP+typszq2A5b2ZuXs5mjMHQN5WpgdSYGdmzOARw9frwhwA3zV96geaw6nqfF22sg3O4UigZl
wKJSq0NhNXS5EzOOytOHoOGW7QDsZ85Fr3WTShqamYvc4bml0p8tu3qvYwQjNoaLb+FFOGUHL+1n
7w7K96SXdNU9xfA89AG+iB31bnjpBMwNgNuccOm3JLfZa9TdjX0D2McHwq6VXxK7l24d5WBaM3Ac
tHS7vFH923qRdWkknOahe7wbo02StEHPhxCuEnappmzG5z3l3nbLYGVfo0VX/10uVmQmmg3RH5bx
SXF3NATFISs3ehzo8e1/pZ2s+Ynjj5FN8f4qzqg1xSQBvhn2KKvlDYJs+MDULlIKGYY1TTsq6C1r
mXnFok/xkp6SpW8znWCq4Udf2agVzHUZpaGcDK2Z4FJ3gXCDUVnCThpLXiuaMDgNhkR/Rctzk2BK
C9A7k7dkBijiIo6fHJ35xD0G23n6uKbKaBVQNSypEToTjnxjGwhGqskuqQKfNFcbI1k8dMTEaQzm
07e/IpnyjIxh6rirMuR+UojCVhQUUA8mlf7NDYEelAKBBknEZQTd7XAp91CmP2Ergpf4Dd+09hI1
18ZBwtE8qi+KYee4cizHgLTV/9SkuBqnmYncMSjFMcQAnyGltazZDwq9JepISCUguf7eMg9dHklH
VlCBEBDivwMYXcIP89mr5qXsfFN5aDS2HPfhy6o2k6+HX8wmtP47wEpAMFbMG+LDSXOxAN9cpt01
vGlTHgXbmWSTSpfVAXnFZ7gXKc7MMIbe00LBJK7J9iYjTpKi7V/7rml/9eRAl1/sYZgJjdkmKVCy
cLRHjaVv+9yLC+T06LQrvPAa8kv4kb+VSZQ/pTgIXC27Iog/lDzJ94XNngrHaFS5qgaUte5tzInl
8A2sqdk9268HIqOR446X2eAoeibZwjm+bQS3hU6o0yPsma4j4AF3CBIq1hwWhppsM6c4ef+MR5vW
+eF07mRcYblyZRfzzcO75mcHiP71sAORwHqAaJK52+CefpJMfV5ypdTAt2G8e3iecpo66Uxs9Y0s
hJyHMz7BM6iX/q9HlO075o7uwLTYNhy0z3XuKC5jSGIWcuqOjFdFiYqFyj/G9tJ77jBibQFiPrMT
pHe0xpBgsy2KiRzxMakCkhT/63+3nHp2lvbNNcEZ/9Dy41O03sEv+6t8RHnAH/+mqhjVt2xoiVak
/iXsNT/yPfTvNG4cSqEFd4tJEg8G0UQGUyxD9/+7Uu6NiDXNdq+Gs9nR4cpHJrgw8zYqb+Zgagjm
KPTPqLbLks6crIaUPtUYxXNiLCQA2VAZZPF2TafyDwn0Move6F+8OdtgKLHWTg4FtlwVteF9f25a
zKBzWPQrI1F89RKE6Wdj3kZDN+kaiP60AKKZ1CSiv34B7n1wmMtIqhuRJnwjwtJkyrPAM3Aff+JH
rxeSELGDpkUtztPf/TMrbxATgslH0eB5tnsakWguNy1E20FVU1tR7wdK18H63OjCGCfvZHF0dXib
RYQMm2JvCrBdxPyB40HrK9pyAHjDMmtyWrqvt8wmE+1h+MaJcc8tOYDOyjzCiEqvsdhV/VYPOx0U
zDzhKAa7HW4HUjpZqQxlQug2waBmTz5c3ioQXKMMY27wPwv53Ts0+FiPVUcU8toA7fz1diBk3IEJ
eO8Tke9p/KenNUkHYdD9YTCwhG4/JKO7OtkLCzEIxzBCVb0erI6+y5TT+SveAVba+pr7a4pMmWv9
nKyDMephbBjCx2S939gpvMe8vgA6GyP+aJ5rDRV5opTlzog53rDHoDWois77NT64fVgQdFYio7/v
jpiqydXidFjFj6CN+CtbvedJtfGHgBAaOBcXZbR68dE5rR4s6RF3fL6X6bU0XsmZirc3PRPEaYhI
OK263GvBQtKIINv533H0T1GiwcjVamOn1LEltcQvmLfHoojlRMlnP2zrSncUN777AC20SHlgykvR
CmIQYH+ZaXeEhcS9C58xrPL6B5oO7dTI6N//CzvRpU6TiSL4EerSyh2KxIOihRaLMFf7MAGsIKq9
P+I12BQWHdaFMi+eQd8mu5aGmEZ4hmUvMvVZm5kPqwXR+Qfdm/AziHjJwQM1dwdHCkbZGKJ4viCY
76TlutgjrMmgvziH9SqBmX+0WprGwzwr0J5ywJFb1/QJXUCUCw7tC6F2tuD+omMrbyKBrAIjdd+r
j+N488Q0loDFmXoYiVKFwvSgPz+U93q/AetvWGMiskJnBetTe5cidsztpqQZ+i1lhZOJdU/GgNUl
isrc5FftdrS/VgcN5Gyj8qEkDv9hyTVxgoO26KjQeAGp6hR5+pJ77UNTV/497YVpqDY9D8NsumpS
n2difAUaaPuEQC4x5N9WyHcZDLcuxQOQXE9D6Pp0/ZlTQ1BuWiWVJ2EfIiN21HESIHc294U4YIq0
+NDmEbl91PNCejEHcDH7QWVLZgOyK42SFkglZRkzmKbAUAreCDJLdQ/CjTcAHhzidArFG+VK/EjW
IDKt+GBMT3SkfwSHY7qC/ZC36lHxGIARjzLNhWmiZMEQYQk+v92qVw4p7TSe9095y4d44VgIIg9F
7kb6kOFK4sqIwtja893WhccLT1kq2BMeCT5Qu6nc4nTt0jvDCPz1w20+veDTcmDxjm6DGqM2Gn4u
Hl/GPWmEd+0HC5ccbbJCDSowKUPoa+7l+0JmMFjdf3wMvG8dxe7cMOEpRm8oAMip+WFra9S0gVHF
68PhqP5V76Fdn+fmtSjxJH3J+U1Ko11oN1HN9AlUvi1J1Yg0BWrI19i4ifRVdzc/Ro0Zr63sMRIs
AZ1ddu53u6fuNK/OQamkgUrPxVmlYZUq2ss0bFr+ENxDbm00L/4+zoRemj3RHEzDb1ClNcUxDF50
WxZa46JygCFotwzM95hpKQnK/fBhdiDU6NxFcOjahS7hd64bUsZWDM9aNdnHppt6HlLgTwLBQtFK
dwVjhoWkkl4HCZOcoL0qDKgX7APBzgF+GQBSGGbQy9OdnUDXppy35LZhAXATnNd9r+MiaQRwSRqb
tVHBKJvepWoJOBp5uE0LZfrAfU1VcfC7OmwqNgp4uf4StpLiGcfcWUjYReqAFWEB9cx/PyVaK+93
1eZRVYd+84SmvDVCaXGpYSQl1MhCB6kDTzfHWgLIeel+DOKAj9N0VelTxKW99p6szIZK+cdxTvOt
JpjX6zmZCaKe71Irc0A4lxjq6GMrmzTbA8A54PH59x2hqin9dqtiPRzxQrSxf58pDzV1oGhb7zzA
cIR3QKx0qTJ3LyA4cfn4COx6PPYg053k/e64Y402k+k1AYwWy/k6gQkpNlA2ztRIt3cud9qnBONL
bolESQ4Vn0zLQGEntYapsLKDfxQj7iJxtZI1AL0JeMxZXDPpvcl/w1tFp7/z9b/N6nH8gKPeSwEL
o4LqGK697rq0V0hUYXIKXckeqX8VQnzwWMO8nxtMQOHMw4Z1r3IZBkslBaA0OFcOEjvaahCF2lE8
bB0++WVH+UIs8IPF83lqOH57PDhraxhRv4gT3DPzG7BYBbnJDRu51g43BoCTXzOJSuGSGA4wkMbM
8OI+hU6okx1vVSs3Lsf+d/aDou6+I/LahbjSm+dviUBLdWiMB4IlA+00nHHk1scKW0qlI8bDv6wq
FmcPi6Y/OTpfiaVfAVTRKNJANWvshv8SyyDVxXICbMetGsa6chZujTTa0UJoRMHXX6r9JZVVdRke
CIQv49vDKN4B2YUrnoM14iUq59sudv/I9laGwYxg0wzbSMtie+tMm4r0wAMRVrVvRp5MLblg/nGd
Gi7oymlBR4AEDyRvBTL8Dy8C2jUSgjVa96SOucNIonbDTqkrYxriF9yOusBuZhge92HC0iUUua3F
03fjsxa0tK37bPGS4bQzssa9LdGuT224Rw+t/UXy3dMkGPe28Xsoc8/QLAOFgaR1dSNBZFmGaMq9
j4gpSVbhHr5vhU25IVseWLNvr53irgkn9oyKZhK7tFc+iSrkwyPyJlpXYHARfKbOZ/PoF4SZ7+Te
ggCsraQ5uuSbxW2SAyas0x8a/HmAMtQ4/1o6oNhhW5HZgUYF9gWsjO9NxgaKJ8NU1XrA5QepfXK3
/jJQ7ViPqcV43hPgmg8zeoRDSlZ8a+tNrqTLvCpBooiu1JSd6rntsIpiWAaNVnlEc3CoFgHvlVrv
2HH3PBOAc1XeUhQ8EEfAF0h2qJu7/5+O6bVb/1df3Ilh4Q9gWqkuNBeDY3cq/uTZlf60gFi12fvC
TCgWWvGbt9ht1/M8YE1CjOXhW9KMAIXDR9/7VUtYU5fvyvQA3NKvb7SkSplcDuROpFRRLPRSN/Ws
1EyPf/o64jZQXywvGC8+dcLQkSlbhvfVD1ZwkhnF3xx5P6sRfvzO9A18hbIdF2/9tk2nlvCBtQDp
Q8gnVhyOF5Zn0NM0O6Y9cjGY87R7c6qLnReYKBHNtEQhsRpKboJOMDW0ywsFhCbt0Zasw7HL1WiZ
Urbf5VYVnwa6JrLNw/I0/X4haOBXj3uxKsa9iuQ6rSDGLpZewvLAjMlVC6aKshYzltDp4mn5digl
oFqXHVkKlV6M1mvyXzC84dJNTkjwJwCQU5GWyuMQgF8l8w5xa91rRzKrRL1Ll6pso6+zWIuXPtrS
9Cci3wmggkp9NVZxGRYBbO7qTCkmpcrVsR0KY0GYkPT/vTfoZOHc2V2EuwzRVihlz41U1AG1t+br
BO5LLpd6IImKlg2mRzdnX/Ss/iciiviJ8lp46PqrAGHsOwiM+hMK4OoypOrsQzO9YFyzghB8N/6o
0mZ5s0on5q9rsRCzdyk0W8zRdKdopgGVaO6OrSbZgseV1QC+ImCKFnPvuunpsaY6bGaUwNHHymMp
2vH1BsfnSEa35b8aw5HpQEyKlk3KS5JgP8xw+bA0Y0ul0g8suLQxOH6hPAhZ3kVMAV9WpJaeHUrH
AKlcIlz7WOT5mWf4OB7xn2EIegzmBXKCJn/MP4c4s4H5n2Q0SCNYpfl2zXhXGEmZSXlAL2mEWqIo
JBayIErH1nVQOMJ4v0X8+qy+gAKGlAnIb5MMDxiGSqVgSOHZNVdivgAvfJF1/xKErVAhXa9RwCKm
xu8Ijtc80zxv1YO0FYpOBgqVDzXboIsOdOYwe+4ceDc954EIkCGP2E3Ow6FXxsRGl3eT+V1Up5xh
9xKXkJ+ces4RUYsPWkRJ3M7MbjDik2E4BGIrUEJb5KfFGW/nb811uneYG/Uy6otSr2xoPDAt0dSi
ceWXJlaQuTDCa0UWB95F/gw5LyqdEMHpnE0Sns9hjlGTpEHyPy9rTJDjTiH8G2lS1+JBvzLqYd/Q
gqegwh7RBk89r44eIrOTGJEfcnXyZLH5FnntgWj/hwBHM5SjiPVnjzCVsmKPIrwMnqV/SAKO5yz1
nupckqssEWm7rjs1YCipz3Qn00P7wk051RYT8FjPjf0A4qPBuCXCBnDoGFBoBC1k8MddhaQakhV6
i9lMrNJElVO0Nlp4j6UUpttvdWtWLm4kcAg8elA6LRoNZ3MQHSCtyAyuE0jMGQGxdCrkSkvlAliM
P/1ETlecAeSg/a9FXDRe+HbT9l03MdOnFXlTE1e62i8HEftQXyIk+D35A5nxRXGpOofB+JF6D8iv
FwF9GjfJZ1qp74h12i8o4nnm8S4r0Llfab9pC3i9oAxTWq6C8H/oMyaco3Eg37TaVjA7TWqJ5ksz
fxrhRBkYZkOrkFHWth4aH1z4sW+StE4U95L6Q4JL9Z5DgxOBoVfhj67w1C/5SBzITG+n3LEdC0Q7
GuiO4n+9vDZYChC72LwOX14TWNiAKdipXirPkm08gkH9a0dCgLeqyLBeUi6KOPRYeE4MOQ2Oljko
QwEoa4nFrgPKmn0+y47OfqimcLVPW+I8yAFbLKZGmE1TOP40wbaBJMfUba5aNe5y2FISM07C9zmT
DJMH1saNOZIYCt6kmLGh6Vo+6iJKay9wKngj2bjWkOFJNVZ0aTd4HOlrTc7waGVvSgg72sOk2M6m
idezBY1ws7tIufNfIqxsuSFLmPpMdi3LiHDLRc0RAX9SdtmYhIfQpfWU8UPJ5LVsFsVZzHbmOAob
4Bi81HYcBrMHbgSsxwntDQcYK/IBdSVJQizp7oPKvpUEf6BdnZI9CL3ZwJm5/T/OLcigAq8VNdS1
9yObAwnKDDSwaEMnry0wYj28YBNzOBFFGuvz/DmOtEkbxl0WublLGZ3koz0aQeIJyaSyBs8b1GKo
LJ6PLNLMFwRc7QlC8f8xh3pJy8zPYDegKuhDaEznqdu0J3w5hrHyN0y+ILidpVu9apdh4X5ol9Ph
HXMCBKKUk7TAtAMhUOgpM7T/n+8f2OWAnIsjpKDpg3kJgTaNLtoYismDiBZUbiCCATA8IpM8hA6i
ZH+00ptD/E5SEftqdJCSgFwvH0FTqV1UE7l8Zj2I+6zOU4ZdXf2T7vTuzD24keAwRPEHfh87I/3h
aosWmgRLyhTeKGrgWiKnpB6EcHkBcvw1HoCnk93NTOucLJ/uN3iBylQ1Y1En9S8gwmUPxIw2h38F
ERpozNzZY2Vyfe/OsE9LPMGANIvOm362v5k4ZOuJo+Pc8uOQ6ELjDuNEuov/EYX5U2ApjktwKRBs
NbHneRldAZY+LITWp+DCOCqbVICK28peHrneLbirLQuhMld3uE7oxgQl3V5ozpbWCXRezzPcyZw7
ZAR0bcBMioXOaNRfxLbDzpS35xwRjiGLYiWsq7kDz1aBzoQUnuP0VeNrUXfAr/NEQf3tynsahb+D
UMESt+I5dYXinO5gN62bbWzjBpW/UH+IzgXuoRwWmkCEHmMs6g0pVfKR8n5KgUKoR1hCH1I0Gsug
KYca+E0ylmBSkVmGPZgrmYV5iFTpJywfEj82qGjeEjXUkCBDwflfXL/qeG1TMIjyajY1ygYGmugk
fqnhvAOOYRI/mp3D5R80GeKxLVzuHxTu23VUp4FkanYhDxTnZTlGoppd2DllQZqufFl5DxQ+/pe6
Qgd20JAvXGdmQZ16oTNfVE3hS4Yq+lAgAxjY4cr3TwnJU+lRkf3G9C1EHTJMfkAAsu4DzkMyJUbE
wk7HDjqJh8vAAq13BMIoe4ShThB8kI0QsBpboKSvVByE+DVuqhLVD5r8Y+XcRQQ75Iscy1ZAOJyR
na1TVIs8UYZM56kWetP5NzscvWtLg92iEy8IjIjSAmBSZnr2a7nah9NV9YH8pKbX3KsSyBrD9EAK
Cf1hw+b01tx1KDuUak7ykZNny/4T31l/AS7soeWPilonPdendzaQP2kvwK5ljH5KACrhYYjHivut
12isfPAINsIcqyi/SnIPQ55yi1JwB1TnMjwdi/VpGLZt9/b+wKsFgoqtrnwMQDqK+Zfnv+zFB1nL
Ma8HCvsOhT2/HskvO1IOAOSkIaqtBcUsB2qtWeLLDq/V+OAqBlFZXfDZXu2rWnOeIZr2AvOgZdTO
9IAydbGoeEQOOXwFcWl67RHr8sDCT3lBCG0Q79UCBEXtO+5rh9mgTEugAbG69PaMJAONzLhHPT3Q
4yal3mf+OSFdAZFikuqXqjsi8p0x/2NCv5zHUcFSbR0/Rw5bBCnWPy/RsY8LZDx49ehFxNJsqVv1
MnsfDuYv8f4Mptkp91LharniICWV1KKARjzhUsmk84yY6YY55w/gJJAxIa4+6Je1qWxb3cj0qY0G
Xvl6KIMOsDSE2Q/VMzlZ2Y37ZIfjTfjbuR6dfsG81wPjIxUD0/tdyWiv0UBJMJ0aM+Uljb5lwLgq
w2lgDGqlM6dsgYlZfQzR9KeuV/uX9VbnCr6A0zwYcwoAsfhseVCRRJIQX9GYJa8/9quQn/INUyXW
o62rub/olUkMcIb/SrObCDlDXk72Zh7T+EOCd0D6jrGoejlnKWXn2HPWdnb+KPA3AEUsbvwp0uCy
fFr9UC+5cGKnlKyrdKGIphuXAqFftLWzpvaBZDL4+KKbT3CZquOVt2chNQjx9xZHsM+vgP0bWbQq
EyA4D9ydHWljsDNsPKcSstre8g9QLaACVGyEs4FmEgskHIusIjU4um2YrY5uTmywRNXdfL7yGX56
D89q1JNfojvSXcPjBsEffaKbPmFJ+dC0uRr9oWDeNTdtb7OTrF0SNtT4vwdK/ym6fMJPRZ49yucO
GL8x4YER8ArFsSNK1eQEIkRMm2/PE3yfmmHslsKE3nT60doyBfqkvaeI7GGFeXbXo8gsCVC+cHVD
H8aJYJ4clYUqp618YglE33G4jmdOsMgaBhgJ2BvENdTuxYU3YxQy4Q5WI6xfeU+NH5kLQyXicWte
0eWgHZkteFX5F6+U/OG9kb/Juji2DrJbY7yyiQB2iyKvwj8p1/+wB7RrOA5b0aNnOo7d7pQcIT+U
Uy1XfrIj75rcQXB+A9kx7kNSuXMvvdaNVkHQxNKE7qn4bBQP1JqdVDNTvEBweWkRpcqmqOnI6oB0
uFP6xgPYLe53h0c23V+CsH8BPi9sk2SWGTA01myHRMxV+O1r7ZTVi9lO6sClwLIRrB/KJ3KoB1Qw
1Vdk8SHxA9pbJ0aPctkhh1DuhEcVNk+ueCbmdh4jG0Qm8G6ltmEdLP1PUwXTB/saZA8WWKVp0sPs
hRS/6SqRCqu97AzCe2sGh0S9TUc+QWHS6WLcFybB6s3RG9sNqGtlU7xVLzi+xEJ5V5nYzPpsxzHi
MzvL7wA3NEcWdO0aMquEY/Prdrr9kaL3tD6vOdmQ4EbAY2mf5QzGuXzgBVQgM6uiIBadfDAs8xTd
swM+hXasj7ZUjVJC7vXOXARuxVWSSypw4qxyYTPx+sE0jq3gpQwWOYypfDV1LJFknQpHVl+dSJZ2
Gv781VxToWOOPXiXz9XPftcbAOR9oZcKCTkLNjVRDtabu7OduTYuSRY2NaoeYCM6BEi+BKa53H4f
Qvfml73r/yMKosXZnfqJuZ1ERPfuIiDjZ8A7k9ZZtd/jR3YNHms5epELikeSvtBdLhOIwNNtOyPx
/b2/a5j66xjDi072XLxTD2PGAjE9+HCp4mAQByd2KKniYrzHlJFkYDHxA4tg2bBDBgMnJGxbEHUF
LIdbdHZhdYAVhqdNomn4W8MxEbSu1zmrVwl6nldiMFw3QMd1HBVkqrbqhRQR2FEoioC7DPY/h4MY
6We1mCBHJlkAsqDYykqt3vflPibbAFRMD5AnzOxv9qigx/E2l+nx32Od0ExuMP1WTlRhiUVjGJmu
IZIOhjzprhLb5AL/i0LJGieKGW7zOkJHc4i5wogoH7O5x6ZiU30+vRlsTe/R7tlXnedbWeDo2MI7
/s+u8CRj3Hky9aqnnEMCUD1638FUDYeJAbKQ51Y68D/kQeFSIHtVp3mnRksx7J6Li+n+qGUvk7dw
RxWoJWqmgv2UXFmC9LKu1URRsr3vTq80WGzoeN0GbD7KOFMzMf+0nCwj7sSMkArR/Gi0UrQufWn8
xkcWX/t6c2DgC6+vjAw/wLJHOaMu/yAwqojxkjeIgu1At07WBfxWfegRtyMTTH0kX97dHtpMPr+k
tdrZhv09ZNqfCCO7wl/rZNLt3+8vPBegM+bri7quCpG3d1u5g/7QvAocdr3dLSYXw+80Jfr5lG5u
z+zSO1lS5qy41KM2/sEEsMyd/TpIytIjg9EPx75OxMqrcqZJPvqafe8NSA5ETuoQNSyYyjWImL+p
HP8IqQPmfpFlILPDa+d7+BLWUmbb5Mwlhdko1ukGJQCfMw5h+/FJiJy4KCfsw0k5pVepKiX2EuSm
3LnPWacHpGb0muIq1n+vUORa0j2LtLzfAHxup531uyMu4Ydp3SUpMtOfNN28sDTQMSSzybERoMSM
m66VNlend7DTae56lab8CNll6NZqTYGOGjtTznjU/1GtVfmzR9/QivM2pAzOJTEZ8ZxTK8mnRVLV
opyJqtRV7nAI4clk40eFWqwYUvee+4d8D6QkKkzZd/oIDw9F3ASX6IrL5P7LB+BrsVowMR1Mg6fx
BLUBoIgx1yKBkhq3Difhq7E+GIb2nKcQxcNb5Q5NTdJkgAieu91Es2Hqr+gYfWNDw/8ZcwpSkG5I
w/C9E9HCDK0LjOMyKmKlhnysgs6BYzU3HCPf4RSG4hHcClUQ0TVPXLbQ2snsyjpkpsn49DTDtpmb
JACgmKb8/bvOmqqcHC6u+sQhsZFjI03Iss+OQEkqdPAN60NqtApNdfAzkp0u6KggVWYF6rYcPXgn
7+meqIHNZexHmRhCUaZb+eVHDVOT+Qq6xf6OQFeD3I0uVVGCp1+8DnfI/NDhSs8lZosCv5lsNoy+
RRx+w00KCOVlPhM14tyfl0LqA23GwAnEp29n5J3O8MEhzWDgGZZBY14A2L8d9+8ybB1quNrR5mkZ
qKl/p1UuXoemy2jtoUij9CVyIa/aEm2iWLENsop+/QobxX8LUHSa9O2xhUskKsrGooDVm4oUwYd2
eiw35ktpbpw2IXsFr69WPe2kVSZT8eGtt8OX6HMxjnL1W4OUnivIRCMU/CkXgz0DsfdQK++bVy7j
jWSOtb2e0kSFGi+Np0KWbHAAPmHk5ZGUavZ6yG4/fQn30HIXRkoVZdBN7KXWyA0wjSnkFU4jW5pl
x+O7+VvyoeVN2hlJ7cbSxkepz6441QIn1AVOkJ05GH/1qAmxZ+hS9vPtDbURC3lFCXnKajeNedck
iQJHddnqjipN/OZ+z10C83CwqnCgzktl5rEoewqbSoLgNYJCirJnH7D0ek2C97/W5YL3IRY9eKwD
9z+8wEqejh09S6w0wpygtAN/8N1nZvrudTa03bBfVWk33W8OknTHr42Du6EOzKx6aMdW2qUFl8Jv
Ru4d0A7F2WeGNBBtaskgIFiQSjvES5p5oTZlZ0i7ZMCbLSCnI+J+RqKE0Qq98TnhLce9Nfj6s8wD
wz/Ud+1qUw5s7jBPF4pXzd9OpDZXloBb7D8+x1ox99N1CD6lO9xIiaw6rpYamiE5NRvZBWcYVCQw
hAb3GwChOTEdPRan994sqjohYogm1yFcGCW56pYBgus3ETakip8CIZs1McrB33qUKVL25L8mIq5X
tk0zR1U4kMumdVL/68ku06cDdxYh8jfw3SnSBHcklGrl8jt65FdW+I15nttmfsdwPsv8yXq9z/WP
DdhK25VYYJ1xWXuJBiiZ8Q8kK+MEsKwLcuF3SFa4ESPlw49eivFKICoUk/YQv+7c5X0w/+5D0/bM
12QHZBf9tFB5v/0KEQUOyZeg1Stuy+GD4WsT9pzs12hgFFagqSU108eSOPogz1V8fahcwm68X2q8
qQvPVplV4crqMm2MkRvFyZcb3UuZ7SYHclprAAk5MjHECw0a6HvVFvC4ZkhwmHnwtJFCNFvlAyNN
O3hpo41Ue+wmL4j5JtXPzSysEV2E4kadL2zJh8HrseGfKAi7oYUv3j/f9fJT1rqiw3S+M1QONOSe
0PAqpnHQq2XCCRSQuit3vMQfR2gCvoZeYUiIyoXzcRk0WiGtP0KjmTmNp5yXkri5gNKi5bb1tyFX
nn29e2BxlWQM3eNVHmd1plgqvCJvxLQtlN5KNPHOOCGQwovpvdSvmWHbjPwz/oeGsk6pV0kIVTX9
NScpQHeUDqiMwBDWWsfz4MhfNEFqr0dvolyb2u0jIYyTxq7eysftEk0Q+YfmqR2j8wcmOV74oTZs
//BtTkdbTW3z8zC9JodwftcHu08ib4DHHuvJAYUq2S3p3tG/C4dY7lDBtAflf+HqHrM2INJdZwGS
RsPdEJUVpgc7haudrD7gNkVVhze7if0MeZ6cZeliuoNMYe0mfKYpCqW/2dAimA/vSeBUeW0dLPy1
PtMHVOaaaH+fqGJdzQNF7LoiH5pf6KwXdQOvsg2quGC/Or5p2zrB5iWg1h9vx3Bv7ImO4r0Io2wh
vHvw2uAUJJiKFSWlFXP0NCFZTRGhJ+TrJua4LADfctPbS22V6tzOIRMOqfvZMvP+UJSJKR17Lym4
tSP3bMESwKnL5jg0CDKE6bKSVRgkOC8EdgebYTu+lIFocy71yaRdeuEVNhKtpDJlxKGfi5nmdaM5
RMIRcvwh5IZmPgFUdTsHc+JubJDwvDSQttVCEFv1ayxwNJo1imlyGMIXV4IU0YmOCJzm0X56cZh4
CnRbj8werRVb9bIgp/Jt9Mcwc9uTYddNDsP/rDaYGb1Fyev5FrAImsOvzC1/WJH0m2Jfbfg4L7j4
ApJIZCGroOuibcvozk0fPTvJQIf6coGDE9ME8jaX1uJ05GOg2sBS7KwB3Spaq4S8CYF5CuulSkXP
aunfY19U+2ALSN3MjhfZvZAmDKp8Zmzw1NWHAhbmJO3hoX/OSxg2xK99n8/9XB1JzRuNNcLNy9g3
wgDEeTL4ZdUZb/6Y3Vb6/WnUaY1a3V/UBrVFRhqvGvAwkDVdY9z5A9LgZO5pmluopWDlwveUz2dj
axW4pP9LugsKOx8po7cB1nzffXhLyG61/5JbSGSzT6XWdwbnax4bPwsEMsZjSIw9/29ofH24o35h
xStAuoYxVlUOeGx5Zng5xcaoAXMCvANxomOqz22IaxbR0AVW0zaCYVuhLEDyJxXX3qFzKjAs4NRD
k/vpnIjXYm8wVJbdTYonZqEEGDJNRnA118xHySaFrrKq9T/OWaJEIbyKwBI0GWyn9YRVym5orUfW
sttTqDyxOEa0B9W62l18re6yT3ix+nEg9cs//AOJkIMlxaRKYhayGOSJyUlr0nIz60EHhfRl7W/X
6KcCbG6vGZ0JEFGxCGYbMhEaSim31XKL/B5pE8TcikjVkjT4M62+6GN/CTmYu9vJZYlIm2U7VKcA
BrVbjzNBgqSz1nQI+AwE2pHna7iDtOYOrzS+RxyUuuM73mgbd6ing04Uptq5C0cqd8c/vbsXXKwU
A31aAvC89K/VyZiR8OHHfQ2NWOWY9G2P/4hQb5hiO+A5Toj4C9PRRWTs4iYv3SnKjyEYJ/KoXFQK
iSxt+azaovQD88fr93srDrKBO061/+Df3fvdS0DA1u1aiSZvBOhGG056glet1SpgdJBw0vQ0bUM8
tZ9P+IuaRYG8QRF5bIueuXWIKvBJrFMabBFjVEJSxAFFUY1eHWsdH2rf9IKDtZCOc2QrZsuaWcMC
rbTSD4q7gbgQ8OK8ISIUxLQygrEjayMps5y0xAZcxiFS8JG7W1X/GPvbvcfDAzf1ZmrZFqsHXBDB
DBGuXE4nAShJCMn6WbkZLQ9LMxHS9URizil0pm5X8d6vLFqvZsj9EZ8HJLhZ/NYwIwZXW8k3FfBI
9WZ0XILlSZfjg7cWcsZe/u3vctdC6pYXQkQ9tFFdt7lRylCWn0qT4kyJr6wq9RATqW+fSCY82/Op
GOUulV2xkV0fyV8Fmzi6MPvWdbcFRyTK8zK6/11zaOl83zI+MAMBgkU87iJxH3P3Mctq/ug9+oGL
yV+c72hpMHl62ESlNCBt0UZcnyoJANwrUDgit3oXNQg+DpPnWIyeTUXYBvwkvqXhZglQL3ZzvvSW
MDwJ6wg96NKIjbfBLP4fgtnqnf+c2qH8YThQVdV/mONEvJ6qXSIk5s1j4tgmMEhnA6gZa9H2jxQl
j1oeUN5aqjnezTQh4HlohDqp5V7SJ0+2oJRwRBjM61zuYcNeUT0tHc/cZQK/4MXJhJqTZv4RVDfs
Pz3BpeLUGhmh/9mag6IPdllmAXj3bFh31QysaDnvO8rZhks2UjpSemSwjEnascw3nDGFooTDR6AU
hFeF4wIbEK4UDLL6wTfljG67FIW7vB0Rg4ZZZNXOv8F++ZjOg8TNuZP6k9KO0JaIqPh2Oion5tZZ
D/r0g5sEvq928pUCBsrmnbVNE7mzo29dPejJrzdBRt+JPm3fFhkU9yMwei0fP0ph1j2WOWzouDKq
B+ow6/3XfTniOCJcwZK4DSG67Pi8uSj9frrThKJxX/aUr84yTLx5xnpQu5L7ZY+BXvDhYQijbbv6
JE/eN6eGn9nG1dH0HbUE47HbJNBIV3mBHrK29SGbYVgDBq1NKQXCzRozWlvAKrqHn11wxZQRFTfe
bpGmMI8U47BBq4KNXBrFdNeUP9W4756JzkarALugnibkrVumSAhtAAEnh9nRubTT1kbI9Y1RIimg
dE5I2PXQfhnsM6jEIuHd/E5kCZ11wNdSZBwtIQlMt0YLe2N0n7YDjW6D8uuXj0PDuGY8HxHzgr9C
g9dvgZBOrS5N9F668NUQ2MHKbOpHaxzjdw7V4VkIEJPrfSBQd7zWAyUooUmQbcyZ3ihzKiqQFtCl
suPZljrRm8A+Swm6YDbZvDCmll/fqCkguWUhyoHkMJ0g9gmPutqEI9bvTDkwh0z0wyjupfjvbav6
imyxVE+2LCfPlcV2H4EDKwiHVTLa4qV0qsdoBkVV97diKc7ahLA8pQRKBtcUQszENhQtVg7JOh3u
8RBmHEZY3HxsPEphIGLccM2qco3eRBVjA1E6o2q2GDGaQk7PPmkWs6Dsgi1JQQceIgGZTKDWZVtI
uw17J7V/9N+EYmGp63uPweEe7y7N3jKFCge//+B1T9CbI5EhkeOLRx0xjaZwSSu3ftdQfG6esNQy
38q2s1qTC5dFw8DFuW8WPCDf1oJYx7MPRfVFNlCFkNiDydvrqrYDvldK09w/eRVFZVgxZvyaf0Nf
QSx59gwKJVuztWWkjVts0eMuvBdyydk1/eSONU+XCwU9JfnfgqqPgiqkXgKmVQ87L/aCQQ7p0n3+
mMNP9YZvvsSoduRYBFzG3i72+VnmmnOby9Kf9hK1EQppw+B0uQqaNqehrEA5qIcA2UsILyBvNEL0
nXT0UuvIGKhm4iCGRL1CiHnpnwRsr1XFzSkYU7Dhnz3Jqb9Lr8Ri2etSsI7khNtTTRbkbKN83KK1
lt44qK/l/1EbhBb1gIy5XFDlXT1wXI1yXmr4I1zr/4hjdVHe1PRGAXnPqxHJLxp/8C0J8Tv2o/54
UK1W2fwhQg8vyZtUW/tvHQltdfACuIqXDDdCsU6/COFDRmILT6FyuQPivNeeO4apY/fo+PHv1CS3
gaZ8ciUbkGki+87aXdiPUA0w07aZiUitSu3xKvrcFGyua5XFIeKtlXTpuIGKr/ajXkELSz/1oWh/
HmtAJlo97whJmzHsANCB09xOpYhZlTRCl5oyRqHCZ4QUlj2m43r3g4ihV8UBnilLySFHl2KUO8KL
m80daupyOy09r7Y1qHN7zJGvG0TNGKW2snnAWuLuUGkm2sQsXjxcfcfDDfRw7o0QdbTdLsqrkzgP
nGBQ+flbP9mz7zfzZI/ftaNQ4jsTPrGvLu9vTngIzTYs93chDhPzVCkP6wTAQR7xwBxyPWIKyDDe
SWbcJ5nye37ccmWqu/aXV4SkOK79FwgTlskmAWd1j1PLPBYPdKXozXX42y+Ebr9iZASO0UGJgv15
Cr4VN3C9FLRsxxgFD+TxZBy74+2r+fvsMgDP3i+my8pY+n3rnv5GC3kRx+YL17piVSzSAGl2utty
8cFIHZy9JIa7B2vvfWUtD8IvH2+oip7P8IPJYCQgowyBnJKWUz3v03Js+pY9bz6ajjbZtw5+5SY3
zt/soHIAZVdy8vf00G3Q7Utiq024FDF+4MC3Zv0jcg3cx2KkbgGTef8tbP5oOAApECq5QYULHHp6
2DSwuRoTHvfW496Gs2tGcfw8Q2dbaedBkb9IKLyDHtDtT9JGBHjJdtZZW36D7g6rCyyC6AqxUn4v
HIz8z4BcPfnG+TOGOykx5o3gU+5JQbzpk6cnsy70BdLf2Xa5jngSEKNjgKDtF4Z0iEpXQ+Exyemo
M+j31nFtQhlZnp2XbJZJqHplO8fzKVqUD0mEq0rUe9Br5EadYueAlgWtU12FRb2TEZ54+fRWqDJ6
V2T6Ktb7rdO4uymNJQW4OuHyINautNR5Z/Z+gqaJTv9Hs/DHlXGyHTsVt7AX69109t0tl6NV+zl7
OVqAwabFnak6ZbYfvxmnxMyAjCkvtexczdzWYwIRpdqIXSykR5X2vojKJVa8/JkINxEL4Ucn00Hl
nIEfEal3kgeK29CEoFeUI32A0JuW67CJWOry0FM/fG7vPWDw+FSvGAjEEOdRV16kpgFUP7IfZ4j3
bJz13hOyOJ2lOrFpGqerMrwBSxnZ+Hz66OmHz4fE3n0M6Oj6nIhfC5y3IRDb+hjAC62p9FlpjHHO
PBlkTNo2qWzKJ9RDV/MjXPnZVGfMuk7oI8KGv0ifvkdPAEuKuv1cehGwx8MI4w5qhaJ578xhvprN
LJNnM7dNAERB1suRG6lkWft+ctZkVH44leOVgjMCoHZ1t+HkAERUjTI4bCnbhmjYRP1API87ldL1
9pwBlP8PhGKrF6h3+tOXcVp7v4oMeYgwi908mf8PrVYO6WLADNUgCoUozlBZUZvBvg2sfjLBqCZP
SSKEty/ydRGY4kwxFSSIiiflaOBhWke7Pue6MdVVVpxx/YEfmYxGuo7IZEQ8vNmPr/AN86IRpNDs
pqLTaDcgNPllgOmuX+4IvOh1kghsMPVaALwt/opIQxjiNpJBufjsDy2+JE0iqSZnzOWEe5r/pw9c
yPboPQozGaVKNUh0AdXLeXBaXJf6Iw/2GpYJ5GlKF33zQax0r5BKordTcc4SS3fkooTzaJ+NhQ2C
kQbauttQYUnbn2jGKHg+AvNHhLtqae9770ruukmrLY5Tpgi2YuZe3ISh5KTi0W7Fh7Y342Dxi/mX
BNXIeNvKw1rqpvrk1rhLO3iIZyRR/mP46XwgwXj4tDwT4Ihj433zA9oZDen9n9qRf4wUtblj4E/h
HKsecnlqCCLdnhxmDKSlonYPDQupRGxzMoGb3WcIZsB0K/hun9gNaBKNfA6CIUs2UaxPBHt5bcpW
+TvjIJqociGXjOwgY58ZoxFIvr6rhDuCmV+OvMZY0PQc1YB9dOW9oZl0y8kLynRvv9YhmIOxVxYX
+b/icw00XYcOxx5tvx+uD50LywH5tscdkxf7iaIN9KnK38hhfMPPA7khRKdOKOIEoGkWg60DRpwN
sN5FjcPh3d1aR1Dv6Fef4ocnDyjvlodYeP6IOD+le0joyZ2bSbkqb/XIRwjDNUQN+5aPEsJwLkMN
WUfq7l77sDanl8BER6UtfX/O13Q6tbGGG8a7Tfvff/eIPJEe5xldpCizu41wY4/Jr35hamhdWs/Y
0ax5tEklr/0AatQ8ji1No8M6Z9NwHrBcekgg5kJGQG6woWPkwExiunOqFVIWxTZ+5NOyF4XjQXGx
TjoI8rmc+E79iA8kTtMjIQUiXxVtT+BDNxxobPXbMSMe4xcxPLsb0pgtus7xEqqXMSVXY/jeJlZ9
Ix5AafKWsdJ+mGAgxHpcLMB++dpwUyVqcbKepsF8pqEZKqy2ctf0NPK4vTZC+kqyxAUvFNM2EHqI
ix/mE+NgZRCYqKGj6E/lpa4kCH0+h3bRfZjqBxjeUWWYC0qzIUw7hhDfYlpxYqlXdPceiK7zIkCq
yB7JqbJLGmOGr1EMTU9TuDRxMSl7k4LSg7rLmXZLB1UegaqK4YvKWfwUDooN03U63GF2bQ79S48g
xSdr/GUEJoSHvQlNyvlvlyXxUsGYCgqjHh+S/dezeHBTrhwdMs4nJ0LeSupyIF3ZRJ2E9vkjaUty
j+OYeIsUgCjk6G0ddeQWE2DGhO681F235KpJoPQdyf0E9Xsa/qg/g6RmgYle7LFTwsUgh2byacqH
dKMXHF90SLoECF47CkQq30t225v38qQrjIMGL1k02BMGXCl1M6UloiczyTRq+eLmSs9j0jVEqmpL
qaOH0bnUhH/aJBa0JqRqrUZ4R85Fg+B51ChLrghMj0g37g8CwTL10rK4ecnm3luIuqoDDzcQqNWj
rJhaKBnxeK/wJU4R/eEQR5b/NEaCij1MTUko+kgXSnnbzC9S06hcgrb1b1iuwHeXMXdQHCJR8xuj
/pUnpYHgCft/VA/7qKsK1UMeIAUxmCw6nIQEIolJMX1XDT3KGJQjw5XWQel1kVnUZQp9a9JBK2dD
qpy5Q3fUw4qEgZwIw0V+ApKaJVRs9ytIaTPJVVYHWngAzmb4iFGlvKlwxEnEf1Fky/LqM/Ytsm66
oJfCkGTUXAQz/t8s/W17ipZ1GAgq2N7rC7AHPLqocyCJIjYrWqHCjKy71QMjOlzPe/o1g3Nka5Oc
onL7IjZZUoeat8BdCxS25sO3mUMV3ujwWOEZpaFe+u1zE9v4Lee3kPQoae9B2QhtFdcM2DPMkwSy
w/2RwoqPhXJzglkuMcUNGn0qfr6ZUSjJh7wsFgX407al+hiI04JFuihjUF9fgxtwkBLIlyHSyCID
taHQN9RjtsuXoe9k1fFZW8jxRyzkTGLWc0gYgKRAptOc44s16FxQI91YWApmQbOzmiDsEz47nXx0
psun6VyxvcpuHYWQQ8014yjNDLVQbtjRxESY42f/HgCB3xvSJV3MiAypHfFhFmHH/X42Y7IlJUT4
jbuXJEvMX1YNlN8hdpLE76Hby4QYBzvPJdfqIkuCm0exvRHkNRKQNuDc/lojCFA+qls8ozy9kRr6
IThYdYKnoEJH3/RflDymnsUHDFNe7XHk9bJ24C3RnE99s3VgDSbkmuuXYXCf5HooIejYYpM+jN04
o4ayGFZt0QAitu1zScAPiLBRH0IbxsYBqSsDRe1PikX8WqR+nOw33pBBKAiaXDSork+0XVn/LtKB
6YPR1168Twu+3aIRyI6jtoQkyVYf7Hz0TYc5LoA/foF0+y0Mi1/vkc4TNUyyxYuDwN3O1uTyYm3c
9ter9a09CM6aVFUKOzY/57GAy2uau30VOuq3jKIGoTYWqRc0UXy2tZ1cz7OLlekBxGS2NQyjZJvU
Kg+RSNkS+sgOH6ijam0vcn7+fU8uBeP0ISMKZagr7BBVJBtM+T/EJso4i7axD46ROiaUpG9ZCmcN
eNIWQgxDEiopM+ZS1jckPeBnlvXvOSOUI3Tac0hdXmd1VQx8luJPUJuTe+bhsTKp0cs+L4f0lOBQ
oHgHxKF5lOcqlgZFEq8DvzE/zFc4n17FrEP0K6vKSmTwFBeu+ESp7OwQi6ExyAXFP/PZJGZIUf8v
sEHXoxEqEmghO4kJOdXzwy9Fw8q7neBoELsJJub/9c39Ojq4WF7w69bas8gakzwdp2z29DPN/jc5
tnVyiCXR1QkjSjEjo+G1r75xJzAxAL2J+4+Bz/7xp3Z8FGhwFzxgSze4zzNY68hTNVszvWMStdCI
GDv3M2fmb9D+qOmeJvU1oRe2HseSxAB/5Q7Sp23TMl94ZI82PEPIRQbcY4f9bNrTPNqyUwy2cNEV
AHKNM8sh076XJoxFBMJr+Pz/xbJt1I+w+MfT3fHs9Az2i1AiHBIIpce5ZuZjDw6XSP8whHnPccYE
B1RgR2H0f2rBPGiGYvsW/vS4bITAc4Z/pVTKi/AJN+5yltRk55jd0sDom9h5b+zVUz79kkzioXg/
18rN4BaAVi2cgMXAWG47PElv4EmUlsB716Qh2ZkfAiZt723xoAo/R6ZXrn10/hbuSlRIrQGB616P
SaS78d3CE3GzSF6MJYF37RKxF0zxr+9rTaOg60SDnjuaE4Jucb8Ongxz2+gwOcy9kRp57KO+dsYi
3lkyA1UHsZXSU+WvAGF6FjLzAV7PZhg3GpeiuQz3s1Ms+7JUM+P782HfGAHCZ3JtNN/M8L1VqXqE
VIUuSSJFhKGlFX0bWEcCmiquoTg+MXE9L3w9r0P85Ha/H/EVyWjesF8zSKTrNq5+ld1xjS4eCG1B
gHhha0i7Jo8rvM76T5V2eN/1+4LuieoZHU8QcnbshRv4BqkOOe9AjBZHH+xyaboHsfttc3YlpLYS
9k7D8EwM+C0X+he+LUP6zKnzutq/8PSy6DcLE0xwOv3eEUlczJby5lMW31VEaWlI55XB7w6a0zxB
yPnyS3rsUIBFxo3S3c61obdbjzId/+i8PQW9O6dywpgcDlBw7+gQv1n8GIL1zyMY+3jsjdgJ+2Ui
dtlau4FNIl2yY/O27Wg8/rmmWcum3AU+KoOxOIUBTyelG+TYYeE8+FHYal2icFEUUkXVSPcPPbo8
HJ59a9fud/E4bzMc3BpWhE6k0PhQgL4NPiljMVjJcUiK1j999nGEikt6X/wU/Me/DhxUgYbn8kEz
O5ehmFOBzqHorLsuB4ABqRuxceg8iZPfNuYM07OaQn3c93rqjI8BRFK3ZarXRFXWPSXQZjUjro9L
qxz3fHuiHUkeFfUUNmfU+1Y8OEmlkF76dIgajPIvwqUhn21mETH0xwY2E1bvFikMw3w6lDMNn95W
OsmvlM8eOBvktbz2cDhRqhRsy/lWHA9t375jo8tnMOIHPvLOH/BgJkx1ER3zRSiXVONhoOdnT0A6
28iqQosU1uYImzQhBFDCWEAWo31PPvLIFNR9rGS5pB5QHG3FZxIgd7226fmmO+GDxUVe4MgFnOW+
uTru9KpqAdWiojQbMEZkGMFuGrNhp/K+nygm68imn4FFOy87a8GAF1DR4wZBAGp1/aaSeC3+rQFv
HAieZiclUUlAgJx8kU6rStBysAho6krUabmEw2e0GTezgX68Y04tf6Dng76bOPex7guMFGX+QWrE
qfakcdMz6zU/PDsD9OmoWjEz9sXwXXo1U3pO3JOa9yypT5CPRbwx/MysM99m5ys+YtRTuIzZDK3c
ipv2N/uDWzX2W+NiYO++QQZvmkBdr3KAd/pTmaCkZCd/mv5fzQlGRoDGDU/caJuxhN2MhvnrZctE
bXeEoSYz5VLfyNf2/QdR3Lc48HZyVABh+ms2qzFOM6N0DNtP6G3Dojw+cTzvuF8/IguYVa/90HB+
fFA6KpZLh9eU4a7+5gj14j5XJJlfFD/HPeY1X0quRGH9dTftFO/DEtP+Ocv5FkPIsN3jhfZfi9Li
ylsesLG4oUeMlKRorVEWVUg4wg2WaSjwqIkIe8kyayBUnxcFKL2S6br6Z8heWg91kkinBEx4FkvA
H8/i9wDOQfW0CxjNNpVjFfNHRU+T4W5zxV9ETGrerbquGluzJVXRMTHVn0x4V3QlU12FE7yMuiNq
8knxRy4VjoINnzYe8/DNfwLMT7GjeIEDg/cfHcVToNsMKuICQ3TMiOdvwCkbRTk/DHjd43fpGZwL
pm+78EZL1TZgrmeQmUTlE9MduRbXPa38Qj4zhR4/RDAHFLQC/gYZ73Z/Xa2UvRB0UlhiMtWaaiDj
fTJFbvR0HVAlziRyZa/MiQTVA4A7sJuXc+zJTKy8eeZjEPOodplZvQohBZt5HGldTinPoAj2uA0W
NLd0rgEILAkZbwpXBSeYA9/jYpGHMbJC5G+B1gyJ7KkSypr6QC3qiD8g5Ez5icRBPm44yan0KJaJ
8p626pXFK+6weJMF7xVGPtj6pVu4jVehoXftHzFe5APSppWuEs6jSo+o0WAP3BqCKL/atPD1qleY
T+0qrhxCTqle3su+j1Xtu9xnaeRZkDc66L6rdJ3Xi13nxXsKZczOTY5c85ae2liD6On8LUeCyM7T
w2pWJF7lUDMGpO7wlX0LHpb6228j/ik4e1Z8oGTV8kHciL9JwadU+uXWmFGRWonlkgcvbORG/POG
W1ZXx6w6h6j8KuSqxql/hUAKp1+reR4vdgNwJINlbIYHck4VaQvEBAMp5922UHs82vjf00c7qvrv
vOD2sgfoBZxfIcqtytqErLrgCKCIQwRR6d+GxsjD1r2ZJpEKQz9wf6tVRkdkCOhvbLacFteBx47n
Wq4CGj/5tYc/qYw61xo3ZT2rCYhhitoKY1wkhCgUKO1Ps07fcEv4pzHTW62Yw22GPdR1oybQRtHo
GQXtL1outSwR/Y2xma4dalp0MSS0XRYTvUMEi/AjwsvvrQDs0ANHAvHa5E3cnrxjHYbW5ANtKrhu
pUSPM/B8HE3R+0oc4AW+rzZ0iYXrHQbnSy0D1iovHwa8aP4H3YmNEvMCjIA24f6deGUGzjswXaWS
p8XpmRCXjAr1MB9WRTaC0qJVZCWBdNkIDTc9wRkWrStP+sxje0WVVdkkXAKl8SroPW0Cjrn6c9y/
CeU3TpYihwwSA9cRuGoxxOhfai0LNG3dJfjYvkbbb+z4ifNUGBLKz8WkqHHaaclDpXEj/JtSfZBk
LJ+VqDNVlcO29jqFIEPQLJXPB5ztPMNZJqdP9yehwcGHqq975DkNSe8c4/pu6qk9vuZGcbRQoRDu
rr76YunDQOqwkTlt/acrNmeGi2Q3eKsEN00g4xoH6od1nli4CL14WXP/vmnmDAFLPa2SHCZy/gxA
VJnzEkfxcT5iB390/ELd6HKyintOjwR3NanoazpDolQLrKxuSH9SXMwwG9dzMz1NqF2GI7eaGl7E
rDQnlFqkqwGve/Ts2UvH8fMWnOZQZJhRRRe2WH73/kGCD+hYanTLxsjBYmQF7MpNCuP/Md/DJF1E
S/I+NxRfv21z9SSK+ISHXecbAyGIEq9rC+hSnV2n2SdMfQZGdYeDFNRsc6pe8Iws97XNbH9JS/h9
VgN5YbzOhrS4xVTIFk+Elh40Sp+KA6OydzVVkg3uNCmXcZP1oJ5XY8oPwVQGRaRsjDzNco9UmreN
DxTJQcgZ/2/nnjjPdMGU9YWoiqGqoNb+a0Ci3fwDxEUFgqcoqsNAsBx5vLcocYXdeQBn/DkPmXQJ
XTP/tcCxjoXks0z5SwO3VP3B5v8BucLCKFk10JL7O+3gRyF4E+HeV9vWQiKG6/vFnpYMx1fTPMbq
/fE3JDfqwxTNwQqH1EMgd57U0Z/1EopfapYVcQjAJov9Y5ou44bm0OGRywpPgUarxwYF+KljkPjv
uCzj8J4X06JMkUz99MlzJbkDJSWa7nmCXiAg62V0P2Nmcr4wTVWa4IoD9Wn0FoetaUhUUbkJcja2
vIip/2BXae9CoaUHAbpk9f3KQJLpF0XgpBtDf7qwom53Y7AWalxrMfy+RFjeKYUGNMXgtC9Igp0f
9sBhVZ2uuQBsbf1KfgFDkC42LttKmNDzddeAE28heOV4f/p0H49KbAiAdBntLLkZ5aQmr7Cko4vB
9j3KQ/baIyScBLGOMI/8+Sw0IfNrGTvMxBhvEeuz4dCvwS/Kq7Rz81HZ3Dbrr891DqeEfCTFAnrp
/MzOudYey37C5uRy2ChU5o3weMzJ5GYaYDid1FHFEisZwBc0RlIBtesRJ+0+TlUafxbHg/P4+gB9
Wum1Oqd0Gl6kTOJ+i+2Mi04ivD4tCPY37RYKQxMWTHeVzdFnOZgbAbmD6lXrkEWPxUE/jSMSRO+g
gQIoibkTcoUr6OB8W7iyI2JEjqSLUwLxIER3jIsnwRNFOIm9FMygSVc3F3Rf29esmvyiR2gtKV80
/BtXgYCmU/SUdxlKcpt62w0goAITLi6QoUwsoeEiPIW1sXINyESTmijMQgs3EYxyodkJ9ovBZEOc
KfnBOzcNrwLm4luXHF36Rb9rFfDWsLqxnYMZnAgov1piptxyFLpr8qnn6jzns7NJ/aVnCvPfT3BV
ZpWsN9yAT1JT0WUc/g8xZkTFXZsvEZB0wDw17oe+MXypXXM82S+i8i92zR6YtA57yXl9y5TENuUp
Ny6Sgjbx0fzFA7spWPHPChIYAML4jqtZ8XcZUtGV5PQnGrcpRzTFUO2f4aFFkT5zCxSMM4m+i/o4
0FTC/IHmbnBrGS6kiHcGholq62FtIiKvcfDu5Q6JSLQypN0qYGtiN+UpiBrkYEl3mpRh4djktMFv
QB3sIPs50EC4ZYWB8glISLbVpZhOP/ZLNyScEmhz/8gkZPvyybdIvYRX+BkXL9QYTvDcftd2Xo4w
YJJKFMK1AM374kLBBg8BDStng47tGNqqZXodsr9dj/UToHvIIwG4RX38lz9Lcx0Gem6sfU3fxuU3
QwJZcQeOrewiHJF8xOTR3JBlW84nJWIOtRnETmzbB4O1rlZ7UxQmIXavGeVx5pljZFPGHs8OEfnz
+7htMb/gaajgQou0tKVeY0+qP8RxHRdUIaLcCQHGYVGFbxA/OjUNBNEaaAdY9wyI04c8gcykBXi1
F1wBkPL/HWho5VkuxWpCc5sMRLbksMjq5nsfT7DVGpAY+1zJq21a63gLCYpX5jG/2v1OkIf8LXYR
5G7mI9BgnbALBIbdOJBrZdfUWmOf2ecU618cfmpx9Cq1Nn/YSXQi3RlihaYO6PtBcfnCYfyMXpz5
K6yz3jt80c+VETzhEpqNYxoJalY9dMQOAZfcZK4yI4d0Pqxwx3IyM+kSiQCSjIx4fvcVWWkAVTPQ
fJMf6Evnqg7gR0o0NKJnUo6tl+xPn0fJ7bLYQwjvzahI9rE4IHzV7/SuXOF+cKm9aQ/l4cfxfXxq
WH89VDv5qC/x/Ni5L6I6rqq7j7Fk+e9zaeYHH462tUbVy08s3sN4gFQXlQUrhHIdM8+C1dy4nxj+
1kYqxBIhq5KySqTMv9H4iyw8iUYXepbf2lvR44dkX7jWfL8jL6a+GwjqnebvEp9r6/N0A+06O5z3
P/r2vhZ/Qj0ADOOZG9k2hmv8xxSrRdwc0/Y4Rlss33fWoPMz3qi/HpDuKF8lSlzKPuwBmznzVT+w
McCRmrWTEgjI5ssmvAJ7k/sFxYGt57SmvCKnX6hNHykggBXYvrzyCxKA/JrYu06EfL+NaOssClk2
c27wKXMgXtHMdutz2I9nyHI57OLRarbwgoUk8JGPVcjQ5UcYo4yvx3h6yTcdNzNbcfzHkpGpJwjw
Ujrm2a++YE2YMdBVBkKp/GKhiW/LCqlU5yJB4dzeMrgI992nE2ddebGSIs8OdIzqW4swCbagTYJm
Qx2NJYWEIs3g9ahXHlmPIOfjZVOLjV/4E1e9IZR9hoy+o/mNr55YGmZwB3qx7aW/FECytcakVC0n
3pjZPqWIYX8x7OqrBIdBSLbA2c/j0jj/H8dLUuK24s42FV7IJ2pv7m1Xng7SD8w94QD0JSH0uV8T
sn5S2wEhrEeoocDj0r/eQAp2jjZJNmjsBO+bEJoTZiFUQmIyQ9mWOt8csfIK0WmZ1L1ZWMRSrlkm
iMNauwjsDwBpp3QMCHS29hKYmbvFtEN0gkhgn7O7VNdRwygstgzgHsHvixnWf84IEAY0KIzVtENX
mBt250NJwKwUpKC/DcGDPvgBynj+Q5uvJ9ILTqYhIRQy/XSZ/8d+RHTBfX0FKipayFKJBMX0IUNA
J/M9HsWiT5JaBsOyXq6flZBuzguzfS3XcvMvycK8r4T6A5kfGUNnq054AS3V3fvCs7wbpuNf9gvw
YARAZxaPMimtuOzF3fTYjpzpXlu3MEPCcXpebb1vc4GY2eFWSK3RP+OCua0QjMy1FYaIp74jX55P
GWzOjz46znDYzuNmhiLEJ00zyPU7AvrR0bs5TcXYL/9shf1C2N2I0v55GO3RSryv2l0F66TKX/S7
TiY4NMTHxMR75YXr02lOJsng6IXz+VQMbHwICIM3XIgZ+/+M3O/4pJC4GEzwGvWikJ1KdbD3RC4/
wxGajDSYxkmLGwIabIN6EdCoukKq553yS46aZaMmU3SasicRjInNv3gwIyIvPUDWaaDA4sBPOWSA
Cu1oYYDUL0QSH38D3zpGJfTn/ikloVxyKG1bTX7Oggi6ObFFQV8/lkr7wz/nx8LDpcXZ/ZTpZV/2
xoyBACpWzUjGOte7KLc4WULepxFBFft86WTwHDElkkubzcfpVm+dtzA1QNCTLE/7rPvxuKALyYtP
zwJW8OqSOY1Y6kjEaZTnGop8g3x/lw/JHAQZbeATRWizxRkPsXnv8Dgi80cCtELcN4gc8vtUMnzc
at3/ykLGSL4BkeZ0ryK0R5z9opm0L7M/tJ6eIOTd/1LRGhC84gALLJYXap2LtTW9lmmu9hfjvvec
hkhHZKEAjJAKH2w0WllFu/ioXBJs/GRtSUsjkhYdA63jnGthQO1CsilRxDaTy6d1cVWH8FTyfs70
90jzL9bwxtWrA3JrkiphJXNzH9QCwOEr756KQ6bHMmMBVCNJfjagvXe3q7SDrjIq85DtOohllY88
bGazb2Br26wMBOe+sbGZgYiliCwWQjSi6IdZQ6N8Idvtbq1dSgY2gWaJE6STXt9FKRVN3o2Eemnx
2VL4AF8yKURdL+ZIROQaEN04QHe9hRrMyBsDAXUqWYk4iaOfvC1Um0W6JI3EN/QS92IGFhWHNX48
uYQHT0iLygOkX+8BYjXdmlMyUCFFsXMEPmtCJawK+tkSiarq6SrEer3NHlVgRPRAqTyrHzUmn9bh
NFAy36NNrkldoTG2s3a34dAxMsz0IlmAViYC44bg35AxLfYKw1BXcMTt+rhJB8s9zdvhvtIItaYs
+04YugP7FMsvcOyGTMiuwGkwyuIO4QzZZPagHjKnIj2wkGqKKvB7OLxUXfnfyRS4+fxjyDwpV3Hr
dZrWIN5/Xzl1nUJnrfTys4tHcbN5l68HdAKLpuNuWlpEbnV+5fQOe7YjdIHevDMGVG75EBdLTaoV
TxGuZ3zRXIeUFxtJTfiOCqBozrhe5BF8IZC3M0yEkzUuQp4lHkJ6t4jDkPCcqiXG1MTnmVhbT7Kp
XIO1K1RZGWRUUtA/LeC5/grub0K/WUa4oTVn8E29omq6TCaQv1VLhAZWrgeqyTNnV/8kDF/QHdVG
SylLuxE7aV8fq8dbFDtMOqH5RQniBdH76Rs5iArIAvCkqr59kcaUKpK7CtGBQ0ONF9PDzzz6YJ9a
RdJCCV8k0JkGRrCe9Ga88iQUuLim3DLZ+/Cn+Lc4XtNjsBeqWOprW6++DPehT9lsVndl1f4IAve6
VvTsIh24MStwE6hnLeSBMIR/jablH5H255aQB//dhlztJCMSIeIZq0kkaJDDcq/Fwz32d6QvXKSO
5kFTkkBKj9ELbGMYdt/aaU1DrX217G4IyxorVmjbltU6kHFSrSclTRfd6iuspLDhcJtPasZdHpYb
4cM2Z33H5aNEbo+YhXpBgdBEiyTwnaLEFs/ar4/UaobLlO9ElyYcHMGg3OUyixhOUH94C2mjJsAj
CAVKCHlpixaqTUWTXVvG7ye+e2asRzyzXzjatf55suFgnFYvdvj61niVAuQwKo2wnBVjKWQWngsU
xMNSmUUsi93Bx96JKhmkx9LFkn2CY7yPlBHgyfoOVlDqS1vjLnRoyY7tCtmBJ7wW8WGuixKomBDr
S1+2GtzNsi27spL46wem1sV15Mz5G64fW7WC2s6eEhefKZH+UlbCSfL4HFlj8DPhvdocvWQDJTRi
U36RR/pe63ZdNeN/Ek6zW5DuAcpQZEQITTlg6RZjoZIErRsejhkK+hP+A9e1v95Q8SGx5w8VXQfi
+yR7+P4AZW3WgGP9bcJUZ0FxBCRixrPZ9KR7TWn5yFJCCMzUKHauXtXQWlwuBR1mfUAUqkH44dS6
S7TQBq821zMPJKBHZONiYVNhU+XuAXm3G6jrAomcyFjPu5fA+2MvPk6YPAUDiTFbMQ0/ZXloUelr
ZkFB52+lQ4DSPG30+PRWzCuGsbtpIYNz0+gk7ERwNge9phFugVBy1linAX/8gaAWMPLnT9r3buqj
W1vLs/TyQp8UhnQtAwUhWIh50sX0lVhkx4BVGgvOgOS+i4VLx0AjBKsFoCEFVydXvwv/PY63S1Zw
FtTxywWJHdRmrle3W5covBCAZTuReVmY2XJ2sOMZea+LUF/9FWHY1aIDG+12PaNUGyEqM4Z5Go3y
V1vL3budKGiFChferePS8IhMq7R/DRt3QKmIZaDq+ofZAe/xtcJ1y64OcwXbT4ZLuejzAv+Ac4i7
5dbYhT63J0iN0bs52pNhkqqmruCRyU6zSVcADT66a+HWbaZNOvaZ2kp0pd/CSefTyBq6Okg1B+EN
Li/0EKwOp+24XJCFFMsrEAPzgh/xmcZEKzYSekGgD6RDcWLi8aBTPgUgdBOoWUmSlAAlPewaU4XI
ER8/sk8l491NK51G1j+dxIJ4NZmp45pU0CSCyP2oGBEhppmZDKjSUMXVfLprwlFAZZpEWdgt/Iwu
B3BW2XfEjPTs2Z8DsbslXcoqeNpxNVfu3zbeQR8fkrWB/VH9/342a+8+5VoCjS2beHkjSm9UdikN
gsPh5vVyn4/jZINWdtuC2u0S490nG2EOuwCP6TTBBNWwGHcNfcEOz0yksmBrg+VKcpcloqeMu5sS
Riy5LBDXDsN6z5WW9YrQ8O5IUZbJ2nU+EGXR/j7994jo56Tm8P2rhS38HFkhgpOt/3mZHXeH6W02
srEAvoAnMxuBdfOnCNN+tP5aR9JHiVBzpY6XvSiWkfUZsstGLbg8dNKD4E3cYnjaB6bv12igTUfX
eX/E+D2iAjsEfAb6RON5TlcE/+r4owIfQ6U+V+N2Efsi7x0GbBs3BaKy7dUfSrwYdfZgv0OYpoKi
fPjY3SiaMmH4hbOuCu8/sqb6P5LEpIIg3wxTV1DY663dkiHH+Hpb6zsNd2yzxEf1XXzEclhlGhjk
7nikyeTiI4dR46Wk09aFDL1OaprcKBrk8Mea/ciqeFvGpCE8DwAiFh4HBCttJjM4oJJdK+C7TFvV
JMhbHyzJmuTf+au0aZGfwEwS7z94aaUTEUv4un3cRv2solQu8lpXofheF1Ei4+8LpEozSeCeEOqS
mC5eB+TGhJWx672We36azLM3y8v+XfNzfa7SxsD763UIttiLtIsrKSEJcdnLtdz4QfLbKieqpasr
Z/HB7IsfDZjRV6GAP5j3JQfs0z9X/FnYVRPXKIudTDO4ADSJA1NVbc9e1LbzkNf5q4MyoaWIVmcN
b/KYZ3N3ceadeBgCSE3/+7AGxgGjYOF8Hczty5iVwFspAWsGn7/xjQuHrbrppT2C+IYRGbD4km5N
31lE3kKixhNzScjoyXSYnjG1r93I6n9UJQvLULDZbHXsRyX/Cb9iUKayDZoi9++yyz9JsPlgs+lf
SoeCN7KY4tNiS5hu5MTarId6haaWS383FmlyTNjVtpf13GtW+aoGoSHWvfQwfsnrUHmgUYzI5eFl
HV0gbQ1Lcif517kBatqUhIBGz5wCLwHI4e1zAkjPU79P2xTrpfxbL52AuRzVSTUOALX3Yo6ILhs2
Cf52EZHHFh45JWo74LwjYfLJGhvoKLaaQvpHfseF0bXYJmoSe3GNWqkMV9jWArtnztjj+mzH7ERb
Auf0qwPiOnjch4l/3gjtw7DIcqOtLOTs394/nmOH+b2h9JdpvEMD0BRVeryjFK3UwCk1Rv3C+j/G
sMTjtO7oaNlPDjQmwJajaEpfGy61uyAhZbcYD1LyEBO05G1ry1enRYpHH9hFAuLog1c1pz/LxAfi
aSZtJqq+deA7Y428lohkywlLNJCUPw9VkQOti/BvJzxH6ewSDzwCwl335tDNLR+Tk+ID0FvHh0tt
A3GehfWcL9fsyBDTUFmUzDcuOAdE1vd94d2nawRys9UPc5kfZ5ZQeVIpc47DUlDc+KuyhMy+ibGA
XhxLMZ2OmXBg8z3xpUGn21zD+1bd/eUAE0r9jqfm9XEOBQo+J7p65+KScZ4I7/UoUC3TdhbAEMQw
XggWIfj6ayxbHu/LFYrEPdwP+hqMynvLywkJYdDjbJwDzHO1CbuljXarf4PrRsS+se5Jhc29hH9g
NqzIzqnjav7qPW9QQ1yKZoWf8FwQ1RwSezttgBFoMLpGvOl8/1Szf/l4DT2t/sjVYu71Br8QNyJD
OteRycbu4I4KD2hhnsWPZrIN819Ur96um5p6gd0k4Dtty5bCcixaeI4DBxXIg5B3nNdUMuQ8rDm5
DdaGLJ10SIAtQl/CRcIZ/pNMJomoOboGTujLOerB2XirkcDAJbSm0tmjXSr+ISV+oCiYzBOL0nJ4
t4chmyG9gCaoOchgQ8Z1J1OkJmahkr+uHlN3LCN50LVvpkTiq6Tzttjn6cJBsBNezwLwKSabGgc9
Jdo3okMaDbKvB3iOkWqkTJdWZMb8d6msBTopqtouobHh05cQQMpr616iP/7Bz5hqBHSyHK2n0ppO
QGlT2pl2FLXUixK2dFnynApRXpDb/9EJ7lt0/6PuaeEWyTK+sE3J3qkArwGpvKP+iTW7M0T77lyI
aAdzIfTdrHX4UGr7oWjEPmwFAVL9meiRA8F4PzuwqUneqQlPV+z0z4IOKLJTkOHwf+DcRQVfEAyL
b1Gc+IKTcJ2v/1sQcpKViG7zk3LLfko+t2F2uzkrM3971qCAu+D4hBL89pidk3QLH0jxA8RED8Xx
VFkSLob4FKZy5Rlrxg1kdWk+YoV7Ef6DhCtz/z8qs5sUoHOjpd3ZBG3Si1pbcdkcZ6Y/FJkXCweN
b2CsW2TQ2kbTocJ13NBPhxs4vhpc6MdlLYkSmObdTRKSVaj6fYyLB440RzbkUUTJ/F5P+H124Vwk
0jUupL+fpT8/ud/nUOQMnp4miOjqCzbnObzTgJshYns7Vs54HnrZUgx7zHJHNTiiEhk78azrWBSO
Hkv/xl0y8PbEsT6krQjWmBCDI/cB6+nVAHCGJtCB33xhQ3ad0uzcQJGx6Z2MPbus7jl9XtdFP+wd
itbOA2wQsRywyzn1D5yW3w1WPoHUVyAIAObTXcU8tTB8GUI0czS11k4XeU5CnKzfmQ+JAaO5WIb/
EcOUNgmkyiKboLLv3aMa7ZPSfvJShXvMEOzZZllJaUkRKaDFkbdy64gqF0Ftgvb8KfNm1ceB/hoB
rxmkm10VunfXK4tgz5AR/Hmo9IyblOnzSX5rgZS/mp4kqboELauDNdNt2C/IfnVhgvPWAPrr4450
FKG1KuwJu0VybKgZovpF8g+8Onv9lDwNB9HDIOAN86nPiuKkANCGUU98kSCFT4EeTF+Y/mGNaN+z
ecRm7Je5dAEzL4YPIwJY1sJED2DeXYfOPCOrftDLJezjYggD2l1KdPgqlM3NfcAvf/J/Kqq15i2o
bP2C8gezSQC/BIircLJl5toap+upriEUdqzTe9fz/56y40nJpqphVkb7A2/l0Nwrc0Ghwe5y8rXz
ALYeuQHYUJ+utZdNdhqP49COWCNe4HCNVI0h37P+gni5StiMRT0HGc1KCHajuFHDmmvyfKBt42P9
jGDbQcn7Pleb9zC4I/WJLR83XOeS5dd2lXHPmtO3NxO8cZZPd3YURe3COGxAsKGgzJqqgApMUUba
Xhqs6EYOgx8hmM2Gvyx/+cXqrgMT9kF+yGLVxcdg+1rQostmwmDkeYgPVouvMi4gym0iSOulyJ/z
nz1CGTxdxwwTji4flZNqlFgJc6GJ3nfhYzMZlDUGaAnRC6qDVsyafnpn1ooYm5pSVjGPYT+sTy5k
RzSOWzVUlGf5r5XHuVcra8Z0dKNQ0zZXSz0LPyRukuurAIz09Erjp14OB3nhrXfOkA6JSGpvtm+5
2U8Gh78wxYNATMC+EL4MIku5gtU4emdkVogvOVFJaftIJCV5452w2glgIA4TAGIn8y12O9UvhWY4
BkJ+iV51G0wqsI5/csPSDmGowqmRhnzkhk6QAVtiR4DpNMFFwwMAG4OwWBxiduWW0qBjn6OdXNHW
ZY3xzdArarlZaVh7BQju4RDv6W+OJaV9CcJy9rmlXbYTqybXD2Yrl8hc9qT9JPyhOyj9BVh6nxSg
f1WGokBFs5yG9BmVfS0qogp7rHWI/KpgDpIdf9ylxYj3NN1o+6UdEObGxS4SZZYppuHyrR0L3vTr
7g9PuaqMuCwOd1wreH6qRPUtTHsaxFRvhFmsZ19OthmtqG25fD2/gEnezVM0QPs6nTVrwrctobMi
HbGfrgsVUcwk2DE7yLD8E5mCAjXSMBVJbToXlMBRZ4YZ99eAggPi2DkEjdK0L56hw07s6PdPScAU
s6O0UYYxFIvFsHIgdu60Eh+gw/71expB/TzCLLURjHX+gA203gd/zSjfbj/gkzs4RdhyIxMNjvkd
5+iY3hQ7+5fZb2T4dtdovNjvLcGuC7f2nEqkyemQ8Y3L8aBk8ZBYlnx4mXN4ltindn5734UbVQSp
UhQG8X3mRV+yM8wKDIUn3+EGM9GcYPNpMCb4QULSKdpe8ANOXf3QCnWpK2IjHLzeuLlmUswEUQgG
SDCWsvgLRi1+6yQjcOIThVOglJ8uMoPw+9KtwmNjc92SUYWgusxleMgF25qTNnAUEcsVC7cIGZLc
sWXXyfMggHZfHMOte9X8wkecojw3sRIL1OhBg+ncSdxJKKToJIxh7TARbG9OqNmmfbLaB6eCNX69
pwo9SZNHKa72Y8FjNVd/miCuYA2dWBissOf73She+E7hOjua16wZP0yWjCpzGTVU04ag9wKUu+da
iWz7giw/neNStCdv76ei4z5aISPOY2Os000TktC69bIsF/fCBjBgj8YgGAmyOSzepC6PE0Q+gqD8
5CBJEJ0oxcY6hi+RVCnGj5x9D3/SklSUq7MuAOcgib028WImQHWE+9IPNZpAw4L/XCaCnYriHDCp
OjPCunnx07XNzBWO+FR6fCibUm+FgtixuA3jrgPWPZ7obCALmRyTWxn57aIR9FzIlVAacXGQKPjy
OXOsywU+SyOwrJuz5RE1CsunQjml1uIfE92+GGKojy3cUBBR0LZL6SdY1yzpTXtf9l3OzcbsquV3
GD5hVXLyAiB8V4Rbfhx0N3sezvF850hsRlP0CxWlIG5wi57ixogQ3duyqIB2tZHxTayj7UfaO/ZP
ABIeE4exPzzYb2ix6RDD5GA71ct3PIgf6nCxhzsORZ3+FPuXLVYwFOKm4/Rh2S/ufpU6IXkAUq1/
fYrbhtKGtcVDKoO63uaUclLkJ90dyqTP2cUAKSpwXosdVZTXWh5FKhz/rfpZJvjbbN5QMvJ9CjiB
XOEe9ly108pt22LmVaDBlG9zHGDwyowMbZyt8CLNK0syFLO92vuqTvvA7BBFS/lJS3BtzxuuQ9bW
FJxvcmdH7+ZSdM64dIdwy0CJW59yPmo1tpk1vYNwUoJyzYMQOcDM+N0rIC1ECgYts/VV5DPzc0sf
1UHra7fpEIbzd5r8YDF+0HxAL8QvSYfNZe5Sn9ZKIL0bGPeP6Ek7ZHPd+kZ+TpsioV2QZtJzoNib
Z+cxCCjM4TBGQKmn4C8NmkHAd7RxF8OYY2bL9176p0TAlD1rBrN9xooa8rLNzZtKrZUauOt7rC0x
Hdzfg1eB3a7mkMZFwewu3DHo6qpIWv0BAS+t2fmpXUOaZEEWUF+RbB4Rq3XyhbGlqYszMYEzhMth
GRYvmRJkXQ7i8cAHv0PCuQprYAJkBTS3qwCU4jLwF4q6guiL7cu6DOJ+xdRWpc0zmnSoYHamq6Pt
m8zvlGKMsHTvglWHhqzjxIGsz/cpeomCbalrtdGdWS6+KF9D5z3MSAeJ2v7O3g4sGlTx4S9zyKU2
dMlgb5hzhgev3tMZgJX1GtYQXpT44qaPv9uHXdXXuhWTS1nahcfwX3+rm87aXzMX20kXrUIXKRQ7
Jx08hGaeBiR6+JqxIBrbht+Jr6jBY0zFkVscVa0PSzzjetSkstRQMfpxVhA50/Pa5EAjAK5a2Vh5
hQNZkoKGnQfxvKMJ/6T2KpOFxS9EUERqIfung7qhSIWe3wYoGorKh/CS4S+6I+GOOboaeOTnWwmr
f84YfhWDsdhUB0SDy7DNO6uFoOdY2mbR9dWrZ80y9SeUSfTZmp0swdXh3xW2TvqRd0ORNwr2Jc/y
i8hKKiQn1Dlr78STpBfrZfAOf2idjefwvgse9gbEJbM1fAzE1OCMGK6dFn4n55bnf6CEACCCoNHl
JuOc3JAtmRhat9C8yPupDTOlEwWoQHy16OA+R6WhYzekktnUMsKJQ34KxYdzetZaNq2xgzDl2ml2
BUSV892fv34XWLAKJnkiffA4e+szPUqLbqiO9c1Ri1kskvmLvq3ec4JhSusGSLwKY0au9kfEl5vE
WJ2ADhtoBYXyalYKDzEzQ0poZKpTtPYYQnmylimIm631LGGVUEXSDAMMDm6tJRlD7YGCD2Z+oSWP
9Z0wu9MmY+vl6Nm8zoAeCM+L7y1zXyocFyLk//N/K7CXkcaH/PLs2KrsAauILz4loKMwl4pAz4ch
cE/Ugri//2I0tOwLEIqwxN9NZaBjprffPSncz+fp+JUTsrmWb08Ly0eZ50WS41nL3rSM/3euTdtD
8YW38xFrvNzDDHD6ba2nrpTfRvjCvPRGW8vfy/94eDuhPekX7PxLoo1py8PHDyhUqQ2mVdpiyA5k
UVLZMtOudhJm5Z2SitWnRz7p935L2cMYtjmKP/+Y+mrp0FXwBFX+01fd53ZRiPvVhg+dqPrDHrXv
JdzmrBO2IK5UuLNV1oAcNB88Qx4uI/T1jAACd9JYw6qOnCteBvj4M489DFeuf9/V4VBwLhy4GZgq
cE2xQw6Nzh+MHSSTEQLU4bGpZqbXQvnoA+TNnKyO8GCYEadw7ApVjcD5JOxpgnjNz+mGqlbZZFPj
BTsp5QyOaGxwo5DB7SLdJSNMXqIi3QLMWUSbdH2T/wpYXNfiYN3gCVCtrUn3gGHn1aRfoKzFPYiK
P+F7v2IKq8dIIswFuixW0upDJSSkpscPp2sVHD9K/uEPtGvj8/XwQlEN7ahIyFG6zhWgUMe1sUbK
x0ZgFDM0KP4FwhSoxesmWdgkBYBi+Jk7xvg1sKe6RxhwsfMSgdiwwBOQ5I1OjpsAmrQiBjpz6bVZ
uKRR/l92sKGwZK8dkbXMivZWWvCADzPNatt4/XoHZlNn//QMUiK+4ejV264iQQubydFa2NSAxSob
nqPSoW7twFaWkltsb+iYQrEQMhTYFvM/sptp3U3jdGV0df9n1iTnt+YlrlAx1msYmVTfRi76s5cr
E0ehZ071g6K46hGgnSlTEiMFCJnGJFn5vPqZ230y7SErn8aZRdi/X324s7qEswmqeI1vnEh0wrd5
BcDiXPaOxr9dCQDx/PJMi7ZwxrUvpSk7j6m4wBLUrdMEpmqcd8fkqGURsHBrkbL7AMUChlIHkROK
OJP97z4lxwd5i/gGZMWHpzNvacshIe3+bNSzns6I272DwQdjdYZWTbTOZWxuE8rZtGyTNbvVjDbv
Ual1VrluJY/gvtmpEpzVxZVEDaOZDv8kHoye4lOWUcqIr4IFA5nfPhlR3pqIp2SkKYzIe2Xvusoo
s0i4AVGVD7q+5AFyIAcBqu1aPGLmSpO1mAl1byEw+9ruO9k7vynCJnwTn4LJW0zMlG+6CSX+Q8am
jbFSq9xUCyIDU/3WiSZe5tUoz+FrKg/xRmrXbg/Ov+jMECA/h8QRm925FRsGMa/ovCkTp7PXXS3y
KeWkA+XhZ909tVwkUiF/djJnOEe0wvid+z+4q6D4bATFpx9Lljx6VYj1ShH1D1O8tL47Izzlaz2X
FwBCoaEdkX2+nfJ/mNNCrakmzEZiB2CJd1wai4nMUq9CdB8HqFWYsg==
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
