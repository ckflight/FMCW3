// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Mar 25 15:36:23 2026
// Host        : DESKTOP-BEUFM6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_generator_0 -prefix
//               fifo_generator_0_ fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
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
    empty);
  input rst;
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
  wire rst;
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
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
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
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module fifo_generator_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_generator_0_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
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
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 114064)
`pragma protect data_block
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
ifHfZONaFw==
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
