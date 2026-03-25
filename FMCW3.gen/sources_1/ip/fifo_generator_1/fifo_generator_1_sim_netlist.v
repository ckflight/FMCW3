// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Mar 25 15:36:25 2026
// Host        : DESKTOP-BEUFM6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/CK/Desktop/Vivado/FMCW3/FMCW3.gen/sources_1/ip/fifo_generator_1/fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module fifo_generator_1
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
  fifo_generator_1_fifo_generator_v13_2_14 U0
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
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_generator_1_xpm_cdc_async_rst
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
module fifo_generator_1_xpm_cdc_async_rst__1
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_1_xpm_cdc_gray
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
module fifo_generator_1_xpm_cdc_gray__1
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_1_xpm_cdc_single
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
module fifo_generator_1_xpm_cdc_single__1
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 114912)
`pragma protect data_block
BNv8X/0DXkBg/53vCWGdApGgFvitgHmTXUHNqYqyLkiwhmTHGoLPF0RE5V/4/s+s+tRg7ie9Ww8n
P2JQ6Z+P9Nr1iHjWVK5MRtHCD/QbjorssEpRGCKfmE1jiPxZ9VtaQpNRxAghXTPtOIdp0rOTLU7U
1HmkSo1rUeEalJdn6CQ0R79zYbj1oTNQXTuMlgJwzGBj6S+uJLlvZvhPnPo/ts5lXJENE6ze4SxD
mjnb3UX3QWMZseVSBOHrwbu/lx/YpwFi+/J9umw7jdJx/zHPhJ2t6VQEzWlxI9BcZKic9paXTkyR
dZwhpHCbISn17AHvwdUUtjpdgAnVDo8Zt++IIXFv+Elr46DqEAemBJLR5SY1CCXnSeZ7LAFo4NWA
/acZuC5BSQDB/A3YWprnyYbMCwWZ0zP2vS/7KrgV4mSIlorQzmj4eXUF7hJlpMjNsWu4pua1Ewa6
I3jfsao+mVKdNPDMJsBCYeYLUsgDnw5dFZmv6DxxoEA1SPBlF9hRboe8vj0mCRkq53EzkynhQthz
lVr00+gpKSiK6sGVBUp3DM2S7iZsX2RQu25zsUrq93qdnvGXYuqEtQzFmxTbZqq7FqTscBQYJtBU
Dw1LeB1qb1Kv3pnzaiQYRX5+yNLjYN8ibISwj95WrTgcwJnorNPIMmH0iYJagW3ikMuAqqzZfxPf
VB2ykb4xPKyD/vK780JW68LngzjjQ1pXgxwhnRCfVzVoZrqBciHHApGnZz79NwZVU45GF1Lrm++C
8i32t6lnKlTx3fY+Zp4HSdG+3ZJ2Qr6dPMbbh4IQH4wmQbgVK+y6hTwf2U5ZREHvF7Hxuma3mmUJ
LZ8cHnefn/dqOGgM9MEZz+yFycf1ReiC+W2DfMAV7fsvpJqxyJLDrH+gP4aiQ/vQ9Rq+yCnH+nTh
ZY7GPXvFBSbfVHeINklnrJtgu21z6ZjZIxaDPaNIpdnlz10dlU8uDLf1yF2JM3bo0uSxbq5ma37b
IGhJDZTTN2GevZjAwQmmLBzxNNnhovaSuQeRKhm3aIWVfotzYB64yCT7APIKarCcqMYmm8fPzVJh
3PI9hRI6C3e72BZoAAOu90AmqI59LsXk7EqnP9pDE+p1wgz7x/mU3DbTLf12mRzqT1dzmFeqk5qR
iwuV8x2iUX2lScUeXUY19nQul40hNxaXIgiY+5BnaWuiRyGawzTwJ9eW9mvqbelcp40C1gzPfey/
1zLk2sUpqZfK1rm9CCa8weC4ETUypUSSmzfxoQfqcFvNxmPp29L2Utnb3xL8x7m1yaZDtgeRvp/W
TJcYH/8OWYO5L0vRTdQPNB68JRjLhjLHBqmQ45/X26pDpx6zjL+0PumGkNBoBr0ELXuxegCBGGjA
gKKZh2J9vAunKt9NSCISTa+dQWoG4aBntTP8hYCPfzIjG1fZ03l2URxmKxzgBV65FiJlwMajyWFp
SABpPoEoBMBy95rZlv8vXN21fA5BOrBXBAcwkgU9wyEYsDUlGKzh8/XpSjz+SbvhnilaO3GI2Vea
MeZv+oVnV58RvRhK+XE8QyLFbzHH6Vqv8EJqMsgI4Bm4UO0u3NOEddOdU6FTJtzDAlS4aZJDHfjB
aoQqy39MTcTpBROosPpYMQs5UUGqLysp29RLXo1FNykj8vC9xyTXDtbgl9pTUVSk7NFxLEYQbdRg
Av77uUkM2Zc6cRmlUDDTLBgZMLWrjYqV2C8Hc9KuLS6odSpWUd49XUlle3zSiJsi96IS7fs18Kj5
Ug9QX/+MejHcUTLTZ7Uy/HK8GTBy5R1jA+ifsxjzHyOHy9WxHSEuZu7GWIG8qlckdEtO/7OGrp+5
B8ArS37gU5cjxIvt7Qk7qDNeGE5p29k10PDdE2P+9WDTttT6vHu9fhf+KDIZAy7AyJn/sKAvS4Z2
VmvzPnt10SysGn8GtIjMUwndoo3QRylIOVyl/Zh+5eC91hxPjUFIQHi+mAHuRi2C5z4gqR0HIxUc
P3c/Mk/13TAvzKcF5vZe5cpgW2AWyhuUuYo77tgvs+Cd0uxtDRvvzSjnYfQz699OdIAcwssUrqkQ
SbBJ+OhgJ+7MRlc1ZHjvawa1pReRFNMhkBLCqhYCQipFaUJowLbiSHDHMuRBW4N+rwVEBmzRAXJ7
aEQMTa5FOGIR62j6EPSolfq7cad9co3ElM8dw+8A+/UcDG/63+153ehe3khhNy+LaPDvBitr7Adh
wLHFqppYw/buU1eYYO/Cbn6dkThuxX0SJ769ia/2UkNlMowMI07m27mP7UyO6I/zacdUK2hkQC9z
TDYJflL/5jjFDzYPQ89nD7tYqJ2W+cKdz7Pt28ChJa7xQhh9b2c4R3k7MmEIQH1ud4hZsnwE0bpE
bIncYaY9K8mdkRR3DfNMSqiDA4/uDF5D+KNAcBVpocPLoKMY2ikXsiCmnZ36wNzJUdAu1J3Idelv
MBv5HxL0/rZ7Pm5GdEgZOwX0EyRVEbGdBOcBHeq0RVhHqKyYvCpZ0mSKtfD6ajf8bct0b7uuZP1h
hVgHl2s6m+DS17dOlIHlqYdwdSxgPfvZBkNJJtSE2ZwrfZwh8GQjUnCB6ZZnsvqx1Gyn51f0I1VW
To1WMRzufndPZBJH3h7cdvuX5iXcWDc98wmT211tFMMOyic64DCNgDvS2aiK2e1prC+urwJiqvTl
xKL6la8hNxMIgz3qMlrJy8v8W+RvdFA8DntL14jr5CyGViJ4iPVMInVzvw26fMrdq1yGOX7hR/dO
QXZhQA1bNSlo016+tmRQoP+IxJKjGxifEmBYJ9766BliJ1mEd2ENRh1chwSfozDYlCy4kkzKxcBY
qCmcW/dWCsMzaT1iPtKTxhQexhNMhD5FLqwF4nUsHtPUtuFVMv1twKgbIk6tJ0yj21w4YpigTGQ8
7aIaUMnt9YAWXAXUWy6KcBwueieepu6SY8iXfHTE8W8RcREHif+T1OYXGpfzsD8lYBeNbBoNzaE1
HXgGX3xAu7xyb33+26JeziFO8XkSeiTFxa+jCzRaUXK3X5stb07AuvBdn50hgnvN2GD9pDyj/E/T
rDGzIpEq9R+H41FBeRcnCfM6skfBeBC7Zyxq9Q8y0MPUlhJpl2yvRkyARc5HRI5J2dqnqZ/9H3xy
YICNaBHlpAwiqPxvkkh+1IGTo9Z2JpAXj7x6EzUsgRowSIHXf0fCZa0txct1I2JTl9PC4qDhI6vi
aMpMgEngcm+Os8G9CVzix1pE2qHUoK0CNhDTYmokSW6UX1jKJklEsIIWtR4WkmjzbrhyrPcMdlha
p6PkfjWc/hhpmewj0f54aY8RCO8Li3gIhSwQq1EDMxG6YjtvXsWlQj6gN8jKDnBhD4w9myRHC6KF
qU7W8QThrRsCcb/p5lWjk/t4qunChPBuwgjBuwLdvJWB6gizggZL7NIsX+xLUNasLVpnktDO83vQ
krJ8+nlQ9teCk8aNaMBJrTNrGcOliRutQ/LIM0+q+MT1pzcWkZUgfEuoNx5R3CLO3u71btcYrTmb
c7fqf6Dn9XTaX+yaDuGq0Sjq/GwmfdybvRgynkcBKLo7taUrL5YcbIX3jPdxSYbLJOVN/zVuIDPB
+9xDq4pg5SHRFyT7xM6dQIShO+H0LF5+SpKMGorRepAjGjdrdCoaqycHz/TfP52k4Rilz1M1ZEjm
Zdfy07AH+1MpQnQ3zOi1t50NVZDC+U76/IRwshV+ivDemAsREKl6IpseQ4+JPjPw3sSzGLTQVqhH
DUXDD+zGX6yVXIoO/fskTNkiNeqHxcLKr8xPpXAZODZPgz+qfKorNSJ1mBDJEN34Y9oiqfx6zeq9
qE4lfJZ+VnAm4p3eUZ8GkIYb8ARZ6w8U8vXQ0Y9+Jh7zMrsxX2gd/zrWRg4oJ2J2TOsvrzg7kzvB
wk3uQAU1EAhSXgGUdULG618/yAEwFhvugYCMhaJftGT5R+D2vJ0ypkHukTsUfm2hS7WjVbOO9mCD
yt9BloX5JjFk9PcQa3Wz0mYIq4htfZ8JGRcFWkxnFjAIDPdxaEzoUc3ackEJLw/3OCtaJoN5yW+m
QYiaUqVS+1Oapkx0k/rA9Jn0wSDRoatq1fetIQYvzRDScxrZFOozym9mmLDmbsxaSTiNEVyfXCTc
MlY+z5kGAStBcbU0j5M4oY8eOQe7ZCQlgwDQ+CJ63U2VrROIVti4477LIYs+AOnNvmO3h8e8gccb
YBqPM4fJmdRN1nT+K0rjDvd0LHGOY6Zr2+BXpDMRdjKCA8ITV4Z5j67+X7cNVxjCN3FZS1yG8eGb
pyJFhfDoii5RhVSok0crvywoCg1u9c4EY8orXWVykV1LvVP4NNrvr6zgIusgTMPQJA9/yujeWpGH
+ofz4XFTJyqb1xXQWJ+RxB+vlm9iOTE8n9P9MdB7iM1H7/weSzyfTZAho/VtiI09UIC9V8BmAVc5
0/B4FJmQK9U6YCC0ovXmIaeC84nqC05ni2xbndeqBMu48d7MBbuQVU/7H3GeBwkfMz139dF76cHK
k/VTRNYzYgnx5/IWskSPLBkJ/uqdHnsXlbtD1tVyHtrabKHjlQ7DWvZ3v1UeFyRJ8GzZxNlTQJZ5
F+bFQ3+oPVDfqnMR7tczuGi69WBXxiIQFyzHrsBT6JGFcZDqZQcKem3y/1S8W0K6agIeyWrDUxRv
+nS8smpG81CQg7fwI4M6d0mNm5KCExd8PSds7qar3Qg0f4/PB7pHTt8mTrwA0ltLVp140b1Y6zTR
mtgYD8DwItsoTqRRR0tNYjGwrrUkS6FVQSoxDpfB5jqvxmsK7EgUd5Gt8bOuFUilM3pxDm4NyUcG
HhTTSyhV1FG/KtiMipNy5/3PseAIrCmveNSXOM8GUp8UUkdTKyMWTJNLe6jz65ubZfqAbX4LxUMQ
sk9gmbh3L8GGckNFuzkSWcpCVmZNkvsEze8ktnIfqukyJR8ZLeAk9gyNVYGBGNbU2t+IAXQmTOxe
V1Cw61Xa8Y0uwy9qZONBPm62qm2vXBGt8RoD72WpKHK5EvWBfA4K3hyBGrKSmNQ301rNY86zhUgL
JrjT5+p9bK2uygrFCF08Xi/9nrFmvbcrlAAAVU9Mw0Xonf+YSctTrNz1/45wjT5GcDIdJMYWGpeA
WPRnGUZefPW9dFLpikMDdSuqWgpGyECTe3K6tTdGI14uDrneOwsR1nRD3m5/fbjqAnakfS3SmoMk
T2KRGWr9NcmVpTGWRksMkisfnkcaN1x9yLb2PCvZqvI24bQSOPyqg4adLQ94D8sbJwkJeki1UXWe
iim2QLrEhIQy5Yneuc27qa2EB88M4NOrW5r8VAG/wkT4tlBq94J+JxySRxvwr5cbH2xuQqfSsGIi
4J+/8ZUqG6uBTDCtIjpXD73McJO8nWZYMOypS92FuTZxBHD3iSZPg2ZoyowEGJLeo0OgrLzw1R6y
xVfJRLfO36YSfit1zh3ZGB/6oU4wvCy3Ht8iPYVxprKg7D+VQ60rdpuCUW/h0gd9HovL/sgOi5l+
WvyMmz6IAH86yZImkCsQzWGMSqqhs+F3u2Z6oi6IuE9lPZPkWm1pZLxjPjfcEC2skHvf2pAgy2al
/Tl8pH+A6MJ8tdLemVqT5hPFzUJYU1cmXinro1uZkyK0/frKC4GzCPBHNo6fh3XRtd/6aFBIJQER
ZSyRsfpUjdvjI9LddcU/tq5M70NdvpbHaexqJ5zBweGD7WurB6mwUrueHkcBR7MlD+2iLNWyNin3
AWCjE0LbeigVl95eBpqO2dPZQQBGF81kwuk46O12pk0dC8+X1iHgT2kGcK1LLAw9RRmd+0x1t41h
1PKZc5BMcJx9W0G032J0ert/HWizfi1iUawZld2FvvTrGPoWwb8jEQ2L/i09IZR9X122nXK61c74
jmduxbrCeJPWptNmYYoJuGG3vmkmb7xnF/K2//KKOe9qL07wCGl3tI7pM/7A+N0gJj47FNYZ9UUJ
Ht+MpTrHSMSfaXtWos7Zf1GOPG6CmG/ggYXPBIF4F2/iH5BGPvOFyJkp8E8fUHky+y0FmVpustgq
x+jxeCjmwdCKJ3ytmhjRvgUDqFNBcFxNZdNlOOWZoUg8ErxC0FzOEl03lHeSrQY+77txTO37nNVI
avMg7aq7zl80G1G7t5LoRAsUMhOnz2jg7Hqnb9VuqhyKiVB0D6XtbPyCQWfWlHznqE2Q0XPDfILW
FLXhic+UWDiAN7fHzV6KP52iv4qc6QPGfxKdoTOnlf02SiWPZmgyqrlt1/jTcNTj94sPa/xH+a82
8hyGX9ZBq1Ox3RlrvPhVAToZ6TkVPkTkeyeXqoPh9a+NDiP2ijW2XDAE/yfaTS/Rs/RlNYtWlNni
/RUPb86pbqh2Mzhtt+KZKKqxHsbmFseAFQJ/386pgv+wSXlpvDbZ4H6yi1EDCXEKMEzXKNmMPqCo
UnS3sIVJuHmPGmjUMDcIcCV+wQE7fEKDrbw/Q1236iSZiIb4pcECG6n8Xs3LwjxVqUIvAgl5+hd7
6cAmnZfTXfzH2T/eSBLASMKcMK8Bjbo2e5cwvKVcbRq2il8UZC2AoiUR04SvZpg/xa3iCtTgYaTA
Uxx6UTLhaLWGKeoZ/emeA8zazKPfmtNmkA1Pbsz2+DhcPFNUwKhK6g48y94otjVj2mC2Jk0KIKJs
GpQYkrI9tJaoy7TNNwVbrPgP4g145rukHuRsAeqwtfmFGSNOV5L8lDauaeTFGoP2GdxLeEYeRFic
/PL5PsmNWKtK/6Kr22LQdClxKPGJwm0f4+cvxu1ePSEtewRcYj9g4zshbowbQDRcqDoBbY8ZxbUS
qXejAB96unSqjGE4e909hGaksVRpI9EFZyLoiKECqngaXI/aFtGNZKvKFxt91ZISOUD15WEec89Z
Sfkpecg8szpVBqDofbu5ZCVOYSUsiJbNJeX4SeiQjpfu4gOQDYQuS73D3Owso6nblQvUoERYaxdQ
9RzBKzKDFKNM2bXsUsRbmt3cUluaazO82niAx/pbFyJnvXx1nFY9VIvRWFuKeiJtNbCRygjvmehX
GejrPMGiiLvSghDRoDPTZzAgk2wyYR1602ogiCCEbdOKzdIRqXCqP/679/iLCXcIHQiWXYlT4gqJ
kSJBCqXi537/Z3nzyn+zMXzm8JD2tJ1unGBIf3n3LcXJy1EZk8yf5psdaHMM6tI18AQkfX9wesTl
FxjOInkqcFVKxCalRyhnL3HMDmHmm8YcrZjTXvnj/p1A+oprfSxEZYEj7qTDVInQwfe7r0urOm8c
NlNWSTfg5/7va/QbYEjyRh+ax4tAH5QpNCoI6N9LPRt7i5I5fDqasC30Aau4+hz0fiiFGUO/O5tc
jSYcoXjophvxZxCsHTtNs8wFKlbhpHV847yxLinV/Xf7CUGJ75Cxj/+mrnD1q7jiZrBbnGg5JgZL
yHZSrxQhle8AnlA/w0wOaUKMxyK+oIiAB7K1r0aWOI097c7R1qR/q7Z0OhfIgZYIHb8Y+uh6Tt73
u+UuzIs1fib4T13IU+JSIT103qo53kQ1v+KjdVDnLCPLcufWP0Zo1KkC8edcBL3ZlQA/xq5MxUKm
PkZFS9e5TpZXod1IM/R5rl9yHe1/F269IgG/asRC8tETpXkrKg725mjcwQ+DRoJOoeYQDecNwEg7
2KsEv2SBIGinr25MpmnMLg4g8YZhk0h06eYPHKag/UUXloyXTK0Pkl9nPkySpPa3NcMwbUvs9LtW
ap/o9DLKvfTnxOakgqURYDnAwntrFproWTMrcMubAx9XahI/ZvK/FnlcioRRELyysi4R/aFGtW63
iA/gzEWSSfDoM5m4zRU+Vie8fjSMev2sHqeZbbSdaxY08E4omTVdnZvoMB3rhJpgei81LRsxsD6T
Y3SdHidWt2uI6Ue8RYodtwYQjYwrbo/K/i9SgSCIkYsF/OTGjEz9fiYz3IvoiGPZ/85CAg5H7qRn
6WyF969gwwWupClnTH3/ivhC9O4mcaFdGmCYCWZlsDFTcfHDVh20Q5Z1cqqh6Zq7m+EvAsqDbuS0
miwP0H7xNeJ8xgTdrSv0gV+dIGmxDm/sCxU0zTtZC1y1c/q95v6nx7LODr1a+5tWwazrhkabSzSM
9oxaWvuCL+AS2dXDMwd3YF0rgHUQ0Nqn8ZKUvToLnTRb70oQcUSz7JBZ7Rr/u3S18Le8tbbGYDuV
tND6XF6uVsZ4NftjlD3haKd7y5HiK6yejXzTNcTMQNGJtGegBu7A6hrji6mEqFQvqugRfpAveO0r
5iR4CVkLV55h+J5GfURyy0Kd+BT38zlwqWji9267GE+PuWmiCIz0JZG2T1l4nALj+TQhMtYFvgnJ
3gjPN2tvwfWbwcLKvm5LAxf0eym6bd/newIpqDCgHpYTHBoemwRscWWyqUczRf/gBvPlaFGqBqj8
i2bahMq+B1L5mKarE8vCIxNkvO2CnNMpNsUxOxa6PVVptsOB6bFprmnSaexhCBvOdMZ91PPeiM1h
TAYnGRknysMEG5MU6yHowOYyXYWjOPWb02zY3aWStXWzgDXqPraRNnvb8uhBVnwprVZ5q598ffnN
4ntsGuIOMaYq77SLJ+a2T/ni7mLvjPvcK8VpT0rhtI9ofO16fhIQ8hZmuHS8o7fSYg5YzRPQQhMB
jkdrhN8RAdkCSy/d46aHWDHGrdQJ8vhmNC/MO8dK//o2AXlILdOnFr7IPMS2hYxB2fLm4Z98sBOf
DwxBog/DNF5DCQhFIST1FAI7pELt1c+CfMiwUbPij4gbISBIxYR7K7JBeUCHTdnaP3t5e+mY/2op
mH6Q+BxtHY902THmmnyWON/6VqeMGF8kWQ+bWOoajCjaNOYebD7g0M09rwrTKa/1oHdWtGnL2Qns
4P6jwRP/kxP7mt0FC6rNxSTHaiXALOLPk3nxGCBcUamGlBaocM+xvyjYS8xcS/OUmAOr/MdF+/Va
+Ki1Fu7qAXetelBSgJqp+WW1H5Oc84x3dG0qJrOnfThOk4MMb4OyTBssCqKKsK5TK/HEePSFFv4o
XF8OO5qHK9DOft7DtP30VyDniWLz+wkO8c68jieHfR2o3KIFHPbONu00QcSpCZBTzasUcfiP7s5+
Dd4lSQy/BuwVz/0JhesAnPv6M02GbVFFiiwU8kQFr/i3u0p11PFrV/aGrxBBX5xZ+CGXvBPdfDvD
AVq9VqGzRLBrolOv4k+GB1TpbSMHZmeTdZccypkPdIx+kGNgXBVPzOf7vaZADBu5W77wpfjDAmkZ
gM3hUqSfuthRXty6D73wE9TTFQt17GSNV7O9d2+e7fB0ECqegbzv9WCgG8Csoaf/6Udsstp1cCWe
kLXS53E/oMe+3yY5yoaSb/2NEL1lgytv4gYDhViBF3/pamKblkZitkNsTH2jznZM42VJrFdjs086
/5MeZ7V6973bWjcDezTM05nMSyabdXwzv9ggk2L6hNvkv/CizObPr/PlwltHS+U5Fi+Wumk2PErm
sV0tW3ZAq/XKeYsyOMYlrC6aybmRGrcLgpl66l58bVXCgZV+4qdP6j6OyyeQeNLVU6iKcMndJ2G5
S2AYO915/ifviCcmcU99piVXw6EV6fcxMcmaE5KYkK0C4gFOC1mB84QdT6M68aAphMsEUDFR3ANB
WYNpoWrwzOzKDCrQq2CHn/E8qy3HNnKxGUd3ALmjWphzGv1HNlKGlZUBf5iy5ItzALZapOlxX54Q
o+7RyyTGOse4VMspOHSWA6Q1giCcHoZso5uOd8jjIJ9TNAy6wCykYHNDngIJ8b7cMWjdPqoLUxQe
b6+rQ+IhQnrujSI+UdAsc0iHntyCMHj9Beptj6kUPRZyiRjV9ql76oPg8onKisjypFpIJ4MwsN4T
5Zevw5I4P2j8cqaAijjo8mDckAFQtBGb78sYHDbL04FmSXye8wSSSPe6oMswPFUjP+Pmf9kfJtfW
BVR6NCeuINiXuw4HGxiTV/Amug5IxJjaXWZDyP0QuUPosvWftGJny1Bdv/XOiFg0/1fXLQKjZV5v
DDw+Bz9hbvOikAcFRvke+yC7n8d6RhnnZRRHIspHSK/lqH/hkpMRUop/qKnZEbBFAIxlTr2XRA1B
PRrqt19ZQgTEt0nINeKNPDOUkrcsiBszfUNJ93C0SitPR2WXMC9vPujdKfSAATa0C1QobPmMpcdi
X8wuOXPKGdn+tW0MDNVwXmOlR/VFSoBL5hUfx0TN428ii3kpPAMgTmHB44fDtA2g7OKQXJ986LeV
CouQogLR85gxweT+4MT9G1uxzYBRNZxdO3Nxq02nA5S8LgXFeNmb5IfzycbFM2H9BQcHSHtsl6N6
LAvyAbiqb2jjjki8Z8IQpuaOQEJsrsfW0rh9tIuyKWCHuYeGPPXXyiLkmjomy6KOnOSW4IraqW+k
z++jdY8qhBsPVPKKoEZaPOKFkr8b9ODdeHZ4920usXxGv2U7MKrrGnXQrCtyxaEX9Z/e/0gcVtqO
7N62DZaENXZEU7qdlhR/NYAxocV0bZFtoXxuK4xZxwVHqzh8MIFCvFfCP1EcKvnEu0f/NW3+V7OA
37OsbrkTzccWDDy2wINb/otGx63j9hF7woEnEC7uVVtl32hB21Kj6Hpmrm8OeqObTcBYej9IULap
h42/U1Hq6cOwi7QmHLWOkYsel/unDJhBuGXoSb9W/OK/i7udP5uISDrGZdzNa8NoqMw2YmqGYq5Z
x5XTQfBHcmBPOjsiFZmE7ssHn4hO48T59GFsfwOWOmAWrOIWGEgLdVi7U7O9zEP5n28WZm/4O2rK
ZI7lO1Q9xefft9fdY6yifDD5YmVxIKpDuMi4PHbCxijqlejX1Fjjj4Z8A7GGn5WUtX1K3c882FPg
Z2q+z/z6/y4/bv1qoLUjb2h4lFsC6K0eXeX381J0kcAtSMh0DoMBXx8K8gaBinz6oL4m9NnB7X9r
0L3epT/gv950HGZIdNGf2cW8jQYzisR7sCwO97odonVH3JVwJJCOESKImnUKu96tUGPhBIC3jRV+
/Q3RQY3tf1pZCMVRGSmE44M4LlquJ+CPVA+QbRoq6QZH/5z0vQpr1jnry+pwJRvt0L1zHSOH4jcS
pWUtEi0fuZTl7bpsP3lO22anRzPPrnQy7z8TTQqCyhw04Gsamt2bxmh0lRr5RBkUPDbM0H9A8FMp
YHCS3zPi0YcaFj15mFzdmklOhmdPzxhxngK2FkJQ/jazCzXt0i0P3HsVw76Sn5h5eLVIWn2oKd7w
CvndKxBKBNfsRMVch0swDoX91E6BpW33yc2UmRcUUAVde1XaK9LUD1aM5461PE0nDmpjGW+GD1G5
yiIL05bpRS47Ad9O/eL4eE9BzW4FH6MhsBiSyNKVxmQDdyCx/effj4n68V1KfmhR9xtjIhxHqUSV
0q/2aZtENXND58zEBkqwkejea8ehd6JtODoys+0V2uYVKfh4LtyeYed4tFdjX0opLsNb7D0xf7PV
VxYOAyJ9Lj4GJVYB9HIprqIg1uuRUT62NYUhIEe57RBosF3/bENeGeR88GLxhLaGi0wcPbWvc2cM
hmSk6fufUhDuII4P76dMMxvqD+CLEAPX2X1vZpe9b4AADGoVbKxZs5aedbffeAck26v5mM/Ma6ex
ZocHckLuUaUrt8MyJWJQYxY/eIhqD7Dis8wu2iY1VXJqi/L1HHLUxN/ZXo6Uycvm/7j3VELfPnH2
ffk/pNzbyMWfH7DHQ60MfLAA+BTbU7sAvD0ybCYmXhlvZJJpMWuA6P6VmMS7BtqjygEW6jIsES4O
dlfMoCnbWselgL5JYH7X/Mo/3rCOMKAJYgDLMHVeoTevs26mi8R7v9Yk+TnKdZhK5IAfVq0AgNQC
9vMXM2DZP9ZPwgeSHIVVxLTm2JgwuC5qj58KM3Djg+sB9i+a4D8QFVvVMiiSI8KPcrLpttgtDn8N
ZEPBPyhjSb+1Rrb6ZitzaFVSMPW3BVcuj4OhzyKVijHd84GLrv2obUYafFfH5JbNs7HGKAwEp0Z4
ruNZ/U32cY8N8ptuFLPiZsyXJb7Do+TB6M4BrXUP3bQTaTDxmt4rXpNPUAu2+oCUEKTZeYCL9o45
Q1/yVDGsqMWrsNUNSu6Ud8OKUmeDATBOiUK7TFClT6hLesPmf3VzyduTerBj6DDez/ryikvJSDyY
YCjSWk1I4TuwJOyh0qsqU9D6SfQsLQfmENdWpGxV28ZXIVN8r2Pf6ULeS+Cs0YpUC0avefajhVJ7
GUkqNPHKm4sb5+1N9UegFO4s7gDExcwmuUl0C80Lxa6pwWItojEwIIP6SELudpRSH9klb2ZuwiSl
7pUyP4Q8Ty2ZPn9rMHvxIYzceVId38Vtcw/W1MetIFhsX5yIlVBXX3oqemAmhOszAWc+wG3vDpwU
NhA+IDfeOouzFMHYezdD10pI/lE102328Fus9yUgVKmxSycNkKlwvEUGiyVC/2BrQIJ9sYW1VXtI
BLgjB4Rh/F0GdYR9n0SZ1VwFFF8pj/K8SkX1VEfVI7Kd3NPT0oDOa/GIvyJ4Ku43w6/xGBs7qAUi
tpXAs6JMDcWhXgTCywyKWFw2IW0bkqVdWexEFaT61o4n3QBpw556gM6/ptlj2JQVJSdaHW1xZ1tc
e/CHLIQ4oJiARxwUs8hFIW525Ml5RmkUcRDWJmDODMTGHxybyMIFChMxXd3ixc3VDt9GP0Tw7ZHe
TIGyUevucvM7aUSwUAG0n1xhGyulDvCC3wcuDNswS7/fTA+zgorGQZmiHdRUwzKxncQ45Ntqr2s6
flkwFog/e/ghGm1UM3G0/sAhityEf2GVC4o5CUEYAHZqNSUn0rkc84fO/Rl/Gnto/XezZGdLDd2y
iqvnfQCMlBEKiFNXM8CMLvS6w8NVwn222CC0atqbFl+HscRGWRm+Mtnmunump4RAOFwUd37lX6AS
xkNSaHepVRDEk03YBO0xPGa//ur69gNnuOJfj6q/p3ft81ecj9Y3pWVN624OBbihpajQf9QdzWFt
sfGoqZ6fP21mwjRxR0idN8TqLfnp4YaqBBI32EHvU2rtgEutkeuD6mU9I5utqZQPfgRaoaXjjSrc
fADK6tR2DgcGGyaspDO4MJqMqLOlSCGiGNira+yAZQmlyPPZKvrt+D+oAw/6PCJ9diW5B4mNxgOP
akFzlyP406ugFRuOb1UWp4K0V4AY8ExTeHviLTIIqplBU3+hDCxkeZFhi3epHAU8fEhLywHOzajn
VXTPSDbDKv9kEScP3RWRkTSKdMy2x1V12cf9nLNC6ETeDPSp9pOqaffIVhBQCbgksBuRkPGDCjcj
DtdSDcYmJdN7NfaQ6YSbmgSllJNwSz42ThdQaffpanCU8mjrvQCySTmAozbUDhTqKjEw3w0K+oib
YzuXZPbEi4lokuRChvN5kG2tJJq2RVlBNPSYyYARavny0k1S+jknstLLpFjkbc3DdY56B/JVCrd0
oisLz8qV6zqZka/tFP2HAlG8VLdPsTLH5NJ1InVSLjgYgnWoMEwrUbSrkm8N554QslM4n4SPP71/
5fZg5XAR1pwILZr/PIq6YP6nOurPmyMBYfIZ9lUvP5IrGMTQ0NRD8ia3grEvYMvye5f62IBx+082
o0Mjy1hWdyJSAIOPeNSnJ7VCbUpoXfk3OEutFK8Qx2lPVEzu0EU4k+8Tp8jAd+FIQCJN7Utyb+Y/
jB0D6VcP1Gl+PijPUUANqE15cIQKXrmbmDRm9iO8TNkfXftb0lZAsPLzm6782eZ98wgIoVLeWgWg
+NlSPRRWN64twcqlhe+aiNOeyKZZ+OQwAIo5CCZXUSd0efizgjosJltBukiItIvFDkuUe7r09jKx
Htif3sFbu4PO3R92XI4BcIUny3GRApKnASIIa1jsnfSjbERC6hvs+3LiOcKYNhNtZ0dDghXMY8c6
LS5oaTNICnn+x1P9ylVgrSp0Uo4FdZQOhZmxGx/uYoD3ydlXQQfLCF5LlZRaqvK+lFy64X5c/b6e
iwHnl26nkACwB7sTcA06QNPlv6xusfFvaHjeaERyDP7MI+IJ2h99OkrwMUE6d+2oLJbu45EyiQDi
1K7vXKZjrxTdNo5BhGETuVS/QF7zwKnAiTpaGgAuAdrJIakdajngirSy+r9lwfkRxQDI7xfEJBfF
3x8A7aLF78jRg5VUbefBjdgsGwdZlbWEzDZeuHl8JP0p/QoeJ00pacvIODUre8dDVwGl4+IvJvD5
n4+RPB9fMFUZfkUcpfp6I2LQOG5BtM0KHeNquxk+QxA5bZnLUHVDTdhjpN/XHEKXUhp4IDyCoJzI
UHI+tRE0Aam1Y4v58u87LlDc+sPQ1OL5CAvv5c3Rq4+5b5dJTPtaAHmpaHTfTym0eEWLJH5oqf8N
mApGRb2mOA91mW/nFrnc0UTMksPY1snNN08JgK8FIWv8RghQIziK2JanqT3vget1V4p48tBKy2YF
ey+RLRXKHDiB7yE/XORcAxNt2egBYgNOzHfb1oUjzNhlNTphc0aobDdDmuw16mqiDwAYyiF0YTw6
8ba+BkR3rQowTOa2XJjjDo3gTRYHy7ftuDA5g96M6OcizRrO7UacM2IwIxfd/8iiUt3XCANdA5be
N4VQCbDacwTfp9mo0iYr3qTRM9A3oxSG0qrV30wXwERVo8MzC9YL0tmiCjgs0uxW7XT6Tg6QZjlz
uUOzgUbH6huNKr72O3bzAz3IUaD0iDNFzSz/B1U9fTSLtq7+4v2CR6Yk3OYobOEKgmgY33yQIGg+
esOvfnBvaUWt/0WadDvkiaEP5Y7VzlhCMloLJLzG4DB6xKba1+2joouoXTzrTpaA9EO7Rac0Oidk
GzJGpLCv0qsfMyLQR6kwrTka8qCLBWK9O12zZWffCFuPaJPTsZkFco1SANuHNGUz5/7PUWKkv3tW
3c+YzNr++60RmnEHXFQ6lOicaP+PvS3tKHrGPixg8s02vaADVp3twmzN3owqG75LgRvEXWV6ZtfX
6MkcclTekvW98Hs7eIQaw+BrukM6coUWU9C6HtiguO4ZtUxKBdDhGKIHkLpO2pUMO/GZI9dUSH6o
fuVTMDi3m4oXk4HbG688DB9t9dn63vyGLgz9IHsEjBHL34xPLun2V9apN4pqGjlyeCHBzhkxI/O0
+6YSsYHW5iOCN4wvmJx+n4x5OvgQgTlcK3IaJU1BzxcHh0VICdVTbQT0Qyw/1xYgbbebgOXyuuzQ
FY30wuBDzasqoyEMHMUbXDdL8+R4XZ3Prmte4LmiDIUYYF90t+Q0k+O1GzU+Ab4rxs7EO/37fqxt
dzXrgROQFbnxDsiP9ljjl6c3G/8NPeA1ZZang6XtF9IYGiFZzVicfqb6ANUAAg3hO4bg0CtL2SYE
yTJz/p4IQz7h2yYUEauERUV/UtMOlNLJAvvsGw7fnQM6ZYY711DxxO7Jq/XlIwPofMrvSi4YTVgs
qziwxtwXDWSb3a/RhmDWHUxgXjXjoqURlkb3MyvTVHEz4gngYzalLv7UOd2hQpSkX59kdYonxWZY
7uFxmaaBvEGG4678tLPHezNME+hBMX+kYlFsfQ+fhgB2+hhPztqe63AQaCeGm6It2lMAgvIqsqPo
2eDOQ55017NBnfYXexPk56No4xsAx+GEHd1f5vVGa+QbYz1MDYNAcrQ0z2DNtd/feuIaSRN3a78l
1BpmCMTLHSvmksTHAGeFi/gLgQSbWAclff/8ZSG7Mu2XcTO9S2C4sGgP+Z7cfw5F6WB2zx0wNgrv
+b4vGJ4/m1zCg8aR5d8HIJl19+oidd/u5FZx/2YvhnehSTHndaq1zkiRVceRo+5vwoiQTicKaK1a
uyxg59wL9z/FRIKS34GVItMivVEFSMmb8/wqg9pCOvLD9ISvoKwbj9A1sfP/ClVaaeozdJALY+MV
eAtJo/3cPasVepX0NG2ptcBsm6vYJ9etXKAlpkFKqL9faHHvh2lSnCdgLkbM8dRICK//iE4xZFFj
hzx+q2eDL4rn/a171ZttiS6JBm3YJ6di5h111VHDvWajahYGRfegD3Fd2LBEMbux2FKx6gExJHi5
BeRdo4kFyNqo75i1yReKU4cVsGYk+5677uKT8T6YpuLLvgPWPTUAwk+8U74R4KvMS8eq+vwI1mrp
Mo2yT8jkV5rdOAMWoGybPjShiYu7OxzuKl3srBuoxjLH3shdD6yjCIvsEuAVYIg9J/ksrqk1oOpS
/rOXc5iURNnHhPG21NwItGLYMDFfAEB8qPDVYO8IEjp8JqOJis2Fvwtd1DNlYzeiJXQ7BXfIwohD
KRP0HkyqwVZJNDlw2UvjlnI8UzhF5vucusmwdVVqh773XH+xWrMCBv7SJ3cfOov7S72MHoqRC53K
fTJVDEb7p/cffQqrOu66v4olvIJVqFGr0drsh+nnzu/M9r1Yd1mCJJcPDyvnqp9fgI30dRjKh2zg
7N2sDU0MNZxll2AWKRaPUHralvcKTQsxKqRDWvGFyqqFXNUBkvU+4vdNf64cDjetp+LFrj+3NaVG
TWX7CzW9nAWdpdsz1OEi7STjjYIXoH5MrY+c+lPKNlGfE+ocXkmCMLp2sRYF0OmWA1hPCc/B2ls5
4HbCE0dwVdMCAWfM1zgeREE8waccQnPa9O58rssSkXG58xc7+UmfHoJksWhyZ4VIot0YR/NsUoqB
Hq/99wRiBKGVbS7KAXlvORQE9aDysxUe95QohdogWuMzLEZyzKCV9QwS/L3BH6T4EefEvjLtevYe
brx3eLxZPL8G/LNWqkg/Czh/GXpXANfJW5fkD9ApP13Xul9kh3fRow/FIJhPuhTRW7Ypw7bPo1TG
Al6UX6JURrcNvOaUa1f0ZBU/96vlrBlMySRsIEIMlC8rJA2640vrpUERiLvWH5+0n0HF1JIxNAW7
624jW9a/Kv4p8q1uuvyR1huXGleSzCCpAgLgCF9f9Kvp+sTlmCviloGgrVscRMCIJ+2pjMBzEoAR
FrIU0MqLffSpG8qGl8HfUlWncGBYaO+34EwDRXJzShTZc7Dh8hZaFVrsuRphxA8XLZxHRBTe17fD
/CzuSOdI6jSxavvFZ7efS0ZgHAxBD3dwYT4eWbiiM/QWmGiLaR4CaCEVSsVCpQuLp+A3PW1rSZQx
YvIYy6cc2noeQcWwFRqYukNsuIOmxb9cF/ANcF5UCHTCeR2FDj41yBkxK44N0zw+B0U8vamvB262
8/8v3eVTK0EP/7GI9142VJjwTcCdfRcpghdhQdty4Ot5/AZEP0SNTSNEuddVaw1MQ4xWY2/gQ0GW
vKhksq+OchG43gzMMwCjTWqQQuAR9X4ZBNbOJeEQYvFxuNE1/56CwerrUMPGF7te0+QltxV91dvS
N9g7X+g+CKiKeewAQC66knIS5bgjpb6Vg1noVip5Cn0a1EkoySM1DG1LMAxkBCaAy46TmtQeauV2
YH1E/qaoiLaRSXx4xzWAb+6CV1zJcN8F4W5xw1NTuTXIR10jrqg5D16ouMQ9Z1sHCe1jJnmQnyZ9
Q9A/CmXvjGgmvHU+JpF2J32rY8Z0OsPq4qvw1P8Pf7QRIzEFdOl44y0EqIRBhcgWyWkTy0mZvkK3
ARtc1FxbguVAqcVnt+o5HaTJa1so4yx6RBY9X8KJhK9PKhslaFp2Oqm5XDQoUPPltcJjz/XJL1A/
gfM3iv+ad+0I+9OM24TdrHhdtrAf7yCx+7xi5X1Dum4vHSQ5FQ5G3NQ76N5OVyUTyzRASiPRH5Hk
x2mLtsQLfTPY/2Tl7QXqbhhFSNi/2E3LKqprU/fsuRG7jJHaFaierfS7umjG9pn5RmI1CfKW2FNq
a03ORM7Po6u6/ne4c6G6lkllwdkYx79Qc3wiqY7P5C+s4h8S7ey8h1/DkhoFTjABh0mV+9iszo7U
chpHg2hsUdRhyOxgGOLYRLxS2gxhlqwNWmHD8MZ5wmxenrZpyqRvp2AOeAZf5rd0cHw3kcuXxhFn
TcSOkHLL3IIuMga54OQDwiHwkuAOdBDBrBuQho0OkHM6qUnjcY8ldvKtYWTWar8JySOGkHKneXz7
oGiTFtc0dvisHwB6NtNWyxXHKycKwrO6+Gvx65MjY4kch+CisIAPE3qEKRDolTNWdomnwOpCB2ol
BK4RL64K0R1JEDrdkchjPsEZlQttHtu+eLPo2xqEllGJ2ZXRfWO25xjOHLXkwJd3g7mzg5EgsUyV
S1Yy4afasQb6RJkVG2iwXVOeJOcc9yB9QcwBQ6Egg3Y6C0+pwoLAbcb4b1QvC6BpMIOHMr5DNsuM
ArV8HplkHPsvUQBHJu/OvldfUbO+qyh2m2vEs0lOuAEJEAcFi2Umv7P4Y1OjQ/CA0HLweDdKZtu/
Pj8pcGz0HN1mnc5G5hW7smDUbvp2Y8B3WLmeabT4/+rImQU9vY0gKDNaGxgHz+8Q3KB7J2meZcUc
jIrAzccq8q8aQlLxEWy1fOBfzkvD5cJy3d5wXO40DD8YedG3UAHVaok8c/38UszADAFq+cYwabbt
XZCw3lz8YuRcxWtlcVmGcIK+gBlvAl1/ytBltXrF1jlJUQ8elivC7gZhQSPSzPhQNo/2qxlS/ZWY
yOILogQWGMM17np4lZa8KNh5zrBG9uUMG/xkojKD1stYPV27o7wGQ0lLuQAUpb7cO3ECOuZajLsj
Zp1azvx+lTa2dVp3APWUcRycjllOcXQFw13lqVXIvCNxtltWl2DLkwRpkJSn0hFd0QScD7RW0+/V
K0c+BlNJqhd/tmRa/huKJ5NmBC/gFKAXQSxRLtWR+ryXzYXvPJKGRj5AZFX/1WBHlU9Vtrlgwsk3
+T5/zKHSjz4nSpA7KhUp8HDh3CKGwvwo9YZxx7beMeEVxxpA/KUXmwN/e8PrLsjqaoka5jcEGsoQ
SH0FiWrZE66AGnPkHVm03etfESZazEUUI+hG7PhexONcjyqe+3ndwKUUw+tvu5weobnm+yMhc3SW
RmvwNRWB8Fe3++d6U9h7pkLrnJnMf2ZYrKBIsh5p5WZF63JqnNzdqlFyKvj7bieeeQxGW5QNcE1t
8xptJeAyoXAIUrsdOtzLFqt8vY/nwAiWLVQ5InhhiwPcwJAzW4x0g9nLdjao1LJQt5M9IXq/ctM2
XIwrglTVstOHZuhTOrrjYtQKMMYXTF3N5ep/qSS9qS3nTXBgLLCf4brTE4PLgps87oJIw49EY+iL
eBe/pJMYZ9ZGLL27IGf9m44kFXYdsDq78ebRkvPfpnv5B5tg5sDtiDuTYqIHg7K0EonUbbKvcamt
U+HF+0EdhVbeByCynWWDXnZ8jYGXM6HXj9L3jOMLlabK02BDQAwXalcZA5zqV1ic3wiAcYbImil5
itAYfhSUlBmFuEmdIJQMat2FF1nzNylIkRj8v4TcR0vNk4+akDYuBEGwRHlduViulukaUTucNiEQ
OlWOp5bVt4v4HJ6oQfG/5GpTA6VSxFbEiIsHjy41SU6NqnACeaHJAxhxSsByPkEJMqSAous1E0Bq
8hTnGoj+RBTe7s2zs77F0EyYu/Fpn8U1D2OBKWPrTyMtppa7blB/LbuxuCoWQfOD+wQYVbUTfzCL
FCn/l1jvtiyYhApdPrO6bZJKbDa4rq7yapl7Lb3FEQ8XI0SwK6log7FGpa3tIH0XALCld0oHfTug
mWWV0M27aHqluUM1ABwPuuIKqlV+XrKseEJ3qPoTrbZX7RyiAtpL6oaiVycB2cfhuSqT9PJIohgQ
SpGuFVCJLL80qeKqBc5vT+nMCGTPSDw3UwmKcIw4AiDeoe1PUTgfyHd4kys4BxL4Xhc//l/wfj6N
nw8J9ASyXkkso9WcnMB6yNN/qj92AcwpZJLa8GKQdoSZwaGt0V9/kTnAkRqs7CTJow3G0cRO6kIa
QSkv2bqDNOAzLT9cYlq1yzYancaSBGtq5Ab06pvf0f0L1AUe9x6LoCCTJ+5u+fEf04/CTdNabQE+
PtAdzykvgajSp41nhUwTQqca0tGDe2RTihBKM5Uugwj13hSawWfniyXQFuLACljNxa/3yqwIbCKO
soZsfsQM7l7RFR2rAa7Fh+Y6HaBp5XxCrCugn0t1tcO+ckxl+YsCA901jePYC6NCoSMk2ndpeEwq
HTcmpOFtHlcEaRHuSPhoo6XvaZqKWe1YvJVl0sXe2KmVRwTB8cDK+N90qY5xs6rGjI9AcdcnvA8o
REDIvvQOAFFCCxtRgVr44nJ8L6BTEf36OVjUWhwnOlptNHIYr6M4lbw7kYVWKkwmUD/Ti6Fod/xK
bzzguplmmz56tL2EgZO7bOc0U6iwp9qjheS0hEqgizAYK8+4rXuRSF1hpb/Q1DDMq03ftQETtzQA
3DeypORXLjiQp486mjtxMcnPKlDeL48nEztrnBVUvEUpGyve4m1L7+NAFCP3/2quXqOQgNbEEQGp
JRUk/wGF1R7TJTJaXOwFKPgqT3Z3sXNOH7onk2UUKMExTM+Ac6bVHLN3hYesPPCcdgfzc6co3cDu
FevtlELnWF0OUOToxLasB0dyblPyqP9iwkmUcUQvs6OQhOhxO4A6n1BZMd4edvoQzN411LzR1JCP
HnbAX3MvWIZ/pDzGNF8tEs02DkhF/Nv8+5lub9vk3r2DbOenpRA7jULQHIVMN4zMVNADnY/5oaJE
wLwHYtcwSdBxr0Qh06BUA6HDXGWvVH9IjheacgYJwRpCoPaH7Ys7P4gM8R7k/LH9CenAQbMsOglL
W9l4E8MYRlD2NvPxNSu5oQ8h727PnFgi2pn/9XxlSMnuLQ5bwT7fmJrnzDPNkGG/LDmQ7i6BE9rq
3AsF+qJ7mbBuY+8QGFXZDohB+s3IeFVvMCxfOw2+TfY6t5ZrKkk4Sn74T7PCfUd+ZSzCUtcP/c9d
jWmycCdJ8Ck+8SnRV2TRMTY/9Ih7gYAfat2Zssb/ydneTuIAa6yb3TAn8vADjGSdInTLBkfJjgtc
PLoWXu9LBDJOJeo+fOTgsTXWSlf0mSLoqMghbKk9FqoCH04EboreVU9oN0Eyi+Jx4mhI9rU5VdPQ
cl6PMRlAWIMvabPhW9ISgzkm6yg6rgZVYmjcAWF6SxC9rvsbJ0ZoOgONoD5C1P1mqhmKS4gJQglV
kL9B00sC34HfQ9RBTskArCJKO9Dai7aqq/8OHMxw4Fjom5m/oqifdYy3ohPEL6DjDa7QSRi5EKJQ
nu0V0sS5C1/pCJiakq5XIUuIJxpMKGBfwsLSMRDqS/TEY/xLiG5AeY2Nxd+rme3mOxAVofwRLfSz
jwlrN6hMhRP5uX5pHPveLOX3TybIn5uzeNtzQAoLscXdT1wuEL2JqrmS9++NFF3GMUjisX7bGRBX
iWuwmrrgrUh9uSNRvsUZMOrTFPiFsBI+xkjHE0Ktmpl9BR0dU3cCCZG9BHVMUMTn5WzQGo0Xfsp1
mTRMcr2ENIZGLRLVpCFeKgWF8RsNQD2NPAvW6JHFJcBw8BSIAG1ZgLFUmhBd1qyfAYNLC+jkPoSD
LNhvLynqvi2yo1az/oIQrY0RHCGNkb9kY+1YzpY9KRaaNNNnV1QtDfyw3pLco+3VS9To2IpaaWmP
Rf7UFSuVS9EjXexVVsw65ePcvOGIgjkNh6/b5gkNDO8UmyGqPScV5FvdWkTzAh7l2GGoCrjd73sy
nfanOkmrRXeeumfWVV3DjlepBmo6APVeU0TpPsUn4vzMpHAPWs5Roej4zNJBTluiUscUKiOpFvpY
8HREwI5HM88H7aBrE0RtdAgrAm1+OJARaP2VRn9RcAiCTS4EPixgkU7uJ7luQBPFtYGrWRXTl3JM
9XtqQa1sRvttr6cFsfn6sQTkavkH+UU4FAbQflkQjwR80KEvd3utqJVOWG9QdKTmjn9PvPIhTNEd
cLV6bStz2JJuT5iCCgcBGivI/bOtG6WmEjGOI3UyPVW5AvUtPK04qeMENoOfjeZq1b2O2dYxnPTU
MB9ykyfJX1CuR05NS8UR7sDscQWNokrmeTtUlK7XdSHXF0FnhZKPKxt9PD4zEl4B5shH+vblEUBW
UhTQ9uk+IAb6t9mdmpnDVELLeiCTgGtHguf9cvKo1iYxvlw0uOIeiBU6WcnVLN8sw8Ix/ZGyjuIM
PXOlHeHYJDOdz+9cCHwsxwu65CQt2so4++p09ypwMp7lg6X3gSRm4Dwag0ltTcNjHKBHlMKZ9RrU
MMeueQ9Jgy3NbXMDKx3dUaOQaDj7Dyw1AgLC+sK1VEA1AkgzrsB4du32L4qawr5oGdzhzGm4Q0wS
FoxR2lmNigiPx+bm9rDK5qsnY0uDAJMfYW3zWgHx2zEErfMTUeT8Xk53l3WA9QM/u4/d1cpfXCya
G6GzPzYh8D6i+ULEtfwI8DZ0XbpakY2Xh3Ss+rcL0ope0RlbHgFWIp8ygQq0EoGOcqBVx7iAgEIi
UYJhtP2WMl4b1N11eBkqXy08f7lrzspDigl6Y8BTx1PltR9ibRi8Pi6q1eEl4cG0QbQqc4ab7Gv3
L0b2wVdqrbLfKB9nlBeLaraustLcaejeSTup15p0YMKMXhvWWLKlyBRuxDBi3VwnK02etbHphnMt
FJPK+y+rcc8ujh6u0bFI2M/dgQECetM4KWss+OTyxvdahmn3ZGl95Ac8OZSNHEdN8swb+iIRLHSZ
awNXz7d+z7ysS2ns3TlatqYb/Jw+vggixyuMnovZyyA4ht6ZvPFAB4msH0oKgUnA/4choJFwCRAw
3WzVT//19UWkyVcldx0NB4ugMlUUJ5VlCWStpT7dsub7gitUqr2tdARwVPpVdhAaOkezH88Z5LhH
2lSasopKtdtMiEOlbkV8YB/Ac5VMwBguQhXgEAZd2J5J6TpPl8+C9VfRz/zshXgVhf0hDB+jRWbp
xXXpmRL9DfI3y4qkKLxH2OcpPRX1OOjdbZXkcoqMNnYIobYRe3J1FH9V7zDJ4rN3pi0XizQ8A0Ud
O7cZyoqISe/pBx8qwBzaNDg44Ros/tmllBy8KcuDuQnL3u6aJQfcOYf4jClMDEFEufNbU+AcA+bV
ImylfFNV6593agpH2mnXOWM7C5d/bf8mZMTR++Kbvo8iyEy8kXgO2xiUI+EB0XEqr+kyjmwqqPiv
ybZaqyJNDqyREbSSC+pGah4z3enUUZ9fdej+DgZbY8EjQny6De662GrS6S+Du4wc9p+W9/1w7Qdc
XTAK+YC8ev9rD3mVyYw1HoFFxaSIUmFKGlsQSk6ZR7+Iw3dtcYOJzbU69ZK2jhVbthudBpqQrlr/
/G4MnmF3QMyNR8CneMy3K9s3mg2t/y5fj9yhGs9Cc1hyctw597DMShFGOZMBEvnfbzaqCFqTt12n
mbSZGY4hPesybpzOMQdwRuWC9XwqIc3qdQc1ieOxNsaZ5IZL83ExfGZQp/Wlk+xvp0OQZt/vTXUe
cBif+yLlRTGBnmyGXhFLJceyH2GmHA8uKClTgmDwZ9NtZGYAQ3BP8fjL3r7LUVw2ew0uH92UlHgt
P0M0rP8xXSCxNEpH2uvffUPzFIlT9pinENIAN4+nbPnhO5HLalxN9j644DN5mpcULAGz8Jzk4FY/
AWexdO5BsmH4307+jhoGuY86FKuxRCjWHY1GSnQKyCUWxd8QZUawdv8ZfRCc2krgO90E3ld4I5Nb
HlMS7jgUvpG+Xf/agFnJL9SYwtxngikdBO3jvjtm1PfFPcSJnB9v7wd+s5nNToJe8Fa/3RQlNzlP
AiW0aykZph9VMOALHmxPVyCOODRl1BXBRXDq3D8WETOJ0+GIScp/P34p4n/UT6iuqvqbYaRa2NP3
JsKgBAwOoTzoGdts3nrnb3q7DsmIKzHD+P6ktrWCU0K6/D0RpU/O2sEQpSppd7FEvEtnV/bSxd2L
9m6p/QZSkSNfm/xQ6GYjND2PLuiVsPQjLTSNJmnXMK27ue/r9FM1VjQrEuJj7aeMpZi/mWJuLuq0
WxZgfZqaEJb4XGDxfgidIbIvm/OQsGIyaK03rBxLsn5tQrnpg5zxN3iczNVGMXiK2xHtkF3yUUi5
VZAmq02DWyWqHx5YQjzGqauJ/tnRoy1CO/5mNzKbZq1OYtg1Dq16mCiREnhj9GNNWNeg81vJBwmg
U4Etks1M8dU8KsG8srdB3uhYhsVTq8L9xdY6U24mcSvZqBniRIFp3EKEhQtgc53jDB/u3+n66Qqg
eLxIkRyEcBs5Q9ULyE4Nh3y2SQtn39EId6ziazyZ+B/d5r561Pk0GC7fXTeODtViL0Y8VKuxT9MJ
A54WO067X2iB40XJv65GzJVH6pVVojh0Vu+bC8RT0oZKHmMHeX11FHx0N8InTtGRFPuom77cbpfd
gKs6w8mkfkxCuOmcp5lwW9nzpl64MQN2RzgHv3WxjUbyhumP+L4dOTJzTjBACsBfeAkgUlx7txXY
HiQfB4TyRSsOtTMUGVPln1nF7XVj1WyUL62lIhAGggRc5lZW4D6VvzEsyQr8K3cchOVQ16vQ8vSY
2sxmrKRVTwIthiv9g7KMB9BzU7y9cKyHpg5DrLJWYYDN9OOxQx7D2QKiC2BKmGPdc22/+9qPr/j8
tL2RxEWCifq7sixiamQr/8EtrOGiY3Vhbt0IxDvYk1B2toKKYIpz5LJWyMhQqH4W2ex4UA9yJkVX
M7ILV+O48o+V9OK46w/5AANQtKfirmlJHDRC2OWgBEiSNL7WzqujXy+LPzjE/J9i12vzxKoVCKNc
0z5V8fg3iQQ9rYiupn9aegGsOxRWsxDOyV7f2HXfwh6r2A1Qhu8gRsnU/+NByaR5i1+79CUu08W+
8CB35TjCdA0U2tMb0gVUg8rFhWhJap52BIV2jcDgKhXhP3dJSsIbArrgisiFBHITL7Pcg8fAXzwI
0q1hwq5NYFcBkDQsaBYMb/aoyTXXrWV/9nh2OV4S3K1yZhNqkKLMEF6pJ5XBuP7idFn9LCmqchJE
doigKmlNIiTwYSrmkJTAYdO89MXGa4tVlzdUrb9Ubn9osGVECLYw/LbFrT2iCJYbves35gb+pIWM
3cYLx9zoZ75OiAW7zuXY9ZYbSuRFj8ruaO2FEsk/EmbGm8nnR/MzrsFiugG/uWc0hjai35h11zvG
mOZLjwi6Lx3/mUSXwK/lR97/wSK3gbi7HxUKtOXeOyawAbW9jacltGV2/sn4TIWCppn64i2Bjuko
nGu9D5X+NxT7iCy1yDbbZZrH9HplnWte9p3Mz2XPhOIhJdKp/UWZs9ibhQwo9V1fP7tsUCJw0qc6
bdDZzz4YWZaj4hbcnif5O1WRbdjuX0qBv5P4GEe5sb8pbTJkiwHBb/53HAtHGTl2fSYCoEY+8GPc
lrgFfKql6xnaw6YEciMLEoZkefnDRsNXb8NJBhKarGGswzhgaUJ1ct+WbUdvpg3PSugUe7kHyd5O
+jaY7xdi78YZ63MCwMktWL3Luh9KHWdfvOTX87VltwFvdTH0QmghF/5ygeRRVGFayN8pUGFadxo2
2KoWzon9jeNdlEqWbECo/4MRGYhA0vHTq7K8AXwWDtR4Z61XeXVDKUUiZVp/qat2+J+7MUReVOLG
1Yte6KiscG19lsJl57SMuKzoKQlPNCT/kBYvXJWx2jkBf5ihfyTFR31g4bZZqhDsInH7Nj/Ray4I
wRy2SDXH+3KbofWYrad/2e5tWUdo45yaDf3XQa9wI84nCCrBWTvo/FrvOIZHyNwweTc/ZSqAqjhS
oYnN69KbVRX0dkFgUOjLBQZZNaTGN0PSQBirg4kfSZKUENpLi3SxOqbWWXoKXCt1W2dedAF9Rl/q
nSlTCHUMkiohA8pBB8kDbo5ZIAfMUvNJl2KP901jo14dPiZ3eOo7exOCZK0oGSmlYMGnyfen8ne6
GCGO2STqL5OnSFvFpqmyqOb7O4s56h0T2XwSbkd7acKyKdbaNe5mlzNvqbk+S3Iy5ehbtTEc0y7g
YFpW+0k+1psEb+bpk7D+AHWe2Sq7Uk7469C/0Wf9VjtwT0DngVimcwlSJjLHFtkcBpxYpQlcs6w2
m+EwJGoAZnO3OYnHD18sTeLdLy+DdeGS7XC9vwwOmMfWxwWVN+hkZ7AQiLkKaraT+ZEsD2z224ky
kcbhSorxKjGKUJNa0IthxsrcRBhkK00R7Yb+B5nxhg49mfD2VXw2tTcW886Nr1ceaW4C2l3rq+SB
RowPvNY3JrqsW7vSpfBiPcuRfgG3jpYuytrEyrQEEFt1aOVAMWAckfP76JIRx0oTYb1z00Kgf0eF
SHI+R17lFT7m/LMW0Q791jH/MiK9hcqj6oshbk5Hc2ileWhB8lDeiAvP4zmapWxE7luKLhEtTYYe
2mOnk42g5AkXpa/pfMBUF+dJpPr2g50oOOwwG51Ab0mCLV9d6AhawBXz1orxyQ6mbK4114J+l65x
y24BIxTU8oTHwhKfeA85o++3j2rY+MTmPusaczyh9Cuutu/IozNRk5eogDm14b/uuIA1eznBMqO/
kAFDLO1KA27tTtJHi4HGyxt2vOm2l5r5cYofTGiSs3VsAGIhvepu3n8+EeN/77SyGZ7q57VQrwyV
inyr9OgoAZ5B5iI5mNdksWomQrgRnCU9Vo+97UNmlo7g4Kl40zi+GJrPw9S1w+nuzG8AbkyBjPzB
y+7AQdASjLflZ3bXWIZlaw57g17J2jgWPgzfKJ1V77pNV7yo3FsEmjGayr/IxwAOc6ElG3twdiIe
9KdbHHG/tL4mwpR/koICBY97uA9ZpW51rTpKsdtES2z5ag5o+D23eiikWN9vnKmkPleJMlWVJ1Me
PdGZpT+79AvcCEeoQNJfauH2GweSjI4+QH+gzF9evK5suETrJtqD1ABbh7hZda9HfURxHz8iKat7
8Qj5SEnGr4mVXb4X8WM9NWFTQ6qImrrAzOfd03669o1a4Pk194+iDrY71TKp01+67TblL0ffgP2x
GtELWTVYF8uFN4Wdlj7MbiHtIz4h3GM679BccyEadRWtFza1YZECBnCpkmK/Mon6ApWn9SxgdTbi
iLJwy5bRtEJI8dhmQMOfMshErNDLsq6v1EHS2SgbiusDHD7eMxQBjO80IEJRb9j2Tqsj9FeSEPS0
x9t/mZHcCGPSO6/y0IuZCTsKno7DYtMF6jl7mdsEnYLD0rRZEG8KvORXHppm7LDVYJEvXH4oVvbI
4gtQbDw32qv1RtTeUGfVHS+q1n9N+NlvldK5F+r+bKlIjUT2sAeAxGKk1Gi3bq9VUjEqfdUhROhS
Z3fg4Q1Dwqw7gpU0pHSIDw9xgxSKgXNw+kNzMQKBVApvz4htnspBjM+BvrLR6X9Rh9wtPtMqtw4/
4RPU01yxji3f1puohGUQar7CZ+TRmfYjnDnZESko6F0l0xaVPR/VGnMYpm6vwmF6FySqFFCZQiEu
Q75CnW1M0qN8XEG2ZnQ0nku1QuntoNPYWjQNed1lw4Pag52j0Gef4y+A2+rhq2f6c3Z6Jg0w/Tny
S6dud8uJfpeVMkfR+6xXVU+V58vwo9mYD7a76Kq3jD4bCBfmgCIwqCY89JUCPvE9VbfdwL28/v+7
DVxPZjJjv8B0Y9ajjLpxVrf63Mtl3Akz/f3dXtqTV8r9mpV87ZmSaHytWdo6EXMvmx+REmHiIgkZ
C4fMJeNMSePImtIzs/vGzoN5QDoq9LkkrYlXL/z2iFjIsOu1ZtFkvUDY7WYHvyQcMnEAVBQQ1DqF
KL18L9cTCxzy3qWODAi/QbJ4btzhBu7qZzHtvLXcUL3OakgqiTwmt2tOVuQellpbOfEGr58D2SmU
gvT+zjxbi6+w+hmS8YekrvpR6GpKK4HJbLIOKyxcTCBiZX62L2uzOC4jNYSKRy04bQ6mx2bCfR6o
vwYGvpm8lrkX4xPMtnuq6/J94W+qhOTAcd3BInbq795gb54t6j3NKbZBN8yzY+ZtsWmJxcWPpdvv
st79DTOHh1oPQ8bySfnu90yhm0hXM5M4q34DDFy7xs5U+ByhVwhtYqjWL4qdiUujFoQq4MKjcCRq
kbsL+1fUDSkx/PMoJtA0g0aiRiIKQsO7pDS55Nc+8Xg/HhJH48qbdbkK3bcCNIr87oetNY4qHevG
Oi6bpqt9MF+MdDUcIn3jSSqmOGF0LHyW+vrIWb1fOqINi79oUDJtEJsGOL2hnlxwKMuv0bTch4Tc
5wVo4yXluFpEkp5ZMLs/zW77k1ZCxbn7les4Tp5vm9Ol8iqnbKAq6lweJAFqbnWusga2qmsaJ030
nsrTNTzxtCfQV0b0gdvyP6VcMKQ6c2adtifqXP47ZwhwxIcGPfc2O74QmvN5KR+0VmYyiaBmdBng
F+oZ7ZD3FGFb4SAyEumuwh6vAy3PVe7jIQVN49xYAdez8ZroBPz75XhL6mlGNPdAFWotWYsRQJZc
bQLeH/KlzJWhySJwXTZQpZSit7oQzixlJdCIIe57BrPaXF7+p4q3FE4LbEUoZH1ZUtW86STNMr8e
DQ3qKhzrN2kbnyLFMhAKHJTeMskGoqxMm+kyZneSS1Gtdm4Q0V5fAVN/X6mYqFfcqY4Ys/7SBTD4
7ryzKdOV4eOU9JJ/R3jYGIhb05J3WNMTAJP8fYqOR6gq6VTO1e1q/Tng2tiycYE2d6MIDToT0yRZ
8+nd/azcaotw2iECA8FX+DKvn86924a3Xx7iaH+QFj5TbeEzqNnj2N6g35keLXeXYPE2v4Wg9sS8
jwJq9yC8LVbVTfjlmYRy4Q1fpkdskezUudvUhkm3xr86qAt6rdjpqprvO4k0pJwEcNDBhQ+Wmxp0
AnjFMetrhYPdLz1KVRxAXngRCq6fz6/q2iK0to2gtRNsws254QD4wpn4TU2brxkC0wivCRgXVeiB
ANdI2DG8AvYYtwSOGz9SVv3UgW61GvpP0DPRCiauHosstXMGm2ydRuqSnG+YOpc/lB6ZGKLDeMXT
w1Pbcwjamy1fS3POBDzFVkMTFVZ2Wa/l/+CUqaa2F3wGVFBdijSozix+Fs4oJyLDyvUv1AsuCRQ3
0h1lozlppalQJVlBXOhrILJwRcUIZtS/5hXcj8l1yjSNGxjVm2AK9KvwBTCznFIb33K/D+OPTCTv
fZ3FQApxSDZWJp8AGdhkNVhfTUZ9Eq4dsZIUdBQbyquTyjKDY5P1PxA0M6Bbkgo4U+tvhZ/DS2hm
jj+eny8yvVCKELyYzsi6kS3BVjEihktiYxteK128cvP5Z1IWX8dXMB3hPMc/ZguZ2XQ4iwsxNAW1
HjApeNAnlli6NhHyLryXy2LNdtELZGBW3TTJki9X5gf81xKtZMercswTQLuWTZMtatKYsuTOKNB7
7UyBL6n8PFYlmxwacI5gsCzZFvR45lrgj9LHxoVeecTseNULW2APf4v4jt22AUE/1NKSWTwQovM8
pSSywUtq5yGT1H667GEQmYNo+ATCh4vLdJKOqS4PruObDLqphbBAnKMX/BbHMx2J1DLniUEy3r5H
KXVfPfWN1hw1Fiqpb6IpWBNcGr5xpd0Y5AVV8/ekd+ohR91tXXZf3vBCjB/stDci1uSAl0u/XFOd
YXLH41JijQghnubThOfV29KryTYx61SNOrE2eoDnfgJMctyP/0yzAyBNIQlDEjV41PCH+Hv1S3oR
6YXqvAPBUDbSSnxlgh9jarkNhvTqgn422LHu6BjvNgpPZCzkEmzdHNz2vGziM7LkJyHLZMpzP8IO
+fNCyC5WspiSejtmt/+adOiLdSfhoFJfWTMddFbkDonR2TsA6nUIuzU7V8rfijxjeKiqpJmnh933
PF8worGGwfesQTlKY6leK4tyPmW50BNESauYLE6inXHZNycTa1dK4ZloyuXsctxF8S35rr7rgFxO
+20KZngWNvSxGCd9ce71Z9ChaJK3auexJdJJ4MHfl3uXd4tLzPxe3FOafwNvCDPRHatUoJFo4ouZ
v9wWa+OkJ+2ckA4FaVnASya0WFCoAqJ6Qcmf/P/10/qvm3Cs3/rTi/Q9chWavtpQCM7L/pquDpAY
1UJ7NbYuoKdthkoowccgYBMNpB4lKNT29ZmUqeYxZlP8vS/26/1fBW+adGctuKFblnus6uImSTA3
hbB1pftp/2CWOLDH7O3qpDZ3d2b7vI53sX2vuayu02BpaQ0CQK4MzEqO4/tN5jnq7LVL/fWoLc7p
nD3IWQXiKq4P6XgyWuWs9/IZcrNs05KiAtoUfyKyr1kdu5mBUZuZqlWopjO7DFLIqde03R+aaxue
ybNGNthxh5zt1lErJnO2zHWkn/ph9Nni+klz2+eK44LqcRWjpZIkKcKOMOZMlZk/6+MNyK2GJjHH
6f7ozbzd8cuAJ3Tixwc4ebE57sMZyrXl2Bj1B3FXV+jBwJHc+4s9C7itNlnS8g2Ymoee7auAnuYO
SeO2XeBHt5pqzWJTh9cxTpWLwIkHBs3g2DeSoWukbJxfbqtBhyYFTOuFIrKsNs4Nngeex0fSc3ze
GLXM66J5QZMadvm7u9kV9odlmZeG0iY5xpXo+ywM0w1zNkGRO6VHot+LEEQG8Csz/l50WrAqUk0V
G6EofEImat8WNhCetWXKB8WIVTHUdNUElp22u+c6qlcUo/DvfrJylIKewmW6QwOODinnipJBkfOD
chZuuDoREUsLc8AhF7aIzJozEZU4zvd3/BMBl8ihvUwh5liFEv9Vzgmh1ZFaIGA3K1e8kMjuZl+x
HJF5XVtZP3Em5EtUNBw2DUpjl83kIrjgwkxEGdG7y2CmZDpXh6vieCDGuw6hNcHFf8wc1qDnqaoS
hoPgn/3y4KfPu8zdM/QVwqLVw7wDRrBis3rhO2gDA1QQaZh21rRdoCrNUU1GZNNJ9ufYShqPQQF5
QxXHtPXctM4IlUkUb31vfIw5WbHzgcVuOLY/y/f5+ViYFI9nIU1qHjqfzY5Hev9WP+m87A8ShtH+
TNdZA6M4rk4az2OO5g6LK/rYBqXVmxkyg3I0xjKfaLCL7sH9ie2aNmo0y5MDxgYVVJyWrkowKbPe
abR9WZbW8/trlkr+bNCPYowaHRzdmIoU6NHirmz+qd7QxeMZEVzKWrS0nTuC2f5eL8N/7tsC/HO7
qXOi9WZyK+/idTgC3PXg3xPwUhgW/uHQKB1WRQ8K7juLX9IZQwR6O1mRGPccrmZfQbZR3IsTFCPt
afbnE1buUu/lSbRphLRE79J/qr5UTUAbyppVWazIY7xhLlamjDu1KJQMdGfpUYLFRYz8y0NUC0VR
qpwmnsJL9MaerkarZ7x/8C+6p6YWJ5AsfiTWiD140ngfLR4xAgp4pGa6FnToydjqc25qSSkb11TM
YsIVHdbLnEFxdws3AlpWzffEncpjXJxWG9MsC5tcQ61fIuZ+EjIAgZa3skIvN1fJjrDjlQ6OmmOX
HX6G4t17ymho0V+Tx8xt2xebyZiJN7ER4pb5iE0zhir7KURunVE8p7VS16yXIbfViCA9Fs0EgAkZ
cwGr1QwxVX6K/MdcGwIvmDvWGJZb/u6c6N2fRQ+zKtSOCkcrQf6V8cde32EfUY2xZVWkD/UJTIr0
x6edefdmXx2HCmOVTDM/nog/Sid2b9ZZn9X8Ta1TX6RkSAiEUJOt4+jDmsKda6zKseIcacyv1CVz
wPHINxZSemdpDi493RgevYpnZTV94UlAYrpbm2TiHkeN/dnnD7ZufV3HH86gmScWMt4afLRnk6tH
yGLHT9JlZbNybx+k0LlnAG3dR0lOVatnnnlq9DbpkmHKqVMd5njp2NU5kEOUjmCOuIGm3fr6F56b
bl3r1vqphWSZNqXdwYtqqPmudq2iBACi2waabHQOkjg1Dj8Rr8xMKrHWQXPghANNCXG5Uk1DU/Ei
xDgz1OVLcjak2KUdgpIQ4vTN1MBiMkZLTZYtSQpXQ3Fc1w+4GIu3/g52Dl9Lw1WDvAt0VDcVEaUQ
fZa7fQT2BzXCqav03L5JsDHmBuwix+5I7q5KrvvVekORxiiDYiUcSMxHhcD8OrvBhyRK9SH98bq/
QtjutBw1ndg6xAd9TszVgnrUjUlXxegSrHwrPJDi/PWnmW4muOmvtnq/C0mR7BldIUFI3KFV6izv
tV+8+MlxKUO8iwjJA29+ynQej3JFT0defQztX9DZ37uISq2cZGThDnpWH48FckUfMXusKK1sYCqR
9CEdZDrf+ZA6RQYSTwi16ORgqXiNeHUv6w1/6evfF/hYKK7o5VAr7Us2g4PupHG+yVQsuXm1JKmk
DMJw+9BjN/zs78o4kCr7J8cYnZ9TUvocaMmHHVH9TnWcw/V3T1KqrO++hIovDDgE4qNHkirnsz4e
3LGaEAIosdV7uIL6FMlc8B3+DncRYivJWrbnEn164P0iofR2BSEz47Z3+vRFnnr+hEK+RwnTqrMQ
orMTD6xRlPl5bCDs36KqIdzmOq/6YEpWHvu3GdOhmO/SWCBAMeONJyNjgnyeyrXqwY/ZojlN8t9R
JW0W2Njt4Wkup7EPeE0si2NVQpPmsXlhDNro12SH1dkVIvnc1V/lgtwfn4xb9bYci5WmEbJHxFCh
Heg+tYPnixWBhNtSREMiJjLvrUJfjH/KfUPhaFfyyaXO++w52hxitwLyvXgVfrDFSf1ZwDsrmfHE
/N7DP2uQn+LABzhtj86kEeh/w4YVX0LIf778U/OXK6iOQdlhnnrMXXFUU4h3/ab2dod1NijWqTRz
bZhRt34XqZIrz4NWDOpWZLevA2Mayk9MHOXCHkcpL+B0Iu3rpq+efjlJbnMHIEztkGy9kTtzkGSJ
axQtzheaVEAKZk3gNJwOdPa62GcDV81tG0hiJcab7HfWaq7DCFmmOtew1Mzd1tIQkAbEqXMKepLh
HeQjJemWD3tWlOMOliiyAgOEsExEOnYt2A8FMY9G+Afby0z0DxYApGQacGskSMXlgMoZI+TJtJVm
CUu01RQzFoXN5mQLAKLWoBFjYx8ChW2E8hJu98DkiFCxQktKnTokK0Ak0YhuQEJI0dJrl7Z8dh2c
AooztvF6JH3xIJMKAcvb8SKO9RrcO7gMUCjOJucgK544O9KFXERKlropn8DcxhQIsBJzuxj9zsGb
kDddojGiF2Gh/xIduMD/PBRHwyHnMvtdqrGbMU7qLA0XmA94XOm9WAJ82vTiD6W4Eu6ItQLxvBt1
jTDmjhaLd4/PWyz9L73m6Ad2KJw7M9vLwMx3UrhHZuCEqPagt6swJ4cBwK36AgHWLUln6DJcEKku
MuSnVSTdW8urbitC3XryvaB/gYY2zgQku+lxJGXikfeD+NGTJ4pe7ZQW2X4Wpe+iukO889TZE7QE
WTWpF+RCygU2WOznlqzIAnj5HFyqIArnVYiMlJf3GNdho36j5/+Nbqmkzg8YEiAvwUZXXvlA2BGI
8O1g6DgTLSIIedCDMPgtV21B//tcfd6EpfvaWz6la8X784OD/oQkHXu72TxpKz9Bsm2gMKb5pZbi
cMVtGiXDva9jBa8thRCUaQYTc4qf+o0iI/LHzLEsbmI/ZZKRaVt6Mfs1xLbGbTGxL14HoZ3/34iZ
pjI0DtykKl2Igcp56l4w5u/KHZTp/K71J0hbXzyquhs6s5fiR87kRjRuw4X27H01540e/C3n1mOb
X8Tu1nFPDun/TFS+oMBO45mf77YaMPCKHtSeporsaEaVv+850muJoAwMJZoGAcAHRivHVaJ7phaP
fc/XodlpYzkCXqkIbAWSPmNZMg/x22NypTJyUS+D1/8vH5EjkDk0fhMqahmIs3P23cAB5I+cJl9q
l/X6d2Z8R4YBtu6XHpmxhn4T1V1jvU5YvhP+wRNmLwx62YLg0Bd+jYyCchKJht1ezhOoRSIWWJn7
rW1fGXzLdpB+Ao0GoiLzrk8zoYbhAREbGv263yJKyihlhxQ0VDJPfFJJW9AWj08eaMRM6ptmbWCk
vlV8QhrfE67+BhOO0lvEGeMvqJ22aZ76+oYsQVf++82WSt7oEHxXBfyNLL3CXhmOemJa32mHfROX
uNemsmiJzWpz5rCWFgXvc59RJTd3Wp5s/F2hyQjK+l5GwZZTdEMtuQ5CbdaTnij7KsS2DXfyrKPP
Q8/kgmtIbh/tG+dIY69mEyrhBHUi9lda0gaYmXMqbETgqSFlB63auYqT7DG86o3/adpTRjJkAPv4
wHP24DsRWV1l6fbe32tD235AgDSaDfLb09uWtLoUZSt97s5NgGrmSbZuZYrXn7mKzc+aQMT/Vktm
TJZKhFLvwIiOuUSl7SleNUQgpxllnjN0iDx5BvPa7P+1MGWMTIyiJQaeR4hzCAUz1IXDI/8AUb2I
/BPeFg4CGF/6pinbtFW0LtjM4H81ny8kf15mK4BNEz0f4gQIuP7OHbbq+vqTKhIm9cxFNHJGT4pb
u+Ztd5OBDm/vi6Eb1oAudv8ZDzm3MPj9tqYEME7PT0Sl4xM53NQt0bZv3upHnIjfQMb8jk+KsmAi
4fbabBBO+JtGibhJUZqJxhQGwI/btuVLbONMy9/Cypi1bW2O06a8UC5Q7XkJOo5aiqpcbOojOwB6
3fPhVoWbdN0/B0Z8wRn509rkOw9eLt1Dr0bO98SrTsAcSAD/MNdu2hEdrLC2lyRbmBpL1gK+YII9
vFtpDKTQKuXt4y2Tmw6qyCwZ50r40VGZ72nqcRgo/b1qtrXXnfYTgl+5DIk11BCzmzMr89QDowWw
y4PhF3aO5F3EQSu/Oh8cBsIgdeIKy3std/55IGwfAEfPuAEge/PboR0hJLooKNWBpVXfL/3N769j
6M6CeKcn/n3JkoToxzAPk0IJtsQzOkILNX/5U4G8lvJJBIxExII6/xyQ9gtttodoUD5FaRrETLFK
jibnMp9VwSIyEMCig6A4v9BN9jJ2Yzej8L4WSwRmLt57abdsBoKo4DBOQGVDjDMqFGTDWq2Ya2CZ
UGKTF8PfJEFBC7PwotrDMgpY6fajfZoDNOX4GQcNUPazulM7rEh5RoG3rzYRRbMtvwDyzuE5YVY1
Gbcu6W4HpIcqe6JyB3M5O+pjyVBforJHZlg2Frqpw5TNO897YcIVOh8NO+HGKpTMGvbes1VDmLUh
zfiFnoI5Eagv320FngWFVMzwNcm9RUBoPMhK9JAIUhwF7x+lWx36ZmR79mhPl8N16vTv2Q68Gv/B
GZf7hbOVDeFe+CVvy1D04m+drJKNTpOm3Q0Fnajt8N6CVFr6WbmFCRtyWkNyChTmfMCPLemMc954
pDdCFwnR0+Uk/BJULaukJyYY0Gy9Fwl/mkdaVPxoYsyagTWR+15/FvD3/yeCR8wzSsHzI1qsTgyh
syU7BHWIkqMnCjSyJmblzGs293RyhrAEo5CBiVS+S/BfHTc4qjL3Ykm38kqj4pIncu6A/QNqIF5t
Z+BIsUwgwK6mcWd9Xr+aD+/p/VLFReBhBImuebftk/OnwsNBV7J64vqgZBJakLzQSqf2X3EZ7jEo
C7Kx0lUYyHaHGYqxl6y22OJkiflmGGIg9mtzukp70/k+FyzT55o0l44o59GQfYnNT935DCJxCUUu
wG7qiTsEq+E/Z+Jm1Kqrp4fGCi7FWpAXML8V0z+qImXtnJM9UnYE/9Eg7igB/lhm8T9vWoha4BD8
SBvmyYEFdJl2g9FxplbwL1A3rZVypResEmTPamJn8G0hUqSdCImmMAEd+DA+bMzroi9ITXtYR1KQ
PU/Lpv7pXDCASQy282nt1j1tVuZ3y4R5yqc5zQcDa26X+vteZ2NaBTD2XJQ1SghULAxmHmwfkJVM
km2GPkKIElmadh+bUPv6a9gc3xoog1kwZvzlgl7KG0lNTVWBWHwdU6V+pVTf2BMwN0Q3JWcW4H2/
2ZZcOqGAM/wrjoUriVahHn+6xCkzCLi4Qf5ge/YFrhf2q/7cr3I58khHVx+YswGbzMo3plXcGD0k
x1Y4+Qs1MUcjnR+M801KVc8Ai+lpmKWDipVOkg/bsTDSG7A2dtXa8jYghUS+LzvvZbAHg9yLcqt2
z0eRQ19bkB0K+KKKhnthmv7GLGIDnJ1ocdAdJg3NUhWjotlm0A3iTGTUSRBgI0yjXA/IOVPqawtl
zqHZoSsSnnnhXjjemaUEihhiiTrcyX+dWDc+DkhZ+vNDBVboKDmyW8MADYGk036YUR1gw60i+SKM
WsadB9WqWGaDM+xAiKVfORPjscvXfPi3H2jr5lXn+KMSYPV3QEs3NN2aAFlSRXdFOIE7/IxrSLvg
1G7OeEFG70GSmC41CV/EDVwtz5wLEAFBj6psDqRiqzu3LF5a/fM9VYx/vvfs0mw+4sFcSs8gplrj
4M83Wyvxk0S56GAwY1Kdp2o4/251n89Bn3/zQlqwW1xgHSsLPAk83QlbRLJK7ec42PCpP79juJNN
WjRtqfj3U8VAKdHRrsdqeZE3XhuRclfB9ExCZ2e3mnKwVoUe0kE4V2yrqy49RUrb6BX7afKAg8R5
KbYhPyrZ25kbcu1GDX0bm9AUrXlaKTCICRjC4YKFyVcBQoxSzG8OeLJyXvTPl1yUWWWN9Okht6Pk
jve0T265S1Wo0Zxctg+EWqQpI6oCQfVJhYLH84Nxv4fbMXKHUGY40QJnSd3Mg7TPyNAw5Zz9FcXt
LezMrXzz41ZGTk3NcIT6rKfOQoLfn42n7BEmKut3EkjwPZZanJHQEezHqiG5m+RcGB02ZbPyARkU
Fjh5GTJtH9BMQmnBTFj+c5JrSfIzYFoA7VfY8mfJPtnYyUqzx3Mq+Wkx+nYLr154IV9yGkJ21hnR
uRWy99qPTM0UCkOIc2UDb5UO5svwuz0bSgp7e1ECkq5V/m7T/1vX2/rsm7+0doqoHiq5kPiSEstB
CEQPtxdsZ26LWlepLcBTitjl7KmM/hDbvif5XmhtEa0paLYj/WfNc2+RtJ4RGRewEtl0Mb6ZqA0h
pJAkaGkziJYXUjIKu6O2CvXFmIGuHCXy7fSb35BSZ7BUQAIaEu1ZjFMLzgTG1Yuj7i5v58OR0Zeh
vnO30hqbv8mL+CErckfq4+EH605UUeDoNq04ocIdhb5nWM4HCaAeKjHVpUf8Hz1jMTIt5d6r1wfa
iQ5nB/i3+RomjGzY1kcdC8tiAPk8etpCJoqD6Q7dUp7sPVdwRyK2J+MAoHZ/rkBDVEZnygOgrVnc
GTYlL10Gt7L0XzR37R8NFn7wLqzLB1EPLwiRxhafa1gVhBL5ZJ9DnazrlGRs/j09RgKVT1SjDy0j
SHsIcS5O+qDGLWVZH4qZ4utUa5YcPTaNfxfL1oOvDlEOx+BTkt887NVJnpngp85L/RR3fhHoYICo
VF6vgk4Z3wAxEfouBJ2h778zaSppAil41fDM9+6iNr602XcBWyisZ9HgFSZUDG+R1Vj0S4Lmg0ns
DL5Z3Hv0Y9iSz9/xsh/r7xOzUeuqNzuhuHoJeW+pFUSl+/oOdEGOFd2ChfOIZ3YjHZYGeSPFQEDt
m6EZ+3nZFD4cuWD7iqMGRAu3TwWcYz5rtUH3/3y7DRkiTtGnW1G6+scT/cc6xNuA2vIoNfLtMH1I
u6XQORBAhrmQwwDNXHjQqUlFLzhfB2ZYpd56Ge7finhsgeJ3mKxhTujvbTjnw+F25B+tzDo0+Qgj
Xu+oPUm/9hxxlbBsyTA8qI+Ei7gOP1YcKDl2DP1V0e3qn8KawzArDbpnskaR/H/61brYTKG8zQm4
H/dSyi/urXRr/Z6d2MfxyVKBXMn95kr/fy2mqGW/LElWbXtp1aOjKoaWIFwf3GTv0Ad5Qoglnhjl
+XXNsD9xDyZKKjxyAHLBdNWdHG8PgQSkezaDWMVUOl5Qza8PloU3XEa67vOhJnRkyi+3QY5GR5Nh
94cq5eMwtnovwGmup2R0w1Y2lUGyACSUtjlKvG1gTx2OniYo/0zxdGURLRJpDSweTu3yDeOZkUeI
vUoX/BaimQGnsGMbXtI92a4cyvKUkgh2mCUy+EpmV1FX4yUfwR0EB689hdZYdirODVrLOlSad0/F
YK3fwAqk3In7kZVgFJaRcqJ+z+P6tysiZkKOkWrNlpBvQxv4UbQC7rFoFgr3oG91XiIGyO8we0nd
Cc509OrJ0TH+afq3WxzHiisZ+eRoVphjlehBcaE4F7o3UKprOizY4wK8491k3Kd0Nl/3lItlEiXq
026ugpw1g7x5rmtGnzITC1Iq/kCP+N/BOGEs+k31Wkspij4P2woiXBonoZDDK9ZIicGKGBuMej8L
pC6sJctJQh04b52cn5PP78qMUOKpEpDNDEjjPPOYQEWpeuYQBmhlaLGF4bSspT0JwmpIs3ZvFdCv
t/0uyA+hCGwCIzFbFNeQ4+umADIMszNy3z31QnpfI7dOwEVMjf0k/TLhve57IF2y4V+WaJEAvwlV
/L4gO3/lgqJdkZ+UNJE7f+RkX8+dzcHay9R+mVOzzJVnCRbSo5BOA56CfixNBRenmspH9suOY9RX
avSKJn54R6Sz4HkaZfOHTx+aQEh4qLNGC9YEO94Ce+BAUZvmSu4Bl0O4sgbOoKph/S08RqYuAC/8
vEVevqWELILAwVdxlfOaGv5FcyyYQR2TmxVgyYl9PAzG9VhGj2Os2aAC29XBvVJs8uNrpmA/79pz
SLyBrPWvt86hBgwYKVgZSsPNVO4vYgq86laIyDiuFNO6cqG0rkme58UZM9lVuAoHgzdMEmlvhpnm
Xo+5uyPRgP4xjhcRLG95DhYFmDc6mdmddCM+HmacyuQsqxc8elDyrPP10LKIeqe0iY2W98ZZAFrt
hj58kt2e+PV7s7RSxp/bS4AW8o8XcC6/rLhIkyjuRXLG4X4kuBVI9HHTF6YcFajLfRxOVWGhGsGJ
XgqA0+NmHIi33Lf7gB5UWrUbDypvOThZlG1wTzhtFVAK3kb3Dg6GJv8TYQRNlkgQnDD1+cFSmKL/
NhzNpK6Gp1BJ1ftUrtGjKRD6kQYyaGyXc+WCZdliP8GOcDk6ldz7QaX/rGhHtbj0iDEHSbeSfOuJ
IDBfgJvnGJ1vgJwHNkeN6UndU5xBgkR3Vibh2mzSUlX4iG1S3UFrriQJzfWWv8HaN31yGwVhNqyd
iFjXMamFkh7Rh39ahzONW2XAUnyhIlorxKL6pgF8Sa17GtWmUUJemLYQe2C26HB+GVR7jYquqq6X
9cBqPzGPbN2/4HoDnGQ77/0/e9cQKJUGfxQG1YJcLucnrDz4q5wgy1wN4HI0pBMfj4JQa1V4TA/u
6wpQZMBbEVutAQwNz/4Pbl8tJ850jimjreTqam25/5r1FZPEoHxbtiiU6CzhiDiXKhGWxw1oAZHO
heogd+wvfDjg7UGCAT0Gt/zzaRxt9Ld778xUEu+OnHnLv1wGbLadDwnI3fgVCe/W23ICAjqQ0PYF
QQ4vczTPshFac1DWUhkd9S419lyuKO0JPGnv3OFG8SgA0h5XVlYxz+gDrqMIJaZ0UpxIYM5Qa3qG
jyAfMbsJD8VoXkOP0UOEnsjdWZRHzFPMY/MZHCgtkNItN8LGmpapCvIBnAG90bFJbwjglaXjWF94
W+Opl+WyeNOUmYp3GCjN1V7Dh4x50vWPVYBW0O3q5vDt48Jd38Ozc2tHXnPooOK5q6lOdT/Inugr
dH8Czgu4WsDpQZFLLb0B0MTeRF5FnHQW+fCcGTkvdGaPdaUh4/z4DmknCYAkUA+jUzU4pqc+K693
NpG0yyVRsdBmADxmE98N+krrvQc0bwvAZ0pZ+p1cBIz9+/byxLWeKJGtnbgewIcrTmqjC3ca78uU
UPuuAm76wWSJWVfx/ndf5Ah6C1LhDB+iImbB5mLe/qTrRwA+GLIxV38Gc8CFBJ0sQBBnZmi2p8Gq
thJNKkhPySX1wTGuF/I2NgUdXQUuTjEDz/pEN274NTaPTLfHRTU7iu0UI7YTVZDpUHlw5k8KiiA+
5F72k46mrXBwukKYXJCMB2RntC+RoX1MA2LV/HLmbrP6uGkgN47cJ1z5K4a5vf1h/i/UxQ7HHMvs
hz9ZdmVpdjgOIo0SOviMir2NSzMEoVG8M/4HmrTArM83FZYBI+OODbY3L8qu9O65f8dvdq+A1Qd1
O+6hSjrIbS+8HgyMMPkzFF11mNjTuLmeQI8KkNVdzZnUkZ6gfeWC0mdHTrCMoNsEDKHHXVFkOZfl
FkRZxjSGtG+y5t7Q6JxAl7eW0QJi4zgka5O9dDShSsfRAWrHOQYMrxLYsKQoXG4fjedvYTirvicP
tPWBq3//Si8VVsZMKzalNkK5jJjeoJCZR4VxlmNjjxbi3qRvUr9M0tOgfuUfPXKWY/6uKWHKVkiK
//NjesnS0QUbvBp7Yt2WNOu7X/xR/c7BvlIYu4AxEd+WJAoaXibEI3TXk3zKErTRa32BUYvHSXWG
SNT8pufp3ceY4y5o0MAxajCSE2j+DiP1/AnT36cQaVI2P89k3rWLZeuN4y+0VT4eCL0UU080TF0j
31ZqzQgANnGYNyNpjg4eN5BDe7F91NxjBI1siDsjLdgnNv2gbxa2lWXU7IY3LAim6MIkdCoEGmSC
/yK125r8DxTHLd2s2QoA2Q27Uatufg3tFHf/H3oV31m6jfKB/S1+aYMe9oB5HEZ1emk4fkvrH5Fy
t029vR5w4hbo7YF7SOYtamkCsmIs9KC5NSw9bQ+htmEvuZSeUxGoo8ZEle+aVkJOc5pLkeGo6dt1
1w9nu9ZesAy/we8nUiCsR6ISBzCuI9qCb+zeL+atwMaomZSHnpSyASahV5XPostFQabNhxr6Tb9B
IKf+wHnbxtR31vvHkclc30mWPBx6QsttJvcObUBY8h5Ao8NbMY2pcqNUV2SQcNN7nA+jqr+JZi4Y
C431jj67q2R++B5zbbtj0wHXCXYHp93CS8Px26i64YNPnXz2MFtKO+ZF1hYjGoEsiaF5qBm5EZju
1KlnQB2MSxlvhcX1YeDP5VFMBSjUfDrma9r+cFkBNhBjB2LcGkKhZkRM9VUwUKwgjhmExz8h15YV
aQr1PX0i47EQlxrdfGCJPT3CJVe/ymJs9IDgiMK+2emlTv+nJTD7tTgz+hBK9HZ33tFTVMQ2NEWT
0D89WMF4XXvtsWaDEhtHs9gckzCyXji7OcCvcRSTYWtt65hi/ltS7eQsLONj6laXRKIxyjG0d2+l
iEWQSSGv5/EQqAtBh1yaab8e2I8ljoxTnzRMBbbEhoxTnqorDzdBOsZwaCl9ZZBWvmaV630hWAA5
sPC9Ho1wfuCShKzzaKWOF61f+YBtzywrVgXJJlhRCmGaQSZjYFWjNQTXfEkax5MOilLj7KBjT+e/
H/r6FPurd3QVtM5bdf27vIpGmveG/XUpbAeNHOcZ+oKjlrinaGjIHi3/XW9Vx6x4bPuppLYvaD7E
DHXs8NNqa5X5Zmlm451BGDQPpyxW+l61eUNbpfEYI62xTGoQivrqmOiDY9JDH+5waeoTaVfWSFer
UwdrWdx0vXQDHdoEDKWSRnDuOZ0trgf+2gJ1b4lpTcr2dM71ETfTifCH/oY/B3knClIVq93cU+iX
m/sM5TI3OYLbQTbCsB9F725c1VOHBr0I4upWvNVTMJQ8woFHuuqbxuK+9mIa54Y8lbO+1CO06m2O
zALjcf4FGwRdu3oeTPC8iYIsWONYhtwWjO/8ay+Kl7rNRexZAyDQuYJ9Jqe39Wt+QiZYrt0410VR
8Z8+GIQ3xfjCPThU1z/uSVV6XY29I+lPEVX8tym2CtcceSrC8p8GsJWci0nGQYQxXTnB5jZC/c0E
o2F2A2im6/UfnA3QuAHfZTAloRTm7yiGa79d14/YXwai7MhJ24D75Jxh0rochv1gk+nWuFgrOO2T
L9Oy7CqsudhwT+8v0ef2WgfMH2ZPSfom3W4N8y7Zwub+Xnwoic/ZWyJ2amFHTefi6ke8/69EyC2P
nZ8PevbtH4ezOjxzzf7IsznS94ur4yyeaFIb7p/jp9bd4n7g4jkGu/Nryy9336g/PCjR9SK4fkMH
m6DeAjdbmDAlLrH9W5QwA3igIVJYR0a/VJT/k35KE1NgFwMbw+hwy3M14R4Y7/AE8LOWvXxc7CFi
lZmiISzBTu1+D8LPbQhAhoFuB9ojjnT7qeg9Mc4M+mM2Kp2RL5G55y2Ox/TXB+twQY+soDHhbFEC
GtRV7LmZF0qQCz6nKLKh4ggu33Lr5HTON2QuYrf8aCVi8DpAwYITDEfSFCZ4Pk/u08lXf9OnzVko
B8tFrnaHRhVvc94ZvQM+piLSTvlHgLfvW3yc2gwanePSs608sEmmdj8LQAxU1p86q14tmlYEtQvN
ZMIG+bVpzD1tbaho+TRODKMxFrT1J6c3/y/xN+0i56cWmeFPWlJMsFYswUhO+jv2gJ7Nbbv6bmU3
lSFnGcfFDuXNlMfWGbmrWKnzvUmf99AQiVn0v7R7MI+O7Ju2C7gYL1KY4sJjnyMbVi08p5poITq5
lawbB/qvYOlKMVaRaob69//rZ938o0ffQN3khkIoVAB01m++QecrlxZNYQ7gY/fUmLpfR2d6+M5o
LGciUXR+65kgi4cW9lN04ghz78UqFA1bjBewFziQ3OcKIDtHDmTqQFx9rw0J3BLVMpiZZURJY/U5
26suWFeiGuCzzKfly0EyzJs06yB7x5Zva0etnuOj5ryX3AqCUDVU3LcggJ0t08nQf+paYrUQC5d0
lhkr38k4qJefixk/jL37KJDAYqx/ghBofrIvfonh3+6TF83Xd6iOE7lldEwbAK3ZBb3ifRknStyB
xzyOeQFuEZKn4ZMANVWlT4qmhOwvy0Ra5ujwHCbyZf4DSG8aRMSeaqHwXfi2UKCiTZYY+LAbVmCY
kddzUfdKQC90xLzscjDQou7IMLh32N6BoIUXaI1z5YZldC0cpfc1EWqhuxeZzaahWcWeKrU/t3kc
A9TctpEBlMMXi6ivHwbf7wcUv4xIgUhc7FgEWGgq6omvUx3HnThvzNpP5G6FpCCNQT7m9as7VM3T
+pPWsLuNTExp/TuSMVNVC93vQ7dAkEYyrM5pJrhLV7fo4xDpTJy9bmC0JyFYh/yP2zkCIajEFPY2
E48DN6OJpJTv1spmrtUZhspuAM1U6WDV4IsIz5L09OOuFLKAVuZMswh9mj6VmG8R+BcfEGxBX4VW
PBbIlKumWOK3uC3Tod3+dFVr+9uDnkhdB2gCeilGYnlXglBxr4Q1KkSbu+NCjPCWpFSmQseDB4tM
WH/BtIxXLONfWQ1yX8y9/zF2u3hxIrxsRn3adXFdLrQqPWV4tvhUjUinjuozA0LAJJou5GrW1kJT
nJYfay8WOfpuMni6A+b9U+mv5fM3ZO7FMYKxPakEyw/7iz3a1PD9t1/XnhNnXdiYMIxuROqgYNN4
hRxirUYq7y76iP0+vjREysDUcQ1be0M5IOC3q68GjmEU3d+XpLb/OTB8DHNxWYUIZQWvoL0xEYdK
V7+81c2DXLmr41sesCAYdyBZyTKLga5CRqhal64bi1unvYi5rW/VYkWzqWQ5Q96JGIVCfGyB7x1u
EOFkyRgwssTJpflicvTxEkdWvpNQcb8rbCsF0kywggx5Z1ADU0szLC/czRPGHwmxe7BgSp5WuekZ
WsHhN3JFSrlv2L9Js0J5GBAreTlPkjbeXcaIJaBiYZYzIhZGSBhwb79mVaXcxWgkKr6kD3YlF1hC
scCsdv3boSe9l2v5Gg0Ya44/EWGPrG3XrSDOE/CTEHym5r6tVr3x7Z0Vv++JbM96NY1IbsUv4lhm
7muqYudGK4xbSCkrp67riavcfw+16qA6t5OWWI+NDhyKUgke0QECbVK4utdM4syY0tlNc1TUOBcJ
5sk1PpIRai3V3P2zA8V2JMKVd7MUjd2rNLuyEBip1+KZePCduEGGqZDBdS/laeKTH0IDwK5PZUqk
wQg/vtQIe7lITiS2Z1sJ2YXkuKXn8qQVH9XTZYhMAWPQZGl2Pn9ZUDs1sFPUxUWF0rs3NwcwLxoG
Q1rjWlydzVhqftlSp0FUEiSq5ZZbOVATwRQs0TXny8to9LczofLPRzeWGFDmybkhcSb43Ap25HvS
LAeIhk9v65PNtrEgE90DPIaQ/YdL3RNzdlSQQLId9luUHraqMmi4OyfexMW1MS4fuCDCeMSa2fHE
vgCQiVAu52I/ASTHnS4+UEhDNgs+zGhJq693xacfacmsd657TOgMpbFn+5owPi1MK2bv4evBSwPL
MSyaxg+e/R34OzUqO5l7kOFnf4BzbJFAPqpVeM8pa8g+AzNNRaKQO0bhPzewZX45Qd5lR1IFwrUn
028UG0GyNQRzBMlFk7a2eaOiSuJdxbfJWQVE04+CIlvDwwTUxmNZy7FDHLfzjQckPCK8Cz8ebi9Q
RCBkrEoxO+/88CCMCi3Avvk8L9NsNOyCFxyoqfSVrfAjP9HHA1eUIp/m4UKT+kut79ZUrsc9xHU/
PW06y9EWi64++defx1Hm3xE3oEF//zc7RG0Y689S3jHR1RYZUa82pZOUowe9NJcvHKgbVd81AVwz
uB1j5+AWan0Wu6wDnfmP2MBjglaOdHnmtVnM8lial0RgKnQonteey11rj3R6nj/4DwP9AvJViMCf
zsTayMliU2MI9ixxaV+28232My/7h8fVhndYZYe7/J+C8CgDTjdJn4j58SUD+d4JHcLReVMXoPHO
Wa0DS1o782cFNqIq9p+upVXWpfppYWPYwRexchPrqIroCSXBs3fXSgpqp3CnKG1eUTIpE1h9wd9E
RLSZOjebbCxYeImduHZgxvinIw6GoRXxuhdHhLcbatum/Vck1AyNeyioH5wJNvH8hXEz16riIqOj
lpy6fcikPrQN0D09nLea8VhvN0l8X+4jjYqDjfYv4www4HzynZLQI6Dze+Y1/0zdNc6T2IUM7MyY
siN4c1td8yzDONrO8r1MpFmzpQTKvvLMjNVhHVE7uh9YZCksNaqkXZJQLP8zhQ9LcpGGGmGlLcBP
QvWKhjP395JikbDQK4NvjBnNm47dNDPFPTSUGE+Mj7eJjaKCw8PkGNb2NtsqmJ2WrRpUtdwm/SUp
XWVcBYVVrsELdiNXWYPQY+/5xTUbpK0KTT/V2KZd4DvcO7IWdsgAMITK3d+m9q+sb8v0uKt/cs7Z
wgz5JTA1vllYoehShUh6LjuoH+XFFBNCDoRHUdQ6LuTiMOp9UEJYCqcyUbYD7kSNrkNT+meZMxsD
0eTKuifMLc6KTR/AUb/UbkfC5/ITURrgX+zi/efgxdrf8xCtWGAoOmCdHmvbgK8InIifqhYqWmWT
A3X8V9iVq5NPWqcpW/zAyagdA1CePhTg9dC/1qiasGZpSrMelIRqFBB85eUrjcUsAo2/1mLpMczK
T7fFj2CtiAXjM1Zo1df5caWEdpEJb9vozVoGKsTiZIaYbkAPspn9BkS2aWzk/bR+qdFwUe5QJafM
ZMjzBln0cpwCbzLWDp43ttCPGn9b1kQQQ2wbHFT50ig13SQJkMgVM7wb1LKQrxsZoON4FHpP6FE+
bFmTJSMpToMa77d0oBmD4ULkzZ51NVlioDTZQvDZW9Pd9KBl+u04Hmn5m3WE/nocBqIZ3PnQX09M
GAW8dKj34ChzYE6yuw7S8PmBYqFRslyq+F6+rk6E5Ul8Sytycks0p3HrVMWFgyMAG7blbvN+yEAn
4FA/R3VlXyqZYkJlgi69xLXDvw/uFot0eFluYIiRpz5QqElj4lckO+z+hNEqZ6n+kJ4qGiEjx/mS
xnV1owtkB6tGU7UEOU45ONdevkKo3pP+jv3CO6dGOkFFwhDWZ1YzFkAe58T3D761xBYVH/yN7TYh
QvO7S9hb+d0Oxcaree7mESssMob+jlGYmDoQiy9OaGMELatp6uIKeH4BelNGcCtWKhPYtgP8QJLm
FqktoXRUdPbXBzD4E6RQtRar7VOVyhgyN6OKazakqzHPjFIxr52eGW6ji1Yur8r7jDdSz5ntTEtF
wPfd87bUtm/WXVc+JSJt+VMmm7tMAIhmiYnU5OyfE9t33FDYHvcbZMJ2/idsX8RAsBPTmmb8gdyG
mAjp9Hp+QxdM9ZtHxBeW2v4UiVupxXP+44Q36SBJWSZamPDnCcJVqM5slUC92h5QBtbde/4fBEPi
6Tg6+W3t45B1ShaZS4qhsUTGOvF4XSN+WLj2M0lGgK6JP6RtOrkuAgpD3jmGR4U9zsM+nsPye4h0
jgYp8rvjCZf+hWckm7hd+FBnMjyT7rSMoL0CF8DW7bx4gpETF0KcZVAGrFgcSajl+jF5D/w6hoEw
XnKgeX4VhrFyORyTmK57nXFygdQmB3I6hbqede5NALCtkN0vBQBvdwBIA9eql7kJ8J6U/Stx6X34
6ByWEeB4qzsbR7UOQPDYhiZmgWdt1/JwuRZvzjap0UyqzCQAFjSZpAAU5ZsmgIsTnzVQOo3RJJym
Hl2zs+dft9s6hWkSeWZkEYzVJnRW3bacVSNqBh3+ORkk6uOGq74hmCR4B6KVsCOtGViPONu7O3tJ
wxkQkeSCNJsCbLnunSlxjmDL53DxHBN0OZYERCwI9WfNHvPKyCqjY6xeM+dIB+MbE/gkYOSqsEOk
3ppKtaJvlP7KKGOsnY+xJ9tYREw8VJQ9Lb1+X0+nLJ8w0byLcvfo09QpPqz2mXcRKyP8zwzkpgNK
HrXe9tCGRFYlkjHIXoa6HFmee8Oy2c74P1wU4et0tJ7cF1S3TDXwyamZImEG0ilE6hi9zc0NgPr1
+7/aTjq6oyC7FBAVMpEhayy0+JG0ucoj+868SA96CLhVrKcWxPUk14nWfvS4kIWTWeKwuIpaMrWQ
UNeca1wyaEkgkPwGPgqUQPOuQuu6bvB/ppUWD8OF55dYzEmUuQ928LjeaPo4KiWehObpSInCWVGj
0g3wY7fZgVtOPxoxuvxNP2gGL2N9kDMvVieqkEwfjWttJi97WVVDz/b6fF3YYYOldxuHJOiJEIJ+
jCEQeyWm4W9LN8KZS0PcZD+E4L5iuIJ9heG77hVwbDOPKy6l9IF1JCflvGbLIJoNeEREQ46I0eFT
K6bj1xyjL9UvsSwUoqnLyhszwCUqNFkf+5qSuIz2/EYSmqCPHlnk6SG3LFGlsMOYeKEuuwyBJJeL
SQOPy/Rg1GBavOD2GqSFBdRwVSjcL5IoeGh8zR85OCyZQpOTvRpA30kfMLsQop6PAhd85fcLkHY1
Ys7ToYxMoSj7PJd4ig0yJPv0wU6hZya8QXpJK3v/bk8tBi89Hw0xntaFzLi1FughpIDw4U+7vDTl
yksBgt1TKvf/IM4RarU9Q0RaxHv8+im0nyPrO3q2KZ/G7FHyCShtFMkgjBF2p8oE+/8Aq8XfAaJl
T2OMIIeBk5jfbDrnLhKan5cKkR60NnQ7VPPLx5C46tBvDBWhp6J9vCUsDm+6s6uQKRzgMkGJa3fi
trJAU/60JVPe8Pfx3R1Vs608+5p4MNruLlU+wmCg2mtdo1d8StjinyqTLU7KX+Ugo6/zuJZA3FRS
3KALY+Jw+Uym8Y37Q6hAOczzNO13LX296AXgQ8GFlbw1Iyx/4Hx44yuGFVccIKefcdWrjTdlQu4r
Zdw1WXEJrSWQVKD1XGlIOED2uLJzaJVi7K0Tj3+lvL+0N1YwcS03FfcphYIaNvEcSEQtxyWtLnt0
YWvWTaXr5NcMk7ms19BDQvQoZQNUuZ5BqmIVjiXP9VRKPkTanKRw32J1VBqS2okxz4L/3XMlAkEY
Ib6Lhkpm+81fUZbhNuOCLo92gWkOsvP+rglO4xbD5trQcC+11e/h7XmZaxHXq335JBUkmxOeO7MP
M9MMjeYu6AD/7sCpqEHQXLhIdnNnICVlyq9GvQIx+9gHxDjXIKn9ape3Tih5RIosZWlIuGBLByV4
nsD1hMlSSj6zZ7Vtwr1Q2DgYaSugn7Omz7FsJyKDet2C2GizgzBjGoKbc+Glxd4j5J1XimuqVVK/
2FQC7u9F0lRD+k8p7vbODGefpY1HTGeVMdwGrWgMs06BTuZuF3VC7QPQyNHRgF4IsY4hciXByejO
LaitCCFdvNakMb6EbahHWJf4MG45to7FgdIlBBlA4BH46H6ttkKJW/KQA3mMG2eQH6RotMIGqn7d
WJskwGQrw5RdRYM6CfDYCg6lqW1C5HhJyZXNzibnbu9wj0YtLzTXTiit5ppF6vNdJyynYSIaX9tg
dALODTUY+nCU76G4+BbSvD5EYvnPa5ZVwDFrC2Z//gy7TiNwX5XwgitESmIVguwZlN6kQbv92ozh
lz79qz4qIC8K4na/HMJN3UxqTwcokczR/xJvE7oan2wX6IkTlaPKHJvOVgWD6oStP5r6UDGzkSH0
QfxVV3JjjC3ocM67gGJOZMx3YEySCw/EuBrC4VoaprpwG+G6xmOMKJRDENcC3kskQCHUyOPoAXhN
IfvzSRe7ZrUlWUPWCtxmNbi5NL2+XtawnPvb9LQTl59NlKOSTT8KFky1hsc5D5QLy3Ed23Xu0MTa
U5zhuaDypR40jeWJOsZ0TgDzeGOTFh4gJvHTTul+9YWkhRHx03RdEQWqjTJvpZalvytkdOvCACK7
9NuVogyd9fIPT4lmVySLUvAh4yPSIOyu8CrGx8Z+FZuBGNrSF4wFfhrAOWGtTFmfWEe8HWKJy2Qv
+BeLuGPXe8MNchbrHVi7xJ6zc3vfb0S+vlk1wTDPSzm1LiGghlm5Rk5aTNSKsa4q1NuC5A+c+wwg
ez8MlPWCYlKcYNT9ss4LcI/cl/mFTg+bu2yHv73a8cp9HihAU5JxTx3Rhn+RWFDueqUQLUTC/28k
uhncEO67jELdBNU5aF9yJ9ElYOAiSxM+i7By5yUvKyvFXVz8WCA1s7De816cfKR937KhSm8SJfwL
BYVn1XHudnN7FjZqastO/Ip3uy+6YgRft5Rm2iq1o97ymT4k1MYv/Ytzkn20+wxhBCzlTLJBuU0+
p3iiIB11fvzuL7X3PonvIxtcF741g4O46x5Ydc95KgiB/fHORnEFCXCewTA3eKsKVoIzCI0tWrkA
erYjVoGwJkTFxPZ2d/Vh6D3Y2iKwtXoo40O2CI8SJlwSenWx7GKHQABgfD5wZIB/uOfykxYQfkiT
5cIATFGgLOAMkGOOk1SebXjr3y+4aZDcTviTIwtZymmBdJtg3MRk7RaJ+qWxsMcTJ7o5aR9QyErf
BEy1EVnD6YoTP/G2388Tl4CoPu8yXQ7FlksmIGMQCfnMtMzpRXP7QS02JaaQGEPVsnAW4SJulVCt
EVR8e8Mv4Tf2yUvr/HKEmflBK6ZyPUm8WjWDuhLZRVCVsh7/djtd/fRlbWeT4ij/xiPuFse5ZM1Z
RXSa2RNIC7LPYFn7W369vjeRYFUwFBEQmkcLC6s2Lpi0sCEZhO9wtKI9x3+eYA8Vv99w02X7MUil
xmZUUR33i3SLf1UljdpWzq8zyChK+m3hHLAjpJ+vfIuQoW2nArIaaFoc258X4La68M52+A+7QNoN
bswl5fqpGbnEXkuHkbVEAstRuKr18dIAaXMJSfYeLq+91cjQ42i/ryu8Ka9IHAj7pybT0+Iw6Tf/
d5iz+t2AcrlKv/Lh4IXfKZh6LgmiD82c/FOT219MjU8iB7y7Oof9EJ6vjMD3LBw82Uo6WkyL/rMg
b0t1yGItzIC0HcCUrpSrCAxZsuOVYoB8ArBwNcvDzXA+j/Dfjz/M253Omt1H+V9nSU07//8VfiE4
I0DpY5SdKabHHc1o33gbn1edxr6dulY8b0FHirTKOIF3u6SoanqlOQk55PZsGMue2KnQNUGB6lU+
YNeSrTNPa2OBj2LW/LNn5XT9MyvTITlpN28H6BQIkGaK91MGPLQawTD7J7kQQeeCHogBF/EMALm5
Ce8b2e04fY4OCLTE/cNOwbzthYDzCODPnJU8F5IAUz3YB+qQCoFsUcXZc+pk4FhC1E69CKZJgYxd
3I/QQR+/G8DDSk7TZC52Ge8cta5PfyIoLNT/TXTYBuvNbFHZerRQRw7QL+KTBRSNc0D5tRDpbY86
iyn0FiJWHlVb79+kEnN3As5NQPc/j0CHWljZw3gkGyhGokjH8LuLVIthi8JKNRcWgMLa3ShFBfwW
xM0LbNCq4dM7LhaNqpMVPCGCumpmi6OOn3s1ebp3D5FiRuuWPRN0f/VTIJ0ADozhE1udW6LphJRQ
SIddl09k6p8JxZepbA6Fyji4YVgW1F1aWR7IZDVXoNzIplK6Iiu3cLE1OlGfBjOjyOQ6+oqYduVK
3TJngPBCt7UMdCnBlg1FGDutj82TIxE4EgyQXm2UiZgD8eTjmzeh/Fl7PJjsccVLyKt6Byowv5gk
VYoHRw43gahnSnn9yJeNy01VghT+jdgGfsQAtx7kIPipgBCOban9mVn9CeAHYKmeFNLiEhCM7wGb
+Ew5YRhaqb2Rj5UG2l6dPzb6Rsv/nuxy46PBfMXgBl2eEPSw+7IN7VRUuZcg3glxpx5tYTsPvHad
55DuKpcRuZb4bOE2GK6Ss+ELbTMHJuS8YP1xCAmtdhEX6Bg+0OEcwvt+4qi8zSVfXwC0nRYMyzZF
T/Y8zs/1oWEdHA2iM8x8Gv1M3h2y/XoDMLuVmzxHxaMaai78eSQlP2AwFrUyX6seVTqjRSH4mmj3
ePTG5AL7359jAR3SyK5yKmijhDi0n5jUFMhZWLUMFvMc7uoiuIDNLlLEJdksJLF8zETCyykvjciU
S00Bf0uUYaZq3h8ghY3AYpJonbIW2eFcXzjbOrLWSlg4C6Da/XLMs+H6JUMH2FNmlHv8hRShJYcI
TNykuJz2hWXwunmiUNM0j9Yf8oKLIk+JzPDuSgM+JtnhgIwGTmFg8chiw2tQaedsQqiApNMIUZgB
r78yH/2q6MG/4KC+abN5ziWTcVYNUl0KEmUHRivJtydPvFpRJylFZKwFIkLk3k1emZ0cCclmXSy3
3kFyoqZSDuS9j2pvOYlIKJxT8QflLz3IoEk2JrwizgtKeXv/us2SkiXaAZUOrx33h58FnGxgKSso
N3lsSUk3k6nwBnliYD6Zw7D089rBM0ZeOdSw0OX6H70L13OshetseDjDu2XgkCYv/RNpp37Z2Q7o
1qWnZDFl4GZ3tbG6r9xH7t6X+Fa82uLv5YD3UBFtXwm7AWAqtgbv9btGBSt7fE9tcGpPOk64u05z
Ax9duETVK64HyKeLFjuEhoPaD1N7KiQPsfO8J0v/S1QNuYXYLb2KvhRw1/MHoIymxCTQup/2x43K
AytADYLv+TtzeESiJbsCwo/flebGLP1ZOg0weL7YUHTzvcyy5KIEAUeB75vtL8ClkpvOrpEQgS8a
NWIVKlVj4g3GqKMw4QszbhJR0R7Le1VLTw8lVnoGLPbuodhSFQQiQaU8TQv2tVp0muxcSa+fs2i/
dBRBlhvTbw4L8AiP3Jbwps0PpzNIJDTCFdSyxi0bp7rtH1HeyAHvVWE7GaaHJBiRne94Tip5u/j1
+0Oj28AIqFoY5GqBHzynah9LNF8svqBjtBALnpT4TAMf4/rM8dQjnKFbwVRGjuvQ+Vtm4SJWVp2p
3cNcLX/ukb2I1VaG4k03Cv7sk4di5o/mJ+6dK8CYOycUuil9TfjbnWQbA6Yuj328/liuqy/XmMZw
rCrLERv7ePAjZbA/5GtFH5WuWzJWcCoHFIGVprIucRlrEJxQy92dqBReS4lZcDRRLms/ljYkFe7N
b6Sj53bRc5kLJHH+095cVGhxSvuRLcu2GW1JHuUuZ4/dvadwKIHqSMLGZouNAA1cL+oy1TwvzQr2
sPmAo1vwDpYhMwDiVL2jPxBSha77IZNfB11abEp/KiHQ5qdARoTzHj1JgdmuH+JORZoSbTFYcin0
BGtHTA6gAWy3GDgK2nWw5bYDsUBSXIdssDPpbAJiIlk/xajq7vmSDUzVdWYs3CH3ojvKhQDbfIJ6
tATiQffl/kYnIOFEz1QryKKonXyV8RXJFKfGdH2krCY9MlFFlmxUJOXQkHckY+xTLWBmGXIMkTim
R/pSNc8zlFXhVd7012DTDjIaMKsoeRVe5vdq0flwtwdhIuiWnA6eWVxQFWwQtUM1MyXcl3f9hAOJ
fFfq7HV9fyejsDIOUezqUdiXUsHJwFHL+kXObHnTvAU6vlbhYQ9uLf7fbmPOOMweHpfSIuhsf6U8
xlRU56UbPRDC1Wqq41kziKZhxw7SrLJyiIwrcdHdbmc5B3DSNXx7AT3KRfVyiU3l2AkR86EUi348
g/moqbDvt4smcSyiIDFiGKHalh4nHW4JWP1A/eVz+N+uHoqHrORm9CA4oJKdJ1m9iBUiXhicdQ0S
HHfI7TbqX6Y97vd3/elIxLPvRNTIvEhDFYFWKwnjOoeG+qcy60hSnERdgl8iy6xHx8uCUOfal1ud
R1VWd1QPRWX8Fek9/eJ3t0jEYXPUWiZ1v81rGaXpiOsy9PtV9kBipBrrRjczECLqC8B5Op4prqy6
ezYbKDqsxaqM9eWeUAVK2s391OL6PoWAeGOjzeIg6ZC1S7jsXbbdAig46neLSJCiZwe9wIHNfxz+
hZA9pvAOTCpiLG6EEL/GcbUYh3JQNrF9RWaiLonWzvrEMARndGzwzpOqOu+g8B1WdyWAxLUzG09+
shM0BRQ9CzjtvtYliFnT1yPQ/M3dkTcrJRqRuoxwsSsg9I8aYIP+Pbc6pcD/MARSRfvDdrffGMeT
A3yCjTT7w4ByuX92kDWk6MuxUKoVrRA0K0GDi+PoDeWACca5iMmvkRqxotyu2tU6vNw7bLzfFkV7
vu2C3P9oILRPBd5djkSwDZGcsslv2Jwlfg3C3iisMFFqu/YH4KBgNbRi8Jbidjt9rLZUX6D3dLej
L+i8PNvjfRcxakwGc52aEBLaM7ozQp4rsbrp5GOnDyDW2iQ+nbN202k1RZNExFxKCM++DurdSR72
mmiV05oEkSg2EouMINxaRZ5vhXzfgjwnGtOY2/S9SS0KqJanjWnoiftzvj8WGX9Q8CNhHd401q9c
00y1Y6TzIyM8komsnZ/wexSeX4mZUwqRGIkv9sViSTIdoTIsaSP8NTB3ru2uhorsZ9Bku+hkvn/P
/G4JbI3NnHyLyXzQE+XjO3DaTvL+Vhk3+7fuu8Hl2HZWmgkmcka66IpD8snZ1S0v9+CZGhrTYpZT
F9WLBI2d7wamMaSzj46weYYqQWVDpKQZbYkNiDpnCU/9NPJXg3WvTQY22tyFuUs5dufwDmHnq8Ir
qaCfBH5UhkOYBS8HFeq5DsQmeWwGDKCAtXnSaQkYqnzZeQKxDnrDUl/nSd2MaQfvvftGHgZQCoFT
in87wykKJx6K51Cp2DnLQ9RoOdyBbQqkjS1iLXkTyn+BzMF1eDwLgUiKSNlpZoEXvU2bTJeMYtvm
N1jglx2nYt76+0zBpNBwBPP4EI7qC2bWP0maHG0Y5qtgXwSNsm4NwGXQMoHhOsoiXz9abfyn3sJv
hXoEisLFujU2azq8SEzUc7Jy6xQbrwmVZJpEBS8yDfr0BMHtmWmeFLwPMp9xCK93Fj/JtIqjKFCB
L5oytiXhJKSzcgWu4atJxw/T9WOvy2+ojFP4AQwq3HYRlOnLTkrxdJ/dJWVVNuhID/ByxnywqdFH
ipkz8cxN4ZjJGw+6A0O2kZCBPhKkKMx2m2TltJqnDbjSFFpXCsSBiGCdxIN1I7+cNUOPKSP1e7YO
d5kFyafQ4YAHUaB9SmZCcCBCI6GrF0VvcLp7DEiESWNUOaXOSbPJ32c7Sz7g5X+1C842IHreE0Ad
UT9F7vhwIRdGZEcId2uvTU0PHhjdg7bTL+NWhb1CTIPXLt/XHYfHkkZKqzxiZbHN8YyDYQhO6gM9
mgOCDXurKAZIkelbnoxihRZ6s/NzyeGM+N6XgYQ3nXGu9/7Qrj0yhE4Ssb/FZRdeWp+eudfmwApB
sOFR/QqlfQ9UMGDI1x0hWrS35HXTLDmDwbLu01xslGeIDjmVx7VnC8tIpxwk14+YK31yTKo0e25b
HsDA3wpxL+BYLtz5M1KHy9B/jUNt2Asa2Q+gjTRZK04QxFxsdnfrVrS0hwT7aiYtwb77iQr58Q1n
+n2aDBVhiVr89ln3ZDP59XmUVgMgNIirqaO+1toQMyrbxB7ZOnyu++W7B2H4Xqb+vDolxyC9m7RH
laCcPDQWNjN08DayCE1NHTXh0j02dmMnMx0Idy+ws/dgqi07jguf3pIBwLKzYn4hsN2YsF8KzrsK
8YjvpvxqblsXb2xN6DUFgZFhfMXVOC/j71/YSkUukpzib4YeJfSZ+1+lH1SpFa+wDZkzzNHXZ8VM
isu7lmLGCaPs3aoFxZHOdjWp2L6ZLH3SqrSkSEmPFAL8icwvWLf8J6qiLOsWgHg/Tyx9jcAJcYxK
YOB50Mlm5HBN711Eutq4+9S8u5oxBp1i3nsVrPc3qi42XtnU3I+SWxfl6qL74ssndg5Hf5qv8URI
27171EUOF8pjrNqWZMN0JJqmEV9NvxNhiOeZmAKcnfATLZaeX8dJ9iDLkrYDzEXun1HgrcMNXLH9
ZYrCjmc90od7s/XFR2BpNV/aT5zK0/8BGur+EX5OSz/M5EP0qAulAp+08BrrFUBuQ82ToUxDPbjL
2HZm3reX91ygkIX/YSwus4maWtiRVb0kwKndmd5MvVImd89SxvFSBx2YQhakN8afLqb+9j5JEFCW
sk5d8nYA1ywWdUoiWqBM3XmXkM3zCoToeBID6NJ8SRDowX57S4RclLOZysVJEcAfBuDmRmW0xHOA
APMfNu12I3iQL38CNPGgSVrVpNLol0NaShvK9zsyY4QRoZQ1eUnXDVR3xbzwSEU2b4DMtSDOX7bY
OB580I6KEhZc7HFjG83Edky+8gL/J+yiKEUJNEiEXlmX2pZ9nlZ/W0RZRgbrbSeKxtv8ALPoce8i
sJ18X3NNAIFk+uu6gP/kZQ5P1vh9ALTfAuwuy3uWmWt1URoWPRf8orKRmbTPtGru6ZWiKl31tGav
/BFbY7mWL/UZPeFwGhhxWWXXNyJXe3IQfR0laL9citZKh00XZP3mkgyyCVPFV+Kutx4EFZdrdBoG
P0zoe+wsK6d1h6oW1p3sT1H65n+gw+o7CWhXfWkqbmyvOWO6ATsB2tOkY1qcopgZG5YgIJzvQAlO
/h5bYN6OldaK849jcn9mck/FBl1/EHvL5Kiw6CNv6vB0GxSL44XtjjU9caoePqnf2C/yKMxii18g
NkYMgW7hcRWyWZcnwDynHrqQ0c8Ze40kuSWXMsXbBt+RDh46tyroSiZ3XVJR3coJ9vxhQFwe7PjD
vSTBkg3zxq50qW0mbtZ7xfHK2zKKx8qpXIeAhNmMd9iCXSwwlGvU29yx5iN3bdIey0HjrBIOwG3z
3isP93sRsP5bA2IN6/tRA2rzxiEXb2Cljj8mHdH8yZ2zbiEcttMdFBCQtk6Y4pQWriu0uDbJk8Kk
BcdmqhyCToSUw7xfRy1+DegDUFQHuMfxxo4Sw1micKzY3iiUP4ouQLyf9K1kh7GkHDnuVmmbCSJA
0a6j9E4BNPJjCuWs/eS/SjDwkbKwJ3OzSh3J3KE46pyu7TioXn1w0mU7S2PRnoL5wKvAOFJv/aya
rPjw7JXObTcMFsalsFUfshYYkTzrDX2fFu3TWOi7R3rB2spdGavR5nUWpYrpyQtiLIeEduyq1625
19l+YPni6n/OROMxaSB3l3eB79jXhJfXqNngjbbRpX2rOOnaLAjyzL+9+zeDxlEUG/Rc7iB5F0Th
WqhmSwGk6tvHM2jDtX4335PY97xkwPy7FS43O/DJ7k/1VfQNRjR2+Sp5LK/b4QnCF4jA1tMrGhrV
J5OQF0PKWc9VE534Ddj5/Z9LHt6ktookiYw0LUE/kyuaSNH7uSaZxeT4E5vKhdOGLEk3VhmTKlVo
ZIaI7ncUXMBE2SJiM2Wv8PIPd6ZhZ7kKp9ahX9Pmau7FcEtKSnO3j3F+5dSvXsQW/eIl7XbQ3EZI
Ga29AalDFLPER9HlRn09TkId+rxViQS3S7dOmRkU1Aw9X7/bUdr1cv3BYjOid3e01VMjEJd6iyf2
SpWTlt3htPLqfOCptTyvtJ9lhKa4z5x7I7LF+XYf+OuZRLlxV4BguUQRCAghtdQOmTUEiYoXUbSl
BSyJB0tOUAAnKyQXlpQGSVrMQvvQyk06ev02Yf3oOr3Ih1iOJ9yg5cKfYRoBUzCILi20QmGqJPcE
NE8e2+Y4g1fDVlEc2mae75hjLJtI1F3mI3PfaJrpwSi64rzHhI4KkSw6dlT8jFCwx4Rb4EfPL+Yk
lkp8vWanyAeVgBAjCRC9Lx5O5xqq4PIFXuqYKeBJ3vEm3lyE5RSi7bTXTdlgaRP+0VmG5jHeAkaJ
TEwmcZkwXZy9+hROYjPT5+spxmHdeWZViUWsBmfUBo68LTm5cnMIQj27SOUe7zMIzaNp7utTjDhA
cMSIm69QhftzlSBmiYbg3o2WAFzBP7XtCyCqW4KyRuaQ2ihTrvPtrlcN2hqm14PrjcFOdUVuN5wA
SELFlxZ60PN9dUgz7hG6swBknW1BAOUVDrITMqgo/ZfvOM8nPo8N55k8eiY5Pxil4e4XlOfVN8YL
Zqvlh2xJWox9EpC1Wto45oiFY3+ZRdrXrrovrzuQeZESoTwoLCf5spbM50QosJiC2MYFW+jJ8PsM
PrFwuCBHMi9Pkayuv6r8hM9Zvje/q+WbCdYuqSJ5vicVAj+gAdFs9WGBD6Syhkf5+qIAjJ3Ym6+c
lcigPOCMsfAaICYbdvWcVlIMQ/pxKDBqcnSIebBSdj1Z1P3kPpl5LpWrH+KoA7wEKmKvvY42hCXe
kV7e2ZKcTqdsovU8o7CMSC0UWT1GwXZgZ2VpeC4Qhb3rNx8BvIDLk+uOmrwhev7NG0v0X+HUykkd
6ATHYtzK9opI8vviur/RMnx5P7NwHeiQgJUBI2B/yjlDG7o8ucBqNtx//Cd+0N+oL+2ajelvX7rE
rwqPCpzpjXfGE7tAnTlOgbaGIEhtgTWpb5LP/+deUUUKpPxvmTP04bh7On8Iud4NT71HAuSgKxxk
p7MWAqJRkDfeRm05BtvPyh7eMsSghbTRGuvln4FdLpdOkPYPeuVx2AwlAB1zOsVNfyVijUKQYQSA
IYKMWgLm4EaQgpaiGhNDAkP9HCKgkBsp9hbVpDUqk9Dl23WgyAyPP66UT1fjlmHcwhPK8uOkYDYH
YtzIr+QxGA7jPqnH69MmBfuHb6W/IkvgKQD9MGRzgjirtoRJc96BJvaKg5L7ZtQvlhRb74K1uUVQ
ISg/K/5nLN4DMmkYgJa0mXNT1ScV56iqREHtLNAmlmPGZbij3Izq2PkNHo8HyLNZvcxNE8L/r175
Y0L/Lo/ZkmvxVJVa9YzJA8vNwoQP5lOg58nfkPUm4f3QFtNXqlo9TZlXJnr7yfWgzHvvOkFZAg3Q
+OcHkTBK6NWdQi/NmiZOHgyUCcqBK2AVLrv6BjtiUd0X6dPZ95+5Cu8I2RnaD+0WDxIKynsk6KIr
uOIm123H3awo6XPMVEOJbnBJLUCaGjPvm3V426j0rMkIznK5jpbtnBFVI0gQ+952518TDYrLmIe1
mz/Wz86C10+EG+eonfE/YjJ53Q+uJIzlbahE0ovhpX40uWcumip/4cd5pq0tOGFhdPa2mQprUsTq
5ugOU+Z/kXGdq7IBZzVy61FCbHvkWeOT4x9xH/8x2rLO/TKLEcq7T2m852A9UMjsPs3oNNd/z9yB
lUJb7IHpN0wdksPcfaMmLLxeZRed0mf9Maj9Eu4s+3f5huUo87P9MJCr3B4OCGR0CzKv/81nZTlp
UTO7SQ7XxhC3yTBsUP3s3KdkUZ4knP4dX3wkaLcHg3ZWDwC0u12xmxpMiru1B6v+1YaYmvxpB/5a
dVUbcRJEssgXGeP6JIMgfuzsrvd2Gdv93UJWdD/0Uu/ggat3TUlIpGYmQ1gEcNuJHMjFR1KSoby7
h9Zjw1K7I1Mq2NhprOYRHZQhJWYT5oh3qWMevSh6R29CFisxIKtLgFfXXE2jXXbKe/64QZs5xg98
n5UML8dAMjbiDO11YHtT7FtW1NXaVh9UttxTROr0LPlqkayHuzlJQEr5yYhr208eNJG9GJFMwtyp
h0TE5+R3vqJzxiYg05LiwDZ4CWxW5C9hk0gBspvYyVL5zkihkAvUknhmu8DDOplbnuyYv7ZqzaKu
R+vc2HvpUZp8gdT6WInNacaSklgfHErQpTKlbbJ5IC2NC5Vt3w3gj2CmN+CtsNixqD50NUeXYIoh
h056imUracAjxmlxLhWEN9E5+fvBUdBjxVZfQsHRpMJtbsjVDkC5IGefkaFQlkIyYkKF10t2EaUo
r2y/ggT2AhGHnfKx6ZRhhoNd3BSxubSB71ErMsExqBlqAPwpyOdCFCFTmWAszsjbClqEjd6oKAtM
mWT0bOKoONUC54MCES2GEa3U9Xh2vMBlNT3AsmL3XI2hdwi4ooG0L6m4NeKQq9LPqPFAoD/gkDFJ
J2MXK+5zQtvLnYPMMmbzDyRD6mqHtEaxuo6Z0UAoQ/al/QdENTdZLTLHfVnSBWBNs4jzoEen74Ao
03SzB6thLDep7RmFP3uuKCKNRWaQe8fqgUc3RBVNUpb6SjJWtcjqFJGI8c+xjjmzVjpKX0FyMK3r
BcI+vT7a3rhX7vAY1KiE9e/nkHc/oiimIKwFrYgEwHWiiYQxVnJAscM+50vcPcMEUQQt69WGAzXq
6XLup4SM9eO1gYsnMf0zHpV4o/S9xSFC01aiE6ab0qEh/ln7/aCL5RRraCVXL3c5dhohufeQyLh1
/+6ljE9j3P7s91utFhpIKHMeJsfqfQjIbj+ni+2U/0FwInBJtwryaDH1XoINCOr4VJ/GcdmV3esp
Nh8MDo83E4OOBOiC6tlJHSThxkPyKpGR9LjBiyr+IG5mXqWQwzfsILH7sRYGhlT3u4Emc9Bxi8RK
d5ZSj4FLLjsgt/1Udm7Z9x4yyHDR030VTc+3WFLZEF79UKjKyyBUEb90cB0mfXiXGEuiko/mxc1o
0heIZ9Dq4YxKRSDFyK259+iA2BxqI/Hm6VF3ATTQIEXQlLKa5GwlZH+vzG0ybZIIH2Ju1ohveREH
NQnomUBsYKax9lhIj7VcgueasF5B0q9r53Et69k/e+MiYTXMNqq/bsO/uK44C64OSthlBlND2Zev
udy/10Eyt9GE9y8ZQvpuZZGAYqevcyoJLKEYxhmFITstldSTFSggvFs8hfI1zjJ794pieoIwTcHR
sSBxR7TsJgS9h/ueJd3NLHdukJvlBKhL2Rmd7kdzsunDgSdvmFZH9yx2xV6QrHZFMXZNNOGtX56M
4ujCrQd/hUAjGupji+Ou7hbQhjn3ny6LhjtgrQnVGKUPqWYpeO/C81QQaOThiKSIbi116JXkjR8O
sD9tT8XvTyxuQ63utri56POCo8tWdsRdv22WhhDTjLf7cvSSScfNkF8xEMO1Q0dFW784xXtmc0CM
/VDR+b8oDEkj1YFD8F8oVHoAROXMT/X9WSvYsb7jxmVxH2zKm779cCkh6DO57J5IsUWZ+pp/D4pJ
6iMG65o2YD+lMAkHvNGTHGjEMqTGV2JvbGbI/XtPPVny13X2JgjLiXBNn8VqoLlPtrEp3cuyNaIi
Az+NYDC03Sdc2yl27/PdfNxz/kAeP/0HwQk2xcizQP1yKtRnlJDZ0KIsCb+WvIGbOfPYZxMoQclW
7QHCjA+r5JFT9ybPHZfleCloNIaH12e0iFlN0Qq7HBBysJGW6RSYH5pWFo+0CuNMOV+WD/pRNPP4
untlbtD9q08iK22sEiWLrkfNmOiEx5ZIIEiAiFhwcwaiKTcSIhzBBaOGFw8aDCwwGSivDqv9YBDY
/YmsAEAXtgTFrjyRea/1H1RW5CuOPEc4FVtzimjWJe0nWTVGY/eWzL7gem+ijP2nC3WgsU1Vvicb
Fg6/EvkJEI/p0CBHaZeEvu194TiFZrItgULLAjHqil3U1VRsEk6DwOSN6og86jWoMh+5fCgb26NA
leiwEQOwSJjK0gcnNOoSobALPcI1M1oAkrosHZwsssGUJKnJWeW2o4pRGMAOEdABZhqWGhcjfaGC
U0L72XtCdOAWaXZu3lUZDPsXFysaj1wQQZyb6Vo38DPxKf4dXVWERIq0tTBPFpOuJEQgr+O7nqa9
CzItDgrntF0gwvRUQiCYFoAedAC/oRSI+o/Sb0wUyGlB5jJQQbSbZlheh9D0TTbjDg7Vh+BcyoIg
QLTH5R95j8I6s/eeUowgluBh78az3IzDW5xLyvPsGLbfU06ng+Ok1PcwIchtWEKj0YkzKwkQT6JF
theX1PDAAMjPg3URH7koTByMc/6rkksBNGpqDeDzYjw6LKunhzR+8zuhTJY9lh1uhnxv/bzE0jd3
PtvWpU9gcnMo3iGNXjKUpo0lk4cxyfbeJspi0NwQyHQ/NeBHofRePq6mO69AQL+oNfNLL2jilTx1
uaZKRDlMZj85BEs44DPROFkOEqizXy6pvymE5oOKbbfyC0CsC4DNFIUm7tisKxtx0ALg7Z7Px3we
Mg/ZYBSA0VeHSO4bmt/JsNTNL803lBo9IfRQoe8sC2br4SjXctNUIKfJcSfGRbjuWuhJzrf5WMMD
kHTEGtIqnAr44oXgstVzyHs5Jkma5I+0U73FX8YJ56KTaERTL+4vN4H6EMTzt8xlNj5dkGj3AlhZ
bkkXor+x+0oeZMtThhex+AHTmIm8V67+AdWMopiLQSUOJ8ZFPmwwXVnEmH4YzndharFAawgTRG2s
/59jrVqHsL3pxWq5RmpStzeKw0UWWUlOGem6dzhTe1xtnCeBKm01keeC8sZCjHNXDQryy7MafE88
JDZDNy0et8Y/Td26uz5dPss0FiPBFt+gyzwEXizeVTwA9DBGYeNBL1FutH+yB2HdcJdO1+BoT+Dq
W+q1T9Oou8IV4HGRLXG9CbQ87GKajaz1yvaZhlKFsA7NYKSkvxr11f1gd+r28zaN74NW8aQJBZuR
5Axsd6PHuLogk5XnQWWIJbBjLNl1d9/w77mwCXgpKHUX1yktxAOAjSqg9y379+39zJGxNxJNZ+QL
bK97TNUWHG+nE/T51c+mU4J8O48rfc1Lg2lh938Qu3FReAlCQnjWJxhiZXLzgBP35kw4dMgd3vA1
j7uo8UIFV8dflA9fyRsMN9fHc20gtCXb7tkZCa2l9XShzytcfbIEu7sfjORrsVXLHSTxG0wi776p
nqpN/etWGntyLgXjP5fyZIWq8qQOxSaeF20sV7tOuIuWHcWTBbafpHi0QZZHeG4gBJF8WP81NJDA
2C/eo6iFaUXWxGXk+HFqbhJkcKXmvdslQX9UOq2/8UuAJ90iVj7/QO/JOjQBXiaVfUlYzByy+PSx
fGfZ4doLvtbmGHySPWB1I6Rtf2vyp1nVrCTUCIuMgMPdS2qN9ujoww8fBVA0ZuZgCdI3LoIWzVcf
owFrHQi7KhewfQjKia1eEykF4/2Zczu9iVJA7DXCnomjDH1NfDEqI3PEZ2nvRbVf0D/KOo8m+o5m
RzoNuld3HLJqNIQRuZAw87E9SlP/vzLhrZqKbpTuZTTiB4DPyPMAAKC4lVJO7N/JfB94537Raabj
dQQO7QtLK9+0qve1IfqZOF/Qoezx0BHrpyHTPaPDvmccf0Of12E5/2Tlgh0zrsn6tVNqZcawM8cv
6N2H6XlFf7xUpQbNSM0s+0f8VBB8w9gLqX/khTiCTSTv5ub6S6oeZHuTt85d1fGN1dYrcdXF4Kfl
2WaV7W14jXYowpe97NlU63sKmRhqHjR4QXB16uOS4HyAZpJWBofP4LALK6ocVCGHmWKKjsRnNnWq
z1CPhxxR2R2GxLYX8bFMk4bkg5dWygQdtLWB7PbbN+vARMs31E+URzGVNEevzuWTzAC3L3KBVwgj
hPhHxB3nyYnB0K2DUAJYGsui+oUMYH9cLG/ygOj6XJPWoIEH2q/NouzGoiOrJ1HB7VeQGjOdlPqK
3NAP1Kpi6q1h3Ald1qhotHrwLJ+ItEdj8k0oW31YiVQp/YU4AyYE2Qejdhtx4eaOtnse/CK1XPHa
5+932CSPKIG50iQcXqnefbgnijsyYacn9YxaeRSf0jqzJCiKlws+V2DjnRNTR1q6eVqy79lHy7/p
8IbQgvd5AnfVUdxJF+UeQxXCegALPx9VdJU4ob3dNtKfPpAhrmfibH3R8TAOS5eTWGmz4oebAcOs
AzHM9w+52ZRehwSrBu44vqO0Da4YWVKlZ1k0oD8766bHR2D8KvGnMzeU4dXL/ugVyPyReL75tZOZ
R5GZPXMbsxL3KPA0fLEvAJqcpYebozCi2zfIctSIoJECthjLDsED7rUrL5MNzYlPrZ5txHOBwteO
X6vM+thlcrzFlSLhdmwwRmNqPuVujQt77hmSCfhJ0xr2dLwd6glpYhr2HTSHcA7ST/k/Mgp/IM7i
JdOK2a2t6j7BpTT99Zpd95SNuBJkWnGqCCDvah/69KR24Uf9mY6WJ7co2R7bRJlG6FMnw0S0reBx
YYL58x0LBTpmLmLbNCQOfx2gsQ5eLFXliRLCvy4lq3aOgC1kCT8CJn3dv64oo5l71z2BuX+tDQ77
8bSGRADQPXlS3A12tBzXIwqD1HuSpR6jA/lBhpKbYvhaggpHWxqGcK3UHv+YvhB7LwFssmYrtssv
9Of82NWH5X3qwIO9ndaf9PohvLUzCqpcIWbWvNcHIZP8d8hw2vvI59eQNwdHkd3Sp1LvKWUvOVtv
7v9zu6NPsWfcjgWkGLM9TVqHXMF3cidsTWqAAZQa3OnuPTmfV3hkHAnqnvaPrPyJ3zp5aw+kSmlv
Z8vpcgH3IdZLw+ozUFO5GqWgmmolUdB9gml9apfA0twDfjeeRIdtOyrAjci7gHl2mp/b9oM/Tdbu
oDw3qygLQhEl8NK/joKWTykVipV/8WJlwL9FrFiFXNWEER2P6ozxoeOdge5NxRJqYv4mCxWzyhXC
OY8bRzHtt6JmnviZGu3RoZOqY2SB0Vz6eAsACYQQk6V9MfgUgl1Hfd2KbY0lE9OA36x/XXoQ8Ur8
Pw2otiPZqlOhXLLb2aeGtuInlyKyTQAcii8vC+a/n645hvqxqe2y8P5wO9xG6kg9CLJTWn/jhkcJ
FWm9C2AsmVWQ75UbFO21JzBr6KzFXudIIKmFrSLmwoGKSBHJqcuXi9hcB3CpeHT/ZPQuiv1SUfy2
R0wmi0e5rZn5urTzcCHFZegCy2sZDRLVsKQn3yz2GEFY6WXstjIGvcaiz80jg/kEw+a2lM/qCQip
AKkDs6uaOB/M2iFnaPVGMJ/jP484EldVDIfFo5yWXuNpkA3hKvG/iz4FZpAUBWY15ifhno9qx23W
a6/o2tWjMHJeKpC5wW7/iN+LdTlmuvwZRd+BhvM5i0LOYfr2Sqq7b2Ptg7JOmVsDb0j3lr1Av0SR
AoICbT6/k8BegOpDdaEQ2FrpcvFickyxPZIpxjV3I2lvzvED4UXf0GKcE9IDmNdx52YHqweSCvyW
7jLVHovstqBR9ND822s259Zya8ZaUYBeeFhMZ+Buy63G5rtbkUueWsXwFjHZAkC4gsF61AZybB+0
wL2ZJsf8owHRZOCYaJlLDaq1+MI/jS5t0q3E2LFP57owgZywEJXn3N/AwA9oSQohRiCECjay9cYD
Bz/ixbdldUC7JFp9vW2uLn9ylcwrQJ7cZm0dyVMScQxrcqS7ZPgpUAfffe4aOzbR6+aqr5HaNegB
PfJluvslF9D8zqnfky5eTcED8vi5qnadRTzlrmRTSHLZ8cuAk737bOwY3fqd2AzgDA3rWb5mRxsm
QQWBMW2CCoG4gf4atJyVElLW1jZRlgJi3z5wVPW6MNxxwRnMVm1haoSMKAo5flvN25/tXyH7aCub
1TpVi06g9iQO/07PvuEAF021BsYXy8b0NWc8fee/Ks7UM98H77aOp0GvJCnI7DISAMGcDfWe0/r/
tHMhakI8BM+eRiVLpmzzajFIXnDs4RfXLxZ4rQyHav/oo1XnpUoRyLZCJSbUqgfgQTp52yKOBLh/
qtoSvVw7QTFYs4tp5gwwHqDaY5O+01gQx+2Sxhiur0cfmI1QvqIrJwXN29S/LgOoW/E6YYXPNgv7
smUYb3oZiLaRkSGN82dXZB+f0GnPvID2bxkR1EMDyZDt8ednksdVY3H9iJf3ZG8kKzSejiIUTyQ+
w8dXs67jGyFFIC9upIy6pa0TmKTSaBUDWdmcRzFmIxQh5vUmWGDWe8UKCJ9Mbb74qKFUAaBJjFdZ
qqkwBkMKOowOMX7qSJ9uaZdT4uaQNoM8+QZ97o8otVfeFudW82bT+EanI1mhDqdqEIFLhC+G3Duw
JwPJZAjLbvGY+yj5dwmETTkcI4QbR3BABITyePKOgCVXz+qa2hPLpWSbrv2921y7R7xkguEuVO0r
RSdwWuucdowZz1NNagw3vjFGDdRWhKpdY52CJf4lAbWnvOSiOzPpgcfnCqHzN+t44re9CqsdwP49
mswahIlVz2ZWhKgbg01UTj8MkD4v03YMdebDgoD8bYSA9qYlI81dFbfcTj1pDAhRaJdX+BEWS314
k6WXRqL3UlL1uYVSWY2Qqlz2mxRr2yDxFVV2qNhpwmwUiBu7eWiHoqjzrPgMJrLFxionlUaSTaGe
LnYHtbBIbnhBnycXHeL3bKffQTAnCbxyok37dBsXQuEen47Xjc0umWzeFK7+OqTD/vaYF2U8z3Vt
Tsr+yo8Cug8wpcLxF3dvR1IFD6HushZ8drhoN7nW5ydTrG3acxaCOFw0zy7GL33+SCQlD52xnBal
mO5xfU0Mp6qXAcHHpCafaSTKYiRXZxmyArRm0rbG7gsunHE0PPaqfrKiLlwJY34NB1rlcX4l40OH
luDRZaMyZnUI/vwwaH15pNhvy3IppU4A+qByy0EWS6xN3X8FNrDyRdjVkIpX5ujpYWgu0Qzk7tck
5fyTueveZNhoCivaP6pepwpDEEGleufa9RfFNQTs7PWj4x9mcXn1N0jylQ2aBXmNvVvbgKvx+Xy/
PkAoApeTJXty7PSiYPdI4E8jeLpyn9OabERXoaXO3u5PGTlbuWRj4kwTVslRPYdpkxgyZe3fOH1I
xpL8w1k4DLMlPfIBycXOrUEIehsP/tVymbvqJaVkCBVPbA4cnkbdz61X5nL69N48iEqsw6t0RTaR
Q97CPD/qiJq66kllHJ001MApHW+8VVF5an2IRcbvQ9S3SeMeEc/h+ipi3Hl/vBtobJIMDL2XTpBU
DzSY/HP5dLZLQmylyRnJ55bPqNe1w9pMSLLGLaUwgb4uoYmYK6k47GuAVRCrx16ZCvX2qKSPI8TX
4TEyUbmzohDRfd4x8xbx6aXcSuxKlXeJae0UL7oYWf/HJJOap9JU1ZaV6cMrOYSwEImTwsqwRHze
vKoQZHBF7oH5oXVL8kOJBrEd7iaZGkfNxhsSQqQKgblEqKK/Zzx7RhWpWVs87bpxVfYAZJDagYCI
0yP74/Tq8Qpd578HB/RwWyRSxij6Vaz49l2YsNRyv+eMImrrElfwqKSlRbQHRdluLeqVuwkI5SMZ
XNVvGF2D9Lw24qG6BvtcF1JRY/dYgaM8yHIl1t3110hag6Y7RsbxIefQYkarwZk6XiGPuYsjED5a
XfydMBYob1oCNuD+DH7z2f0aA3p39MYFNh/caKwkjZcysUeupgaw1qmUtpCaPuvz4udSKf1J73gV
gQ54gOpE3FYW0bCwow42iHvRmIU8vaXAW9sMIeZ5aHBrDh01/1GZmRiNNBeY2gPBURdFOTyhDXQo
t2eAlPHc+/tX3QvAcfYi1atDOpZTN2I8JU3VToOSGcT4R/6Z25//fiu5eEZdM/w3w3PApOjk2qmN
HBkFbftt1Eugs1z+k74eYC+TsMEBSlorXgCTL+p9JPstDIpmzbxdoXlAJTWzHOGOR9COI46DGhMp
ch+SPPt1i3RzxPn+NikZz/9dwvx+Ory4j0XLckInpKYKJ/Yi6e4N48nNHE1I3wMClOMr9arli2Up
nN1m3gcTz0kwPQpJIXeGFSU7vWNaP5VwHKPAwfIsGlLKm+nrilTevUkZdKH9KtplPUdxJ7ZzFxqd
eIMjrMMCRfkPQMu0MhY4pwWVpiUJ2AN9XxmVGVMxtiKflZTfr51uwYmLTmahzYg5oDKnrmTzb8nG
9x+CivbHDL6j8BHoXjJB3gM65GNaGrrNIFe3s9GK5D1dfzSC/pXQ/z+WFCxAZhsMzknLp9+2tmaN
NNRTfx4jf4ZbN7FlfwibnbAWtesWhyt/eLappkI8HNse7fRQQf8pvwqmT6cbeOqbm7/FljgxuQzB
Ervd8zHlyk71634GG9NLr7JuclmOhXsygTlRbusN9kmdp1kmPpjhVv6cWUSpSPLhd1B/ASzBmNl4
AoqZIqRrmC0TeQcNeVGB8lX6p/gESDTMJglXBUYcyxT7v25lnmbonfZFc8XQkFdpz+XwZGkAEfvX
rlXeKQC6EdtBmKaWbJjSrts3nUprihEsMLLgKReiu4L+PcXy4uizUqUX2GN6avKUrRLU4XRZk0HP
H/wwa5Xy4iH4Aqi/PMLe3h6Xh987LcJmV71AumQqGDt9+1CuSKqTjtAW6gmz99SK5UD5WQwMlMoW
SyjL/nN8n4cEvYGtRkzq8hMoe++Q6tLazcO4sWIJ85wF7EFuQlG8l5TIkCTQE53zjmsZnnXJKeZh
8Lhjh9T8ZAZLIwo1YfJuvo8HRfNJid5n+++U6JvqQv6zMgcJd2lqQbPLLAAjBtOuAQROWElcWAw4
qpDHZ1g8J9vjE3kebIJCZsPZcG+8q2MTABhXDr2oBSkzZ+D8e+oqciD9gl+DsMjQafEr0Q5vU3W+
DlzVLTycTU2DJvB6LIy6RIWfnmcSqX+WHIWgj4ZpDAjrciTw9tMO5tYgmrVF5mcIQo8VYhjinTL2
yjKIHD+Q+X8LcLTVj4IL50+LKWgSFI0KfBQpgOnhrkrbhTzXTcxT0H4cxp+3huiiDzyJkPORnHRb
za0qHdF/OQlO9JrpQHjWf6TG+9kz3zDzB6JW3p+Jc6LI0Uox8NFdSP9hlk7mL0iItUWzv/7KS/O1
yMJhuu0oU/2Vk0HXltpo1NH5XeMOWwXkzWCuHtbpEHAA+JB8uHfX1iL7rPCqsQgcRlKo6rBCDIDU
0URGbTA1BMaAWCSzOstwWGmDGmznF+VDzQ1dMVnLZdXCW756yA/1sztozRgIViwjQcNAPqIc4HSq
t6MvsGygUuqabJw54EX+29dcyb7289hlmqmsVrIt3TuT9n1JX2kYMsQFHl0K10b20VSgt/IYzV5X
HNANxKRf63PVHQxmon+ItLbFgvtsi+aSFC1opp2iKPto+oeX2RtxoV5WPtuD11gItv/bRW03XnmD
L2zd4uBDnpSDAVLPkLDfGSpGuCI/xsTazVccUI2oLdXO/568WiXJ+RrTBfaEXoutGsNs99EqGXOY
aKHDOPJrq+ylIf99xjgoe1IBTjgRNmGsPKvHdPM0XDP7jGkmaEfEurtRl4RS6WxTAVs7OMAOT7lA
MtD0wrE9hAI9oaGMSCr9C88TM29buhDMYL8p7x4Av3CWUbBNQOEap1PSDQm2Ry2FpObKThw4PIIW
Lm6ZAaBJ4IMc70FqZxbEB6IDPqYcAdfTDNYtvBMByawjooEzH02Fn9ZcpAEF4PBs4z8UsvqqyNMX
ujwemOHkqjK7krvx3r48zO5FHDK5grjeLg4a0H1G15KzNBMr8f4pBUbT+19MofhU/WFtgnhn+5bc
TTPzgCsU3b15LpSW/jmoyRaCb9OYY4DDru4UxHqCCJvH565iFXU+jpHlGqZlNBIvIFyWn56GY1gf
QP1X5wB+lgzEJYmac4dQ5xICsFjlpai0adpbysG42rnnGPt3De1cM2YfOu0Fxe3qhPB2BvUEEB+Y
ehebqii93UFmSuZQaY94Ow/+LsrHavG4y4TpvwqAP9P749IxnKd0uZOotIBwxHABBzAVpPdewRoc
eMXukib9qzzv6P2yVqlifMTmcuB2AflmeF2kJFL2vyYn9sSpXk+ZDt6gggEe8NlVKyAqJuTMSFLM
HGhK41DHSCQAFO43z6hsr/kejs0LsVDfHZ8o8fv9UwpDWPJk1LttW/08Qh1hTzQuvPdg7mU3bi/q
2VF3Q/eeyRiLal3aIdn9dkpqZ/MCZH4Ig2HxhaQncR7HcU/Pqmwvbk1BeGZ63hbGSTydLAitEzC1
5m668h9m14Wqmr5iunsYNDkJRUxYb2B759CuVwTsRJQXcnWq9w25fjD2BokxgpmTJSIPi6wcPof/
OlKB6rEo8joAmE9DI73FCiRdruHPQ3ZK6Z6Yp44oSs3gxc1SQsZKPVCCOYKGculh0i8vHLFPHmen
+Gatj5paPgEmAPsWHjPt+V6tWVHJTVS2cKjrSBzzj2VRrkNqzpPoYOB94ejw8NYvN15dXHaUH5Oh
uJmbJuZJ9A5bZiG91iy61bOXvdXrsAJShvCDpW/fdULN06pRJGZ4m5hABzKaYxT2Sz/HY1kTXCFh
4rh6v3+fuI9PjpCwCHrOVQ3FzwXqF0R/Qq/0Vkne9caHJagsmdsrn9IH1cIGBTJxDdeSSSD7FDHp
99s8pIgp9mFeMvUHjXYsB1KF0v8BMaTC1WCAr7dL5EXtJyh3l1SKNVbZUuLAFT/QCiaufzGNt2fJ
Uiz/N25bKozvesSrQhJ6sdbdaBzkXy+8jxL18t1/v6U1DQ1L88EalWdgaBPxZkNOMgDxti2BHEOD
XoXghFGu6xZkoxEkHqIdilKAFrTGo5ir9oyHSMmrJok7zHObSk9HgNeKN2zS3jzxYGv8jGnkyKf6
0oZaM59nARjTi+7ouBuUA01V85f3gN3B9mM95XEyqil+lrLcmz3L9AvFjdX7mNn1SflPDJPwkNVt
rg3Z/zypx2Ko9sDoW+DL1tIRMuJM35zlUXNsA9344yfZkIGsSqCXF7aFcQqNZiFS14Z1IhIRF97h
W98yoVKjT5y/ogftydWZS+HjAFF7Oc1+jWZicjHWd5+mjD7I+4+yDpwBEh5zHTT0eE4FKT7ktRUM
5D9iKN+EfSrqkSpunsl9aWT7NC9C+s+UljAbNRnA4+PejSnTA7/ZaGbLmZCLbfFKCuEgXb5Ob5fc
pX9LLdf0oKBxZ/rC0DnnHgniatxqdDNSDKoffJyqlvEOZ063jR1LSH3NnQTOpu9kswe0lz/S7DSr
QcuRmX/I4nDR/1Pv5j99y7FXuL9bPx3D0MHuHvRojm9JikRWbO5Gci/diOBqOsJEPhgiNCW2ZGet
X3NF65u1Cw/r+6jM7uBkRMdYPz1ItdihFEr5NwjY/lH0wB7dhbik3YQCcJS8Th2Y1T7zQId7aYka
PYWbWeaEMUg01Xt8V2qr5ItB+sbdv0p2ONRkOTJ2Unp2JAVPH/kqQWyHsjZqfTeIIWJLrYLCPrYQ
j4FjbTZSdWYph9cNJlT3ouDDNc+BGiUNCnuzX9Djk5VY4eADkc2rzo3QlmQvCrK6T+z7gJKKPc+e
5RSRkqhnaRgbdIoxth1P7HrWvkjQQXd3wb/mHIlMG6t+WS53BsU0PUpLKV9HddExuIMN7KmwwYCm
kEcnQIbelo9CPNNdnRO59CUOiLAxOmEL/FpyWFwF0B3X6q2ksqe6c3NL3qAcn5T79YDIzBHHd7n/
KLXzSX4vRq04hEXTWxK3ADrtE1Mp5jm3WEdFrXRa1DKPxfHdt9D5XVOusnMLpg0g9LGYyp2rpvUC
SpHE6QXjWar8bXQIPZvzA4e1Igp+TZh+doke5qH1N1wzehUcuLgQN3y1s80HCW6dxKZ68zbIhW+P
jFgui/Gzm7OilE1s1YV1tpSYWyQyTJzr49FsSRZSK4zi/5T3M3g0RHzImt6KFcMdRfkyrvKb6ruD
ol3ynGOxY3PD9C+qgKlrv2Mw+fjeuwJJBUW64gBqy4pGbxCRtwmlbFZ7IPxB8+srTX5yNdIknN09
GWXdK1ZsuPOBbXNI82o1z2YxkMPuM5ns86fdhy+P0qbeRM8lQE4rTQcSnqlqs/4QyDx/EAyZcyx+
iuIzIYzV4NB7WyrOY0a6QyUBiX1rGfgIoUNccETVe0I8sQ90oe9idIusCOUiwGS9VrNxVhZ85PYq
Sr8JJ+ejTl/twOo3+n6uvQI+V5F/cpwQ/O6H9hfWDLh1SjwUnr5ns3j86Zt+DxL9IaI5OmZLWb5F
0DO2rfqHNJeAGWzHNt+pFlyjebMyw0KbAFZqgSAwJD8xSs4QNZO5l9wjavN+X/AUbHz/b7otGkaY
gW06XKplIYlz+imd76zLgUfbVLwrDmcuzu9OwlNk3ZIu8hticlgQpoWJOZPVlR37JEIemDUlJ76m
XO8fyJHndHemwvWO4hpznUDgD/r4YlfCbYPzmGttKIpHS7bv3OH/Fd2shrH5faPtyCr7cl3EFPec
DKUx1UPcNIwoT+hfZQ5OdARnY9dIFdVIwnyJwVbQl1mB5skQcxMoTK1NaJI3r40lk0OhyAmCRTwN
qacZlOcpPt8cYwpQQNRQ70u4vCuzOzZXVZaxz/sf2/s39YkOPnM4jcZNqFtHvncscsvvGkuhfnZl
4W0FisDqaUzO64XTLeU3iCoPTZH958eTGXq3tOFu2zn8Jgro/IevKr1iPnfCjN3ziHj6XJWq+lec
lbCrB5HAtNoTljoD7t538xks3ODNnN8f6p9kz9QEw+x1jD/9X6Sin3Ae+EpqDTVcSv8xYOdk5QDf
W6BcwZy8LAWX2psg55hU4RZTjRacCWQidtvTml1srJuA4mmNn38iAjtv6bSXtPXrSId4rrV/vkC+
b42eTF+vYw4QtKllfsA/SNOAb9L3pC0fuuRQQJwSAKlcatJGFo/sSy17BVXfc2932MU96eWhvPMq
9OTXE7P7g0mCa+KUJpX3AaXukXH5ubcnlJhuEHnrBF3zTaS+SxdT8mJ4NSCeKIwQHdJl1RGNz8vA
LFCY6yxmrvy1443IYzVSVOooUFr/2NB0r8P9aVWILq+HNXJpevlVm7+mUYuQoRIM52Z0tUEWBG9R
dKEvqBLdVRFlMQX6IqxIBbCmr/jnJ/PCAxeiMjRg36gVI0wU5ccvKYuxfxUCC10Bj4DiwTKX911O
bJE49cNmvQHkEbzG3a4B9ceJpEN5OdDn97o54QHMd6S3fYEFXUmK1O8DHnhXiImMDtWsdYE2zdiA
UIe+4p9uKszAmVoLwTc7VsqPOEYpivjZuwVenocrBcucOUMhhL1F1Z6v09P6BA03vsSQeWsyHCau
BY/14CNDpGLa82oPZbkcB4ZyK9ab1qMk5hZGg+S5fE0XC23bqYz47R+QVgSEy//Hpfuq/KbzLpBf
L5xoOCqbGE5j2oDYdg/qoZ1qot+Flz0bFwXoRi04XnYHAm3Aiu2OHT4LeKh7a4u4W35qXKS6vKUa
u/5sqqZ+J/PBCZrmWsVfqaTJvb2/6L4yDKHkUQiqM5iI7X9wIjT4u9p7qSJQDqEvncroguX4JcfJ
/eNU55sooCd9jtaMZro7PtT1hA8JklHDvL0ha6telfUZe6GZQESI/VrbzBV4ecT9MvD073IWe3cu
XebQyWfci2tCw196Qda07J65+4PDbcbx78G0ObpNvxEqb5F4M0AN3+LrZKtxTme5tlvhftzxb7c5
PQpsqx40T7xm2kattMr9NYW9eb/ynZBZ3Mua5EFe+8E4BuiGOezKsr9fGR7/0tBqA5xkMsy4YYvA
2V6Bd4f2fGGtElj/jHAz6cZ+eKWJl2btG0chYA/hSnPCM+Q5ozame2AvneZaUICZ0ave11MGOtQI
UK5NavRgihmuyJFGpIWX5+4plRMEW6LdfXwvB1lRn/cX9Tcv8h+e6tcUbsGmpsHOV0aaesLiESXf
eNQRrWu7OBF23wUaY0p1WmZKhFceDlBzAs3b166GqCq5mEISmw+zUggD036RTvYaYsakpkBTLVUg
mW1FtzwCLiEcthzbRbwvJ+1fJWczOqYRyRxo4SJumByWM0+sZ2O5VXM+bKsEyqKUlgXOXvwNnfO0
9SKsYrTco3BjQmJ9tpdi10u6g7/3iCuF5tslihZdtQqF1iP0u6e+xLKI9ju/KpVz1NoDLq9M9rqF
J7rOCHm8ksFR8MOO3+FLFbVwBFvgiyg1Ps7bw6dd1j1aCzo5fiR0ClJvnXpCtWF9V1v4u7AKRB5N
7lkSi7PcYKXH1BOU42lmpCmdlJAC085RoE5Lkyp8YjEJRjH0731RyeXsN88tW1kZJvmMgjho+mHJ
hHFe1iqlJvUAHLvLFph+St3v5IHPBVmM6zb/y2xSHZ0J0/aFs6pjheL9gTan4VtZVkQOV4TXnQ9g
3t0e7xIgxVPoL14dmMm83Dr9dhU4IOk63obLKcQf3j1voDLS602Gl0aK8rgueX0Xd24a+oaZhX9e
+JF3XdVTb5RiT3lCldEzJtvO8QSP9k2XGvOqPaF4jDSZuCUyOQewh3UzJuGGfNNpPoFtVDE8kBPS
/xMqXCMHuh1rkc4ATTj9dWgDkUS6gR4QG5NRBdtIqSgfw8rM/TdA/lXCjvZ+oaSvSa2r8q9ob7tM
eaVe5rd+t9WZzRMNBgW5K72e2yaoFkg7BYWA0SVjkz4FVkqKAyJCDNi7W6Bu/kw9Pzwj0cqYbsBt
ItZXAb5ytKJjCRfqFriHS/dQBPVdrFkGHqTirDT41KJ+53JcoJsWTEW61CYdQk4iyFifwI9BELVM
otx2Fe4/RUuWa+3QcO0tMmiYmb7NAFENUt2RFrBfFuhDQxTvowrGBGtClCkRSCOgEjr6DkrKrTu3
CpsfbZQbBYfeHC+KHCvnTBJscGI7fRj3XvjZSnBXpO0Hpt3LdMpqK27OmWm2cC3xCUQ0apg/aP/S
OIIUYGpfzVkPfooLM0vNhSSQM1iPOZ9CCBBgwyE2/k8/hY5FYe63KiaguMwCTcp5QwzwnhsiUY3m
0s1zeDBD5OyMaf3FxrLVHJ9mXiIBbI00HD5p9ZC9Y3TVjXFgiDiiteU+3dv3Aaa21T3cNo7KHj2r
d5ROhUb4SROiaUx+3kM2wIykn9+Ji3SqNiEx+BFpaqgKryiF5RuoEH3BL5GmbzNdB/6jM6J0+/oq
PgFkirvP2MLTbR8Url1uqxatKjkv50T/y8wobTmkKtTTD/eB5CaI8SbZc/NtZtbjkiMUpMqXVQHL
lIXnsNBqnjsOyigcpHf2bBOZi6OgJiPXqGdX57A/kOQ3p1msGcJumr2/XPiUx0/fONPiYr77LbkG
r+1b6OBOx8p8kPp4XI5thnc1DfLX45gjsnGGwkEN05aprGwYS0kWSEBhLAFck5AIba6+WVIAoxRL
2stCvFuN6NAP6cBhkKivLvTf86iYZDh2O6isFq5eaEhHtBBSi9ZcYpH/k3ip4jYsLcCYu3u6DSt+
mcBTNMsPp74buUHtaPQbWhbBwGVhMLjsq+vHFLY4wCxSdrowcUOYmvQPpRg0bgjDiF5OS7+5gMSR
SbkwKS4W+ZiPHnjtW9uY1YlzydPGeeUoBf9vqUSnb7HsjJJCzNQEHBsKuHtPD367qwxRX0Xvrmya
W8prrna6DkBHNDW/rCFds1mHWUgZcorvaMNPWLviFio9FOFu2CPSJGVErlxgGc7F4TkIRdgxXX36
hZVJTpq9hc8i+fyGG2MS5ge/tEWDv04J7gOG4GEvwZWjqHzxLb2KdHtbFYf3hK+z/qh7Q2HPL5R8
cwDVoEC+XbPwmPkguXAzk0ukXj4ekAHgytoSflm8yUuwZ97K6wSVyfizgCgg87uJRYcrlm1igl1I
+gkEtGr6DmuiBggyZZVkPapZXsdpsTiJKO+Ry1B0ruJ+CB4zwUBxK9z0sun6qrFuQGr5bBr/gMp2
emFUeJrNL4QI95oJvhWS9ETE/uKZSkbBx1tKeN8Q5e+bw50+fUPwLMHpJkFPBFeIVJduZ+ovfGtr
AKFAwFmeJv6hiZV8u1ul6038Ad8qN05bY/xA/adJ4oHcXb1U1AfKVUzcLbl8hdOVeIX7pOdh5Urs
v368s1xBP70Fj1mrd2sw4RQW49BZwfuPnPsc7CVvubBa8vGhcDsWE1POanID2iaWd+5HHfJx8pPF
AksI9UdGpGAFRStKkfbQtvtQuyd9VrwxchDQXrxxsiQ+cUQzQ2JeB0MWq9fZsnBN+mk8QD0bcheH
EOOzxoESl77MVavQ/kk+eqduNDuJ+Kyfo7fC67zmOU+/XIpxKkTU7M2oJ2AMIEj/eG93EEE+Xbr1
J568x1qN+/caEEOgEXBR/AB9d4DVurPrc2V0e9NfTIUxcMM0gluaHH6HyFY+M01/gSUQOmYBLPS5
LohUUIifSQkeFy1uiZan9Mx8RWHwQY2B0iX+ZAjiKVv9ctBASuGQ+VthbHIcQtZnSFtGoOLw2Vy0
B+lFj5XxBwp41NwyscXPhlY3AxzmI/+rNQqw4fJ1sQzD0jJM6Dnza+ai/mdq0RSN7Cgr1UVLAKPe
JY8y0KoEeWTyBUcAxxUWJb8cXQjG6d+4+dvwCmB8Z9xNcFv+ScmB9OzLlwUvegNE9Fo49DK0YYua
daEn0fc89njGjCZXMJdZ+uXuS1e+2cOBqKP+KoY617nfNrr2T38OsTmAJxD3GMQqCWCu1QFVK3Wu
xpKGyS2msN2XurXehCQF+QKVEBQxX8frNVgC+TISm4fiFdN1bCp4ZHOR7r7ghyp0qS+BKbBcfWTO
i7LmDVp4H+5ZcX6HWmF1cEiZlfl/kn9b/HdkVwQ+UKhulR/X1gJro+A68avJ96pkdn0hQWn6LEhq
q41Qlym8sCcTXl/TnZPbsggr1+8rMkGGs8e1WpVfRNXx8yTN5IDVQ4eOT6CrSyrLyTH35somJtIV
FiGq7v12v+DzlTm0eMi5CbBulEOpg5ytOa7VRAu0NMnDvyZJiQY8FNl+aHStveb9zyqBSGfFvYFR
qQMEcjzbqV6ug4Yb8FRPVPKj2P/4IrDLQwD5SWv9NwjXHaG3rq2Sj3wfO9MaFVzmHW/ZBEu5ys2n
uM8LGefilYNQCTh1ayo/O0CqcEtUbHqPgIVq5agXVHQh04gBMkIKZNXT04nYiWKo97FFqaiDA2A8
wScF0BBcIQqC7UZ+pPBW+LQ4eErWMoOYzjHI2whczKSlwDgVJJxco5J2WHmRZomkSrmy5mYg3Eau
Pu7jswhylnp3omPgPdXAyWlwO9gURrjJUqkVYxmq9zcnA/vDobXRnnmlWO3sW31/kRKCoFWG7kpD
Tk/cZz8g8g+iWZFlmAGMWZqTH9Z+uT6LUCiGttAhHCFhupyQu3aCIV4CkY2LjeKfrKMxQe7XOEp+
TqBzQtwAhzAeo5CM7IHWVN/Dm3p8UuJGUBhtJv6nTN+vqCh2lLmLHxD6f99va/3sogdQx872RYJd
kilB6ZrGyhIUf0sGBoZCOVNXsHV9uKb4kKpcNBO16zUWBm42EzGscyD1lQ6oxdrFJZe5MhXtnALd
OpzXRYTyBtI2u/YjDCsLg0iXIGbAgLWkHvm2eTcSdwqOENtxqIzOfJBKTROak3gXCpd3qL/qlVtE
9RhpK/x7UecvI65uGvCdgCaRx0Cr/klXYRicbEZ7IxkFtkhz6HfXZPf+mv/G/tKcfviWI7iYK8d5
tAoP6TbAM5M/IDtStjoFb0/PmEvPZqUoRKbbhUawqvXufU9NhjlPU9sQtDmUi2S/aIjf4twQhVSH
6/aTRCQYtsIUZbWhJv5kMWPtT10r4TmL4ho/+K7bo+ihTxWcs5uQHiZS7HXi5Sc1muC6egnUWvQK
HeE4JJztCjEBbPDn5hVsROSKaIwhN6HpoVy43VWRJPx1s6iEbtb0ZWD6ya+QNs67f4/L3Flb3mwj
hTB+GXnx2MvOqnhWZ7UosFCb/VLty3s0G/iyJKBa7bUUGYPEmhos+INXUQira0VTLOsuapmZFsWS
dMFJWd0dQ+1vG50ITxfAl7rzncudShVxIlfvr7Z0eOpSQr8kYFtyyVfZJJUg4nLSDn8O0iQ+YLEQ
T6OHGSihhb9k9ey3/R9JcWTYW6o/nafnigFK/i7inq0dLVOB8xoRBrDNv8KR+ka5oPUvuTf3VgRc
jpzGLNRHURUiiMmz46N/mlh/bLxGIkuJJWW67WWO5UpcN0XbkjqYwX+bwXWmU+v1YRopCjMpMb0H
CHoIB+Vc8djJt6cuoAlBzWs/ZN5ysHQkba84u2fRzGlGJzLmCVbZ2z4mLtipbWTMS7kakWH4XBl0
owJm7Awc5ft0GKmqm4nWxpSw1piz/zk0UVgPRzjh8UbxXk6V27ZpTn6behfokSdXV0rgULM3NtiP
7zhV5EICCf4/65frW6h11OF0XOLWWSY51uXM6Ai/G5gPZD+7SLPqvbZm+lFfJe/34RatyEuBfcU/
d22INci2uqyUF5RVH7vnm1r6YfvQpqi4S24/BrM+f/FHmqK0z1b0IlZN3EmpDRtBExWQTxCnobw7
x0e/fR6qM/3ZNURbrczjIdMk/VVPAZocNAWBxD7xsLWl0ILqBef6k35Rg7zS1a4DgHmR6V0Uky9M
Gl+jsXRrP4sV0OV8qC3ZEExduGXi1f2RK5HhAKuQFLuPkaziz4EkAiVnVieiVsFmEiNX7pmspGK6
+1nkS/viEs6E/JDsiuj3R3gm0VWSg3aYsIfZw7SYqAS+oGRXJOQZPL6AMRCkUEtnsIKMQieTORMI
X4dtQyjgeHSALbObDR+63B5/v6MqyBkLHrQyy4khKvqnuPLTh9/DY0DtNtijwkzhc/5PVEk+VEas
9xVC7nMhikGjYP1MJQ/A9rnvhWpd6V9sDz6OOfPbJrAET6FpZY+nKKhr+WfbwxHOzQDV190ikSMI
2eCfA4i/0Gvt+wNN5lmOO3gZw/8C84m60hj4R+BWz2OT5hbaQtw78+8W6S0QojGE3NTpAgumSFVb
JAHCB3NVIYynhSYeKTEQQ+gjvlfOIo6vZkhPDDCvSEFXioPwmBmkl3LVbmPqWSejyjoiOmm24Pwd
w0tHS11BcwOays7/D1HQaZrHj6kCLqBYSpIn7fQeAFpWMLrd6wLC71PfbRERG/+LC6DrCegoi5t9
KWh3h87FdsxbIzkbg9VWm6627QmeTqRqx8qbzG2ytWoQBqgXM1zFg7+YFysUg8nA5AOS5qxnHKa9
pyA55buprgRj5UwhItJzE6NA46/a+dioh02m89Xm0Sw2X6oat2Fk7qX8VIgbZcs2JVXbvAGiulDP
ar7e2l2wxIAhHIi8Si2KjbbsxUIVmPE8n0ZwAbWlEZWjammcjeMTQ1EnS+SiINd3Qtp4eZYvBr9V
4zKCAA8KMegA7h65ZuiuKFUhDyfGRiWDJhPcJME9t/TSpPOnfFfX3/TSoS7qgD+FIQVAuvCHEgFl
uWyYhyBnF4aXlg1Xdr051IoKjf/p4s6ZnB2qIxWYbkKJ1CyiSDuzvTX8vbNSkaV/B+L4ATmf4llF
E9JC5X4/9ZqQafHYXag2bPNXTtrsNj7UetEsJ6YzV840bN/cR9oonV/W0bhtSG76kXTyOZTKX2ca
SlPsekWde/F8WHS8sPIPiZQBC6DZkTEJ8sVVeg+uLKY4NwhETo/EBEVG8BTGdegncDNGhekOx17p
K4s+XQrWTKH2Uz57vYzfYcCPgA2O1YwqwFcor1HeBY8z9hWcMS0IBPGMxkTdXFvoOrLfJoxU0tXA
1K8uSTuZl3CIlreQdzd8gAy2xv1fMNGUk1aplTCfN5gL0ATmjMectlNUOA1623F8DwuoJ9bgdCVl
7dM248ouS321aeLvV947E8tTPZ91wBfRahUPViSeNYuw6ZoMqevJwkcgKwQ+4cMjzOIbSc8XawGj
spUXb268FuHTpBOe14GECW+f+BzJYXyjMIuMc4t983MWzAiVdOJBr8BswbpV1JHZv8gw1V2bvCiR
1iBYLzdVuXXNqhneI3PJqE7M1S/E32J45X8GW8XE6Yov7dw2JCBQ9BukTfeTF5rgJ3x3STQEk+mf
IsKivvQzPG+HcGq+ARUKYkrR6PCc31HEeG2tA0l436akxlUzuj1ulpYuu+dtpfztiNK+qg1gUOru
LjuWFwzNsbX9M98T0DK8A0Ghy/nQrPgVHoOWhf0g5STDrafD8zilcuV0oo0yxc9Mx1Dq9OKjsYmG
VTnNSKQ4dGvbZ1/ivNr1zX3FejqZlahRKk64602SeStBciK+JF6x3RZciUr4cSc2Wt1xaPlMm9cd
H7/F+sIRMqiZctvbTmtnr3XPBn4xQZHckdKqDZ2ED+WiIg+zWB+7/vm+r1nZJLAf2CGyxLOFZEZ2
SrFOymxJRa02z+INGr2YxJPWJ4S9XICpPgxodKysYDhwA5hW13LBUVKQMYk9IAPcGvyoUDBl45Ev
5FM6u/aPVU+dCWI19WVheXNt3tCY1bjDZgLyqlAE9/RvGlPaoVZ+606vbwJqPRSwm3wVDzCztZ7c
eiwBVZWQ/RA2anwuL3WU/hp4KjoygB7Q64JaDWlIPy+I5UzWOWhIQWGlJOWY06KBcIjyLQjk86FX
RLo/X8GS1GfjsnON2Q1RuI8yNQ3lbc8HroODwVYsL5GXxr3CyuBtievvAmctftdxRiTXFw0/bFZt
9a9cUGQiQjC2/AZLAnPf9dP/LENIP+SF2bxIu6i0iP2O70Y4G5ip73twuHJP9aUA2PCPFhzPeE6a
yyUxnBh+FqERWUDKHny3WnACO8VZOQkeIMO83VvQEEKREcxvsv/d9MpcaAzq6k6n+NRsQWbudwY6
P9/NFWOil2CHoynCPInBYRyxFepp80QDPJheWL3sDZ906s+8wIPjnZjXNA1XC9HT8gdP14N+w17W
a1DQ0DnM/QtFbwrrCPJo7Ofvo017ZpuV6KGaMz/zGbRqf0v1UL9LRiQsPBdSrSxPTp1HmR0XSGZz
eOjjtHc49aHLDrX3ZOJ8z7ZllMiDO9+gnzVkzHjJV6CAbpokAyJar2JvWjqfTTDzyO7TBdIM3O3c
Eiu8aiuXxrlwo1sPmS/pWSBYO2EbqC3Rcr1SMqJ98eRUhKtOX9nYtXRXHwDJ0YdDrJC/beWfyjdx
nkeeP6t9X54R/ge3EXGpfatrM7FwGWL9+Caga/5N/R6D2noE27uaZBnFjN/kWToXtuAfBnH7/6bS
El2aOLDOvpJ/0u5IyZ3o1SCyf7rXyH5wUgml7crBK5svxSmgsGzTjmAfTFm8e446tz3C8Sjcoqib
2yfOCTcRlaSUTQQ54I2Rg2bkfS64nDDsHTyUkVd7CEDfgYcWs7krL/tOBzBWO9vSo5GmyNqHTCWq
rwo1PC8IsDNDv6G6D8e6p1FBzZ6HoYIB8+/aCnj1XIpv4naY4gsdHdW3ZJ15IcLd4recsL02o5O3
PxVaCPLiCC7YjQtYqegHIBPdTiy27Lr4E13rvKaVI6HE9Aavoh+TncpWCIODQemyci9Qqu5SI2mZ
uKPnjqTdTurC0J9YfTBi5T7uEb5ucnPt6pYnhcRgs7enzVRzsRs/rhWPtB7mZCE8EopM6Niicn2j
YnePCfj4RrlxX0edG0uWHan2YE3tPiKEm8/ekHdDnY4+LjsS+eaKgpxZZUPkpIkTxI/bwRLBWXwh
MDf63Aaxv55VQ5s/IQVOaDXEpBOJoduySX+xVAwtHCSjoI/aqdAh5OFMoVnUEub71dqc0LBId+Ld
EZUbMF7lxZjUIf1QdDnYNS18G3OGsMifUOSXY9tKGPT13Dk9a1FBQXjpJCvlwN8G8mL2hrYZBbH7
At9HNdUsaGPkAlfIuP+dBxfCh99/1KHR0+m/LTC2xel4AdW+NB7tCi87YV0LHpAVCw4PQCsbOz7p
2XehCTzqoRkmHZUvcEjXbISrYf6AWW52KmXjGxq3KnfHkJ11CHo8MqKI4i+XGwTac21e9UJ/JcWz
76BbIT1t6nEUXn3Yq5e4G3dA26lL2/1aul5IwvrGXqIfqvnSKuFe39Io0csQdAt6szcOqLC0ztfi
eKiig1GdKmXWc6LtPhR3m8k1nJSGccMb+xXTRpdZTcvfWd88HEJYeBHBSNBPKnSMi8u8JA4G8dKX
vEXw+2wC0m4dDE1Dds/4GDy2tTyT7ZkkiLr7bdI9rriyccnTC7f9jh8ro7cxm4MzTBl/l+L4CwZI
PgNlzbZwZVxjUlgg+2WFcjWYnrWKD1HDfLj7VRTPeTCylekmDXhUlVtEy0ixRyi3idnXvAI6zfrG
xlT7MRdu6DJugCH34a3ARw4ocBQsOgNS+cKlUnQdjjhT45eyXeRnljPo6cwfazBvlrcizbDC9M3l
ack2DfO6h9AHSIPhB8XMVBSAYVppl1F9CSHSTPPEnNXQPX3f+IkUR67UFVsV2V4RPDaV5SN8dNRf
aazQJIQ+23fbmHA5FAn0n7d02WKAuPy5MoxN3V42gqWwOLzA+jc8TY5+JGr9glRdIRjwxgh8coJj
wU75aKUTx8c5Ia/v1sFjCWjOO6RAkHTlTYH8/X0X9lTyKdHGnJaiO6NyZByM7dSHzhsvpRUkfuke
FA8fXzQSJeKrH13IbC1JTawD8qhGY/GoJsJFyt8s6ECi6iryA1a5Hg9pjVEzZ5DotG64YCxct3dT
bZPu+2AeQ8uvFVnMgsjFXgd/vDgv4jtu7n+BHgPAkW6M/QyOfw6C0m5Wgo+FCSxVPHDH2ivtsEAp
XUwz57aG+2XOcTuQ/dZiX2esopI0dUp2JFllYaYaE291WUEtqlkJzI2FJ4bDQIg8zdIMbNTe5z0W
LTjiLMKmGd6TCvsrTrAvrtDn5dR8wNUM4TWXPnldj3tyaRosZ9aW+IWZY443NcmTcs9Sha29kgB7
6n5WdCY1JLPum8zCUQuy9rxujFOSd14bOmFTL8qHBg4Tw62uJ5gwS0CkbTtKTe2kZ9ASJb/TpfNN
7OdBraSKroGqSaeOknEh0gvrNgRaqbRSEmyQNOFvf1FrCJBf3n2EnykZaq66x8ZLKro53ApgigLJ
FDqyJLjPpX54qr4lQgIMUjk/n51TnK/bkjaiCkT3wvpKao8Y8tJGiRsVDfqe34i6zCVxlSnajahG
Fx7qiln+LJ45xi/PbBy0GZ2GGr19oVdOma5Px3ScksWBD/HJVgaDc3N5pjEknmCXDBRa70Ykib5C
ec7ZnGyPZOriSIYZTiWZFVX0remAiryHBc4dx7wFuLF17UPyQCLBHmQvOr8xWJsvQ1KbG87JioDt
ML5p3HhqbaTGhClhNxTUS7GbArjRfWhfCrv8M3UEu+JZk4ysknlXGj3IzjT2JEunI7mwgFB/1Udf
ETBVWtKOJJ0+T90p5MdBslxinvp3wiyby0v/s2YHviO4W1YAYhgDQYQ7BVSlSq9I6xpAq2uhRFbP
k0xs6THhmzJrDWHt8BTmLtd4XA1I8iCt1s6UFQKRUrodntvD5iFALGR2DVJJYLng835R76h/pQbD
ICUbLLL6jACxQFdeno1B4AarzJ/lwKZcpnZUl425hrg1eILQhgN2wATFrfDbWrVX/RKztX3W3WF3
6oUIiqixyEspubEHpc9Wfj4FQmp6R9Ltr5gntai2UVFodFAUcJDbvQccb8qtwVSmzoBxPMsO1V05
u1XTZQDIpTntyQiMdZu9LrXl1TtiaAAUD0hEoaQue0g1cmuatTIQzUuKiYxdvfJaAvLEBCu4G/Je
/O4w9txgIDgDz4VP/BlIwR0UALrAwhG5CtWm1/yJgOme6W01lyCr+IUnetqOciLo7Yhxq5mIbe/a
dHEiilN9SXp84Tt2fBIUb5ZJDCZdMqtecJNZV6dz+JiWHPTr2eF/rbiZrXyJFchgxLq8J1kayMpr
qH5WF1Pwcd/xPS9xhD3k/EPUPTtPEcgChI+fxl9ohD1f//7nVCwCggcE1rtB53NXjMg5Ag4Z1dYY
S6jk9ccTON2A4g0RFNAoUIHa6Skn9l4v34k+fvW9xe/Ra3hBLDCRNq52ElSZ3yhmBkYtxzmvrHoL
x0x6m/TPx2DnOrFJgyh0OFjq02RlhfXDVczQqJYnXi1SYfgqBNXKukWGuiMTLhlolkXVa64frr/+
XYw1ToQnoH2LP1g4cuKVqaOoM96nluWwUs8eDDUeLWVkzZ/zrNenUnQmFNgQrNLPFhHlByQ3HrEw
PaeP5h3Exf09qzOLrF955B1QWcysX/b1fxCPPFe8MJuSpfS3QKZ3uP6fAb4Movq4/UmGV+wgykrZ
m0rXrd3cNoIZHesDdeomkwoFnM0cOXgoOQe2Pfg3Rqg5eSUJFE/uyeGoPWVwFeV7jFZgRCHo3LcI
t1poIqra9l6XzkMTs1w7cv3Yn5WLdcoMay1a+nDOqq/3rVu+GI1xkMBVGoJBYD++mzHgJalG8GnF
3Kgftc3Q7K0NpDO08HCH2F3L2VbUR+/zhE2ArCS2gk6U2e/BAeiXLIIwznk1gPUKRBlKH0GJQ+IO
8IQgVocjdXaa5e1A5J1WDn5u4KWbEOMq1o8+/d4QlVxo/PqjN5EGWxEr2grwsPJxzFmE+e9E25b7
7ODw40X57PZ9WQsh7Pnd9ewC6TzV4Nsse17QB6ybseb1FemcrPA3V6KgtgQvgl/u1qwgj0sN7wDG
PFGMKnxZVMTWxFu7FCexNpqTVAqK5ARou4WJ0gTD3lKksdJEtXi40sfnjG9ewwv921NTP3LMsrFe
qI1f5tWxx/eJtdLrnOa5K/7J08OV1kJBuJgrfizKHs722Z1T8D8JzyJ1FUPH/nWrXYFr/CQIX9ok
rl2UQhqEICTMLtYlNzUCx2EBXXmbVpVMHh4qEvX4/DOIY8LZqpIBuYZK50GRTKoqxJotiJQk/Al0
Be/6slwMwkgL8xRdUb5uVRQxauuuMjglWhB/RCH6Q7DxdcAHyIBHY97f8mIqvBVkGZf4GtR1R2df
TNCBqQE1WpDPFWx2DGqcNzHPOTpmojWRGxPzLCgwnOqFJKfn+GLA6n3vcgByUt/Q3MlUT5iOHhej
CYN8I15LAJEhdxNwmG8doa+WwRE9T2gqpuT8AGjvVJDOYpWGWTVxKx0IJ/8A39qz6S5xNWLWBH5x
gklIiIwvoUQ0V7nC8O2V47ViPhcth9QGteg3JW6uJOr8PzAJesdEdNq9hZvXU8Vlwnz+4CnKvgPV
7U98FjyerpKJyHSJ3P7qa2oCUNReIXbhlKT1L9RjgWgsEzExtCXQ79/7+W8hFMFDL5ph6bfiQhCg
l4pzA67FBHK1t8sqSqeMX4CE8eDelxUzBdnI1DUTtgMGd2wCGiqxKPwDBHpP2HhI9j3LMTLQdZPQ
1eHn1yfJZgzST8N2nL/kpcbRvBfqCOeMd7YKZx2avOZhhtNwoH0Uyjrikaljlpy4tQV0hOO3ifVB
TJ8o+xn0bToiC8ZqEnuLRc6rQcGUHHB5s7mB+Or9BpOT62cTjeH6uUNR/CkJvrJ9cHVBvlK1hA0c
aa0GQgkG8nJdtZb0yGn6B0K1lek0ZlqBwTv+rmI/RUU/XX8GWrsfZPoKtcorrrxpsSmrnZQgZJZK
3Rda7DH3uX7Q/Flgs+B76ISs7J7B3WavogJFqZMZ8bTUC8B69ORe2QS8rSTDGKNjEzGdRBPJ/9KS
Y2Sv0gjDY8p9DCeRGLUfdN/zLscSQF8Gx6ZGHcSjZcFAJqAUTXT/98jz8uG/nbQRXp84vnMtVsll
rqy2Afiu4UPACTXlj7EU93KvzIZgkKtVpb0j5YBlpkOF9Prx4l1fBmxTpoiO9T+RU1ZfmfTp0CmJ
AeZu/JYfPwOQhQ36ftLKFQ32/V0A2iS/hCicjKJ/bWGap7bXcPUtqOTMO1A6yAvxDfyRwf7Y08GY
QdC24chAnXzWk0zHS9oGH29qHw9AyVtlqF9t/CG+zTqCGGp8G8g/MCuJ4znLs/jpLHluHG44o2GA
tedd0qI5gvYPkJ2Kwcd9QjcBq6yxcn4IObE/dL8WOLhhj80D0ciPYB/jcQKba3voODLqGFOZ5QqS
PhljMUBIqZJKIJgwW/RQPB74ROIF/JP/5hU/NNu4S1R5zF4xk3N/GWhHVp1HtxjAtEMfQmjoOeuy
ESCFr0v/8v8ChTi1TkIviYRBoyuUHJjGzryRjs7vKR0HlGg1sUnXQBkSQMSf9nSvHKIisuWwrdxf
fWHVoNvmgTVQ9UKs/nngVQcLsg9kVd9Q41Brk5D6jqW62ME+2wmp5g3g7RmViay9tuUkzask3Q0S
JHli2XSKkEgX9ejrzqA9BbxOKT69LQnyo6GEgQznzpGyeOloK3V0yQSxXcgsG5MH3k4qsm35G4nx
6+sFWLh+JY5bd2N4bNPwj+v4jM227wcpiPMggqjzYH6TqDPVGPisIFuAc/2j+31Yeo0Nv+axxPvW
md4HLUSK/EStQfj92gNJpaG1EaKfMddLlGXP6J95MOyT75O/HQIYuxgldczbP23uAuNURgJeoXeP
6YLACXmf8wVx+acQBIgo8+rUwY206oqtmaD3fQaQxERJ/nLOULMYCRGqQ/SMNaetvc8fv6h6iz+z
Sj7iOrFQ0JKm7Zsvyi1b2x9eN0MffTYxPnAI/ZvoZr0JMuIl1DWHiBMpoJn6IMG++cd0QK+f2wOT
q+S4FmEAN8LrnwWVX4CGXm1O6JZMyQAQ+sA68WPx2BGlP8MKTmbKQ2+E77V9UTfUGvH0PdscqBAM
Y+0i4Dgl9BdYsbJ4mmwo8IQG+pDPBTbYzJ7grXe4lV2wMNHMn8oMlwhLgNo/PwJAuDWmWiPIU4aC
j5f4vnJlQ4La1crs0aUZ46juB98iIws3tRevLG0rhJf0DHvLZfc4lj920QO9hY6IMv39xvrEyNdt
psjdlC4U4byMOR82qiOcL9kLiPbpS454jtl9X06/eJHTdN9qdSkvMJfsJrbHQ1rGPaZOEFm0IjXg
xcgi1WGuQk7ifLKjqxbqhHmnd0XzGfcJsRLpFfg4ecL4ih2S3YFCqJcxoc4jJBxvPY5LuYxNZ/Nw
WEYwT9Rbjv+kf5mdSxCgaVqcOvgCOyH5IERRZOJMNuvDEDsTnh9KzeBTJaYtUPeAV5hpeZmiWMpl
AZxIDDGxuDl2TTKWPObDjJClN+F52EEeHe3M3jnUHiVp2Il6PSlVBLI+MzRE/5l/z+0ap5Ys9231
TZgaVrfi4SwlYih0rdPTsKFBt5e0cOT04TlMARHtZkDNo+VkxfR8vfMAiaOg5yvkKu0I6bdMDZng
0KGWyFtRKj+kp/DGUc5FAofyMSXbzINZtKIEJM1Sa3K5sGc+cQ3Oko01aEfa5mP3bVR5BRdJmjWg
j6J8TGIvXJnzP3BTYppyb3vmywTWyfN1HHFkUWWef7YO9613foRRvfwhtcCKo4S/H0FR9t2jnlsM
4OnO2TZgzdGnCuu4TmvkzQTRSNgMoIGca/Mhvl1WKtC1yW/3RYES1+TzFKLqZ4q9RWTlGoZgr1b+
cK00ktFQTfbzgY0+QLDMg4+VbKXb+n4UevvR7TodLLKpMjC5qdToSoN67DZi3CnSYSOjOwudo2+F
gpDeSaaZ4ooaBfyj1/h1PpQYqe1kEZdDhNLBjF71aApzvnjTQBUx3rBHUEuBYHCA9WEdxcBfBji5
HetJA8eXB6tuEL4q9R0YiqwjeAt9e3MJc7Q4WAOoABS0+BpN122AlClmtIlYgSmm67bchhPDwN5a
QdeIXCFhW3tdDbWtobS+At8YSsT5WG1OvPM0lMLD02vMLdhEZeDl/da3SXbFSBLB6NNxUtYYo7yi
AOlHoVaxz53uRBUeqZAUnIAhfMUWO4p7nb7STUFkKwnarNHNPJw2hSAguFHCt/YAr0NWe5EUk6UD
OXmTO9B2uY4U1KHI7CEasX5dnh/+zpmy55jEMTN78jpDFwmoEcpFLY2i13OYfVqSj40HzLr5uq7h
UNgNNw3ZueCLcJRuO896FDFdv5VjKh2sdO9ItO5kYVJsq4jzcjEo43l946JacnN3aAo8WT06nUR7
McYUJowN+kq3aweOc/Ow9xVv4oWH9r2u2WoK8YNukTO6c0Xj1iB8Q1p6eA/XQNV/7ygsmmBc8kTq
G+HJB7ByE1uFwMw0/G0PwqmoFPrzm0/aqc92ypz9QaeQeibwsBaLUCitXOh9L0RUMCKS7Pvab9xe
+ohAmt1AAZyKx4J+x0pPdILRpWt9IEfRkVaFGmBqgQoP55PUp3ZmWCWLKIBDwda6A64jI884umOb
rFj85hP+tjtYmrCGmMfmUCJxuXO0Z84Hje4qd6QBb8HJaTtaQBYMWHvKTOkpMU/NMFTtuFAnamOG
fFYn2Sc4JT3201BKbkyksva9a7rF/DIAjRXgVqiGjsJMGIP6W1PIWjnqYtwYsR9p77Zab80lXnlb
Wv5fi2yZ7KdCZwd2NJcq7PO9TD7c6JVuB4KDVpsrmICXNNBy9lyhX8vlziZviWzMosjgi/HsZbkS
kyuK7v1LnPzW5gaVZZpncMPXE0jMWMjrSIvshDB9l8pbvaKX8EhnlKqWu2QuupIbf03KM2bJ2wVg
zTWdMZe5FIHUNFezJQ2hLWg1vgdC6NXn8F0p/Mw6rmpsUZzf0UKcCRO4gtfjpRHBFBIa2xRpfrsF
2PTAcYex6L9k6iZ5ci29uzMWrSSmur/pg4fajJcoVlJKblBaFj3KQZn4LNB4S0Fja1FejNKJmLlT
PWY7376Rop1MwNN4VVov1GQ0xoyV8oj5VKfdHW3HNHbG5hjp0LoJZTwlMGM3/gXPap6vbgYi08TY
zSrdwTI/eNOCZMGThMjSQULUGZubJa52AhO5NYXOMXK76aeldlqGQwBG/aot/cDaCjIBpKxpJm/+
vOrsGNa6MHwfFmMLe/T3QkPlo7JsUZftOq9HMRqYIJmKkSk5vkm1LPxcjaWpLh7g/G1a2hbFKzah
kMtKQqSOrHMlGPBc1iATZdo0nV7HZhro207zRcu8fRbnqWcOySu0nnsOYnuTpqo7ISpbQPu7YogV
9k4/StVIARAmtZs6XMNFdtYWvtI1BJES3h3TMc1mro4+5ihiM38BL5nUBSKzhMDGDErVoQ2xrOFm
emzicH9JMlDbivWZAFOX5hm2dRpBYkWKVcM1o4OIoygr7KGzNzudHvpax+wGDBNVHzDR00RFyDCd
SpQTTatReeuBT7SQ2CVFRQGH6Z0pTEvTGUXmrlGGurCfzIBVeKvotlkHa3XPlwVecVHO75/5W3xz
0cJweStm58yPm8QVNeCkvH0KCF3gfkDTP0xBLH++TsA+fqsdMJQMdiJiSwDUh2cam4H1H9QsPXqa
Gj84OJp0aBbiiS7nj0wlDLBThwbI/7IDeSio+3f+kbRLnqQ0BFuytRKxjmnG/ljAbNJO1jSn9ZxV
r5LeWVOyeShfBzD+Rg5wVWBXilisNr4Bke1rnIj+u+u0kYuhnFwq17rS2YmzGx8SRpCbsETy1OxF
SfqSPLHWAC6ZCGIHbjhOKSJXa0nikZ9+kuQcMYhN5p5bX1uMQXyW9Gr6bPmJAprXO35aBleVIm+1
1Qw/w8GB3Bb+WjIoUM195bwfQITI9o9uWCI1wh7rK1KYtmm/DFL9mnCZJi+hPDQWlmUQgSHWwhVN
dYWxHzlw3NoBv4rt/Gw3k3yTVFP+zXxj6r+5gnX3N7DwpYtjzpH0C1v8I2dhhrhe9rrTUBptceN0
OvJAVc9jv/7fPANgNFkhmDlUpSIWqXqXpI2VUtKcUBxN7SOqPfc27PzSPH8k/kntHsISSBZ/hEaV
VEVCCuwuhWxMioonkmKHWjGhF1DxMSvoAeyPPhgftwdMKkpe2TCWXcqpe1XSNcToALub9xYnXny7
/YJnaIugyOly8mmAlbWrp5kka/P4ut2xNUHjTGKyCb0VG31rQeA7m1xFi2ihKV7gINlj//nzrni3
DaTSuvXonc9bcq+p1tpPGISxgTsCNOwF1WOOW8DeCcRhDhrzoo8pOVw34IhRrZJObQhEawpBIbPs
NCbkXelL5+8WZCE8eL0ejX7PPnyQ2zdETKLGybtfEHxr9Bh/yCNsSNOC5zUg9eUf/zFI3Svwm8YS
CxVt0oH8NC9tpPtS/ucm8i07LPyACEh1yHQlRkjwguAm7XARQv7nQ4aGtYESaYSsJe6Pgadtai3X
WnXFngK96D/EcsZ36nULoDEb4cbHdX3KN6T1/4HP+PyLDlkOxQx/Y5EPmmGZbF8MJI8NT2vCMS87
C2+LlE01rDQ8np4zTEDkuNLzUabkZOXkMt9n0ww1rv8keLGkgvwE64E3fNnHzKSG6+jA7Jt7LoTI
Gc4nVMpslQLtCr+r3kZ/ccXe/JOboowE4rOBOATeFQjhZVz091drRFeQvOg0EbsnqIg64C7tyxFz
C7L3IlnkpxZoiHuSYFMIuJWEc9cC2PKL/XkdW0ZkQznwWB0WavuVP+mBV25h3FdM9RaG6EMBStWb
eqoq2eJo6lunj4mWx6mBnwOr9iShLVh6k6Jr7/vE/vLTadCSJ7yrdbKNxAmlErtqqNFLvpP85KUY
4hFEs3TaKC8VvsTTMZu1lNWAp6Cr4BfPjHf0ybC0ZjQ12pqZhB7FM1qsz0i3m4JixfqmV/xtmIhe
HZFDvuJpMm3rnh47mBEYcyDSbv3MZkTLcypMBBYGpVQchUV8MZS9iw2HIlqoO+JU0DcbqUpPIU3n
und3JSPZbUbhpHb9FuXxJXNlnz4+1NW2VXf8/GbCKu7aPHYck01Y/FYIJYOKQi15a18u1H6ZnGWv
iyJ73n7Itr/EyKkbP1bs+hwQB/YEPZIDT266YLDNjZLLfSWUE/Vl4kcFbk4RGF/FGytRS2dKmk62
4xw81+LYOQBQ5GUAf1tZStZXwBYajj9SCgJkOAo3sZZPswWp6EKuMGEHJKqEM8IgzLAv2wJSFXGL
ygThVf4e0z7al81WUqWXUNZwr2QvlvJToEXcQjxGQr/lgNHDrD0NtHqTWaPrZp7MBAZiNBdHOgPg
/9v3HNE+m2ThOXp+zW81Zcw/2WDl0+dFAVR0letMuv66bq1eVxVTQ0Vdsl3omlee51A2GNSXuKH3
9WJlvB9Bjq+1Shz6pGTfr5Tiryf0ocwlGbDtOlWhluw1SUooEhxb+WLnr97D4sl/ADMr0Y16szT9
XcBuKZ0XmXX9vE9jXU+ILNBQkSeonr2NT5jL2Mf+fI9JIjlSs5PQSLdxEDw1bXpFOU24MZXLQSwb
zppaLrb76XLdO3MnVdnLKCXD0KAc2GUpJpGldSF0uu2/u9gCQ42n1KLuqS/QU/Mo+1q75PUqVF+6
rAYFZa0ybNCjPlg0EJ2y4Db14juh54G6IGWAAb9fuToc6FuRyfNRGNE9altWhTjP83p2UqnQpFxu
xJaVCj0f66Ngn/5xrbDAym5YkJyB9JgRObWRRJUEeJPit+IgX3i88FHdeBLToxf0CvTvkrd7WpEq
dZf36TA4QKWRlCppXO5imrvnFvIW68WezXEkt89DwVuIvOlROylWjFE0qb2ZVJXgyUpqp2PV/6m8
xNmYeCloDXTBtVlT8fcDTApRW0Zn0dZg94f5JujCDxdTQdAxZDTxgnsQnquLygL1d9G4dYq33Cxw
jCw3ADo5OdHmLxcy5EHc3IoT9/ajrUdcMA5G0mNroqwUjnSAmYYCkzR7lCsJ8z0toM/WWG++o/ne
9+po+TmKJCj9IlEZjwAPPV4YNAFlP8M8JUL9aK841oYdu2aSZmI3TShIaZGrTtxiDyomQPusYP7R
KaoV7WE/nHzhRKPriimRtcEdVpsHhQATvdzeDP7Q0Bo3/tYbkDdr/tg19aEKgnHhSC1t5gIRf2BS
2nKc5IXSfWMh4ct6pwxn+yyT6Ebu2I01lgp3q9gxnXS5y2xsym5+wGtzGVKZG/X1cOlzvez+90qc
X2YRqk34o+OeAi/KrxlYPAmndYS5uUHM052LExV5JsB7Jd+9OVLfPoYcZ1Vuf59A+3/OE98VRmeM
BZySPjv25m5LXV7r2ul3uLEChxTUnjN+sbOIGXCp/X2UEzjZVUf/MCjZ33tFaTJQFFUQQBvrUdFF
cY8XIi0Feu3mQHUQZJ3tzjDGQbvV7+F7RsEj/Ss+wMGiQPMrEG3sqWCPozZ5vCDM0FDEgXa5BTks
bnizZouRyyYxZWnrvkD0Xr2yXqzPGol3sXC6ASb+Drd8UnZdyqsSLdiq2oKWXUlv/N204fEfpF79
OSdbzKkQy8CCWzjBGOk/dEd/3h+mXjUU2iRFYYX0lM4fms3+HteFE8eWnVrwRpPp73gnEKFYVD6w
VEQaogCWARDaGK2sK507xcMUs8XDM08Og+hOu3D5XEvl30LMWXObTxHfLY9JXej/3m2Qv8QZLUWw
l6tYSsmj68tA7mcjEew1Lu89lxPscmJWlKEFvJQG6WtPkWVyV+qiu+LIqSKjEQNn9dbIOeXHSFjV
WfT4h+JKhy/nv9/CXA5l7CqquTgyy0c+te3+FM60MrqPoI7IgjNhkB9OkaJSSn5g1Y0+PRQL3MHq
RlQTVZ0f9lLEDgWjTa/AjwNhoBAdL9v+t1ZOffhQp7LfWOBN/8JuPtl58Ox6PhRb6N3yTILUxNB8
ZB6nNez3s1pvAQTRy12olzVVl2yZIj5ouVELodU5wuWjovtSmxBmYrE+XhhEoJIDL3w1wbhFBLii
Cj0i9E+29X2EwORFW/Ro1tyYp8Er1cxeKvCAQvCEEAY2A1ecrT8imXjPMjQOD8I+E7+uTvP6RozF
6prd0EgubO2NY6P3ZGsLy2dtoK+vK7Nt4cRR+ekiPSLApd0PH442eJzpS4oJ9PkPIPFM9Qah7L46
LQcXruPUqPZsWNaFdjkyV6wwgP2fxcj6ulULNV5TXG7n+H058JZeNyxE5ItZ+luIogsgN7QPWakh
v3N1kwcOu6OJ91V0OjvyOGxUc/MbwNbxzPl7SttAB9A+bII44+wJQdPg/kUrvDZo5DjEo2D83ZN3
Wy+LNAkuw7mWvPPJWNsnxQhyMTM9cTRfzrLnZh4yXEQV5evoIcYBkmTOR8wKclx39m1bvNRYB37+
T2xxkas8ztgAfPZhzjSI1ivaz0TDB/xyJFgITXC7ffcMpYneSvvwvl6TtRYpX5kS8tFkWmvrW2Bc
zL1+wee6XG8SaFAVvIA+j9yIk8lZmDsSOeATCb+wGyScpx3mQd5cEvr2UfqaFJYwvKOxJs4jiYFn
5DufE+17/q5Ib9K3MzIoxJQRQdcvRb4PGlrJ0VSbIV1ghJ710LEWL0FvquVQFGWBf1IkgcL+G5zN
BETmGHoF9sI2XC17RV1WYugncpBq53FvLZC7GQ8x+pHboFpA8q9vnc66WfhhrPRzwogsly85Ax3c
w7UzPFLHPtNjxAmXo6fr4m88FkX5ENZ+4oHTpo+/eE8rfqIP3AsNlAkbrTJCUvGtkoIcfLYJszkt
atijRH3ejLDAnTF5ALwrusOjwxKkDqJk1xFqeq9FDWjSmnzw/glujvhvqlGsXGo5vFR4MZu+fEv9
VR5I1mbaKNH2ZNMd2XwzQQut1XvPTL0IR+tPBnwSqct8PppFvbBddTKSbWGnI4rorDj1G81SRjYV
FrcCc/WebjuapPw+eCY6hyHL7v2mknOCGhjJI/TDWSdYc1WbMXvcQWH6KIKqAST+lSoQJ8a2LMyS
HrQanoBHuId+AVjhFZMOH8IL6YEY7t928GBGUn5CpBXXWyzt7jZjzty3ew7fSYwe11t8cGZJUloZ
ks4D2pdmNl78s4lm/YjPntQvkZXluQg6SZKHz5WHM7DND9RwCXyfk/i0gzZDDY88D+R3z9aqFhMX
Y+4a+nX38yeblyNs+wxKyBr+aZfbZFWLSmYONpGOJ9CYP/VnnvcHsoEAUAqbcBsMKfETDwKUNrAu
V+TpWnN/mpEbXVMMVAbCw3Xe0Kiod6p0t/+TjbewwQsq7o+rA/vnWjJAL4/bv/lZDlEX5uGkJ812
iEeG+j0UdsKuR+RsR53mEs3IDXJOV4HDQmGT5Cb7H8LcPUUdLenHBP/vMhDWp82JueXKdcQXg+r6
sfvQz382fKzpDK81P6YZ1ptp4rUaCq0gqbVVFafo76q/NQ3HMM4MdZXJi7ZM/Z4fKJwGud4ycKOw
TnYrL1C+mNg1EuL+Sd1747NIkpt8jHGcRTSRMP14BtabhxD2NrxXEfSN0SHuo3c5SKxREq7+Zyb4
MzBqMxIOC1i/2kgsDnyU/Xgenn6lUg8yzbfQFJcgwuHbFvvAwGz8sZSQSej9Q+nw3CiNAKB1EuJA
nVsYqGcz9Hs1Z0MJa3e0LnPuoEQWjgi6f42i08LA7BJVqpolluY4fpjNVorV4vlfAfW3XuxHUPyP
qdRVmp5kpVIqVxYwQbD64TNIN6xZn1WS++aRY5K1xgV8YLHbjdeg4H0XoReDyVewQyuaO24IQsS8
GLTnRor9MSqIfT1d9zHso2yJpjaO3cYV/jepycAQSXgn5WcT3mcFv9Pu7NrT6Nt64t6LTH8M9oft
VfVIGVY1gvCGtxFDvtOb2AcmGMdvL7SuoolXQcXv5DgJUbu5L+s1viDfq1OMx0eUd9nVYl3Ft0Ah
M70PzUefF3XEkDEs53XOMg9mCRBlC+LjsMh3HoH1YAE3Q0awyQ9EYWqteOxB10USRcvDQsrfV/+H
qr+7GaQRDOZ6rYv5PVsMB5x6688QdY3vbHwjRyWA3WCq8vHnfzO22NJw81Twz2T6wpZFt2YixXsu
t4jurUT6KHyhFrMXL4nlOAe5OloernOPs4DgIM8yBJkr2r+FQ6YGdtnmOSAKCq/Vo0EI9mUIBuW/
XM51rBRSevtbJM9p92QFgRHfRCayrPc4fHG/YKdU1pQ1kwyyVth6yw1UkdH2hZRmzVfQqClWS1wb
F70DgurcKSrF1cQzWbS071IIR5uYPNMzHvcipLVwmIi53G5OuBfDu+D8zQU5+C4Y77S5YqJNWxy2
VXo/GTN1MzczGzzw1UgLXbK6Uf8wwQhZsnoVeiMxc3O9m8mfZTlSjcqwskGpMBXFSeOYPF3xuCgY
+Exz7CqwptoCmLNeEBaOnPsbglH6qSNzdrSGHn95PLAvSiQtHnzvaZLh40Q3lcijR0wxZ3mh9YBg
7hB9NgY/bCNQ5V6RA1l5by49MwNCXa7E84dxmVhxgQ3QWRAxC3wDBYxsa1X3Z/Agg7YKvOx/1VqD
liVohTur2cHdnbBd3iEAsIuFzEvXOSKlK/uZyzA+74bXpvP4VIoIXlTcgX6zzz13Zl5dBlX5f9qi
7rqyFNRmjvcg0t5w2MHUc+6Hk5QMtyprh7Jzm035HRBHhLfcx0m6qw6SRHVsF+pA5HYocSshIO7B
yDWMprb5K7s8383Fn4akl3gxeCk4Gy/6atNR8jiQ7aROq5CQiBo4ey38QHIQjvkigE8xXz5XMSrk
WNZPV18jNtcsxfFA3zlsYYdp+HyEgO+oIwGw7qT/4FEN8UIhYlrmygAZZ85hUpSuGtOlRpI1OBNz
GoqTXVjfKNYraXUMHKlZPqdGQ3NfgKO0wa921ld5L6ETIkG3n/o5gMopgRVyfxglJuMc09P2hOau
1WQd6+9OGqyixdhyRcj5lG4CVLDlDIosnmzEJM0+lv7jTfItOTtEz8A8f13p1TRxyfWFLIyWGNy7
baODBkSgVk8CNZQWj3ioxKplOyI57SJ3OMnG6qaagV5aww6Ov1jEEePMSIBJUWq0HC55iA5llaxF
gonSf3/zw5W3eKdSYSie8E20JqVYG4AXKnNVE0qMbENmDWjZVqFhkhpvOuHZF0II6JoaZRJyoDyP
gemrLsFFxF6nBcBR53mmpjaKj3Fol6GqU+dxw8K1GgdoKvoL7LeRH5xc9YWuDStT0dWcVUKwKp2G
+GStXWss6dFM6qtgy7cP8sMvI158IDf6GgaSzCAXOXCo54JKCgh2UP7KyYHu4m4u/tHvlZUd2F/2
ewYA4l7Mmq6ZKomXeonZM2JOpHeIKQpm1Ox6jK4dsLw+dHWnl37S7M89eNbToaBYiAliK5kquq3b
eaa3KbnAmJES0C9JkDS4CtmTKs12FquybMHvsa/f3TO5iC1dRIa0R2TXWQF8/VNeozNRo6xK0jWt
YyA15yIZ8vlWrdwxNDQR1wmZB4SZ0W5hZk9bPsUCJW3vPBvp66ZZqpth642lNPxi9TF42DcojI4G
3P0GQ0J2INN7V2r4Qq8LdvYRAIGNSMxCiAuggrat+ZCtJ6yE0rav8rNztdG/XcGP/zhz9+K1Dtm6
SHxLyxYkh6D/HuPeptc7CE1Kni7OEHF3yueH4QvkCATfOf2AGU7a9asY1ix28ROeoOHvXwVr002t
LunE/DMxvTUZy4b2/N8w4EP3xK6b3dNCLkyBr/IhAx4cicdUIsJBkdcSreMYotRhEcwmRO8LWz9i
q356nMgQO/ZoRKr8M9vpMj2ZuTaYvgl6J+BWgm7sA3GpKNFmFQzhVO2U7eMrwTuCVeTC5+3B1oAk
iJfPnalxgMjRnO92hsgxQSulI4TMKLJKYNHDKtg9MwFZegsI/FTQxIBdsLyTaAv4BX0WiRx1bExp
Lw13LJoNCb20cjI/NDJJnWYEfT/Xr+d8vp64IK9YE5yz1K468FxGwvt//MM2srS1WRlAIsSRMfKv
2LFAKQL33bioFfSX5s/h66aOxC+q1F3qn06l2lLpkpMBtHZ/s4RCMAc+93sXfXKzHeCC0OCU1dcu
rGDzrVFydDlUDVMZeyQwjGKGV6y12eScJyDrcX0ksbIOrTmynwGfVWjHWBO1XBbu5pfMoPVe36EP
jPV99TdRN6Ih++yZTsUPJzYDWk6nDI5As/8NcLPHdikjsf/SuZyVxwvGsLZgkVW/rtxG1dz2lrFD
uCauQksBDsvJCYLFTX5MKguXkHXa2jDwRM2PXZyrwy3j8EOEtqrsZqfM80iv2/jGAeJ31yHtHBxb
7iol16iedIy0ZVw8K+hICzqGOJiPDpHMWCCwRferwqkkXTH6JRUbzDU87a5yC6LAcx6MA1LJ8fcQ
1TunfIhBb94fntkMxFB9Q87Br/YMHV4m57KJe92qK37unFLOGpedKY/Ry3fZX6HmQQ4g5JYB/OPa
jrjjj0NT1Dgd8KBX0D6/Rufv2Uo58PbFgZB9AWAIg+6lstZ4gaou6m60rlvmPX+5g1D8WQebcVFM
pintuaKxHVpsWyWAmSsZD1mk3LDaGBbhEJO5RKNRwvdELuxCVXlIsC6cwYGu2LKm8aTtaxkQyfiU
uf1g6WelK8sL5KzlP/tq6MSpXY9iLMHhW84CPI6UTk/5nA0EM6WZs9mPw7y1LyHaMBpJd1A75e7W
bIdyeyn+wT+WZs8GChezaa7NDvjk2Pm7/kefukGDz+fr0hFZdrPGn9dGJpi5oIfhk1LdrKUXVP21
0EYkGuy+CuriYvJpm+RtHwuFCCLbSCj5KyJSHtOmVMj/FNUCFrTkMIv9/yp07TgDyf7teh/L5b/O
JVcrtsVOaEedrU/r6uil4tzust6D2pb9ichmHvyYFS+fNmkGpMYaBGeUg1HNyQE9Iv/Qj+cJB9N2
cM8yvUwUOybNfqXDqbcShjc85dJX5ETlV5goJSs0sGuUPBMHUbXAfMNPR2HoPvN6nPpzaEziXouw
2FVco75AA96JTXYn+sKu8bDGseckcgE0o+Gs0OmbCKshrebjRTCnR/6Y5o49hJ/Adbt0CZuEFIKq
il7yUZ/XZA0yGQ3Nup46aL/OkuzyCNkMnrKnuGuCxLge3cdQAFQIwlwNLd/aRKFSPlsdcKJcsv5n
NolZ9BW5zuEucdK671tSKNgTtgAzV4wGusqEezA1c58aO4xkzY0INx2iVsLXiPpeRzQNS8asX5Cd
2UYI3mTlsAonMdXFVy7fk0m4tipiRGYCDfO4+kz1yB/d+Cc/LxaeJvHwcN2Si+ccGZE6SObHHjo9
dW2r+d9nuVvNWlUoo+aNhH54kMTE5JI6RYpKLAPAjLURnftQz8KfxQ+eiCJlyahzbD164RQ0iqEA
uudOm9HLHuAbbYd1zSYoq/BizpyIta78uzTYktCvCPXNTcIomEQDHL+Y9J87WyBMzIP8nvs9+Ryd
bLNC08ajLVIW2AXB7gYkGpKJcGCWVBblDj8P4UA+b9ZjUUQsdFPovMZw+iTyR1Wp9tVFHZRj7FeM
vZgRVzhcHuOeYtK2iOediFKWMxgJ5uo/BMOe4Qvif3ntHV/gqSwSHCH5O+sJzKIZiHz/48x0XwrI
WJjFUSfSE6z4QZJChQmOfAlxkXSrtS6SMSXXNyOkaq6hc65bWkxS+7wAzM9l/ipI8GznVFvZ/y9n
+n/2vnQ6jux6QF1W8qKN+xVqkhfas5pXzMSii+WxVgfzE4Z08h8dvlZx8V+/DQ0YRJPul7NkORlF
VdmjmET+dysI9lTrLyDU2eK+ERvjVFgfGXpo0Sr0fISoDX19ODAr1WDv3KaQawi9cjKs54SUf1Ae
5DBAwBzAFLy4g10Es8MVTq4o+rHDinCf6FvQxOipzE4QAda80uHuG34QNaooLp5jrx7KoYU2Ci18
ReA1pZrqSALerwyKE7pR2AIKsN686K/KJhO1UfyujoWwXMNKjOZ0fxo5LfF2gsTO+QudDjzzGtt+
478bPq1ZOAOEcf2Fesp5firnf31mz3j/cFvAn2dc0QVfjp2Q6zH9zit+xiHZZFSG9nvQrT2bzmRP
wXuxH5At+ooVj4xaMP/rSYxFihMReu7wkP2w0Su8ASB4545buNw/E5zL29orf8VoKvOvw09an5Vv
2hZecnHQdZYIachoaOkcm7Wxyjcif9GLvV8vHQOJTZQNARYI/3E/1dOY0Jo9PNtGZ8lvxM+bj/LJ
vgEEcAPo3iRZ6jOxr9Uz9vjzlDnx19wPwTA6UeB6uJ9YTqGbGFKpMx4XUoHcrUiLXIP5FlGcqJdu
79s2v9Oy3CkZdTwXkCcH6J7jAY0ryIIzXeDVIZQ5QYmJPU1xR8XF4FayvxcOa9vqkl+bXrmh3gvg
6OAxuoPStlZb7E1+d+ADr/2OBMCfEtpu7OubFK7jQOe/SQp2i9OeMwX+h9j8Dy1LM9EwalFMfoYB
dRoUlgGRbFQx1GXkoZxP1ZTcadYSUzVrzJk2G/ZIsvZHOJgDCwf0cIkpwxFSiBlCzTQm/+SVYpHl
zPb/OM2TM9Y4PHLcaKnCOyBfMJnh5q4u9tD0HTu2aHRL41sJKZ2RIjIogyJBTMPOJuOKXf4gbzhN
r2WhDwva473WORWJi40cdx3qtUGxpJJQVDtIjpQSNqTGXkGRqOAXjpQmrkHp4h0JUOxOebhVwsbf
bY9cBO+n3L1jNA4bWqWTsWmD3OdQ7q5gUa7NeeRfwygpPjrDliiuu1tuUZmxuTPfawZhMOBQkXlY
UPpLtXk1FmIH6jzUVbPBo6RpJkdEMelePbrejsD4QWuLu2gjC8d4Md3nm8Hms3qwv6z37UptpeUb
LRGGNFPgW69NbBv3U1a83KpWLqpDm9U+2N99LialwBmuPrj7IxMhOwYUesZhPAteipaIylEHLILK
DkHtPkLeMNumHUUZFc28YHCdsdTXwtRoVp5asRmipZu/+LAYeE0ukBarltLB2nhFPi468adxshcX
F3tm3byk4HjA57z+tOQ+B9MiHD1cqbZ2VmhL0vAQxpKbpPESzD4JXRuJHIUq+6+kEKOfVE8DNdj8
T6+d77rkgfUmnpVhy+8tSWfVQphqKzMLp4l9qFE40QVzqQ8hlXIgdzxQiuxkAXG/eO1rR8p1FE0/
3RsSBvlbS+MParVWUwaHbC7vqhmAM/8SKjXFMQIwzZJdx+IPAN2/3yP0KGZgOuEoru5VaWCl/Y8N
smchxBNqilAXw0N1d9Vn7xQwRrQPu9gC5Upg/zhFBBOXlQIBDcUHS2soFNOJo4KlUltmbzci8FiN
R/Zxz7bUmq2htyOrssoi0ozj7S6erFQVQswsNBh6P7aLbQXB6ZThYdG2Xym+bgljNNWsy8K01+EX
sbE7fzXb3LiRiqZ+PPBRwClRBaXNIAcYFHl/W3sa+7QPqqvqjJJ3XpJgVPaU1BpRanvhJkD5/TGh
NF0ZKjhzOfS0DVAHUTVdcM+pUD/6Bh+P6QO/cucN9ygupu+iwKqupIM0uZGLPx3o8N/NruQX+V01
DJj3lM960Zns24WhjMXJrShJYPblH/y1yS5VgM1J925zjOaLAAfTI4XqizjYLre2ZoFBqjzRmuJG
mGngQCiVotqT5ygjbrK+rtUMaIrRRVUV6EuOl6pHYEKIpkA37c4tQI86B5hAqhem1MOtJ8/khtBb
ZxCkH4F3kWLQcPg0gHEADODH4WZwAY8/KCt0YG5VTf6be+pxIWJLhXaSzeLNSKyHLV4gRHQaz2vR
lPHgrJBstxa8+t9T/KLUu7Hrey/tICx/BkXiITDSJnAXDU/vnIe4bRio8bnGuYkC6Bpw8AXRIrWS
8VZUi800MyU4zhiYpVzQnAdTgiumMh27FaXb9b6toFsNAtarRa9t1FwvRmHM05hSckrdcKE9r4ej
dimiYEWC5HTTj4LaeP8uazvsLk1TFyexRTl+v0I4L+3CJI4SfkgS2EdVT19zlFiFNdXvM0Ti9ShZ
f+bknBRvjR2ft2P7J9aQYELtaQ4P7aLDr4jklGeqbQ74w/qDt0851aAQHlnzNpYQLzaZ4hAXDg9c
HLkiXJBEjSJoSx5513IY7UfumwFfjFYghOaN2A2wIKO85JWuyB1fd10d2Zf+seBm8JhexxFW6snZ
RStq4nReYwZqDiXdP9p5WHjytzmXryGjoqetJ9k0nr/z2Dt1QeNZ7zy99Z5x2zhbpl+AbFTXW96K
un7TRn04YHSvp34ntjIMY6wi5WiJSvzoTR4qVM7biaSxqjKdJq1X9v8Qsgwckl9AMobQ02Smz0UA
qozkmvOv8za4+CzHnhzWeHmuLbq0H00FiraPhtvLTI0bZHDkDBxKslYIFOLVHMt3umIP/4xl+wNH
DxO8RU6ZXhQJ+AHbeeP/bUmniWrNx+wkiMymiu5LZDFg/KefEahm26piZMECGAlo7SejVpIi5ewm
vXFe44jWCftKkk+THg4OgQLe9/1vhzyKgOn1d4t395CewowaGsIuIXfhcO6hUdd62oweRBLeif+N
IOnA4Fd1EG9KccBU3W78mpbyemu7EeKLQYxQ8tVWOGIMhYbXsN4wh8J0ZXsBtsdvSvEKd8hEw96b
mIxbg3ibcwtKTi8RCbsnJf1Uz+5V9CJzonnUBGIV6nAMpA//g/iJj/2UgixMXsncdGawtl1TDzHp
W+zJWq1AHnw5SgX40lIDmwzIDnwNFDnDhpNjpVutYGKWEKnBA0Qj25pSpjMbEL/yDF2X2HvRVuAR
hcpC/XfAIUX16QOiFMCRBibhE2MaZAjnaMiJugmEIc4/58pyOPNFi0UPiDD4A8nKLADKir6x9KJs
blcx1Eq9S0JNV6lEV830fK4Xs34Sgl9SCkHiUGR+36BV0rilvnNY7sKU/z0JsrXdnipWe8ns+i21
EaYCgJshpi/VJcIKbYRzE/R+y5Co3HaR/noJhr3hR/mDacXwn9z74EfdG6sahZ+WEBPI/jfQSwoY
7v2xE3Cuv2pL6xBHTH4vOoM1blXP4kmt867fV8udHi8zBCp3XShMiftevn7izOJ+NEpe4TrPXBnn
uNv6fvoHrteKIlBe8VMMr1nzCSTOjKmITkuJxAmbyi01yS/1ZwaMVtZyNgROhxu+S87m3ocbQa4N
8j+otn/KB0oCJhftNnbnQahvzkkWrHNZf9IbTTj2XWP8LoBHp0/SyS1g1m+jfJjvNdzdFe6CuJvs
gc9kc7qx96qMrrySGFjXxMOAFBoMnEKiBGUomdC0KyPTMcCeHm8LXZ/shaRncDS8FPhOmTVZjBTk
ZI21u3hmUHzM+iMSpEeDZ4yXZVd1H2wuT4IC5p+qnsP0Bu5DiEF17H0LWwCVQqgD3eiWczCNT8KL
OFShJ3nsKXQJI/shQ3TIxcYq8A40TII7MYlh1GNQVCs23PcXp66PPBgvAAQykn+RKsz55EhqHTTg
J+wf8kevxTllOsgSG6X/Ur1usds7fQfiG27MTLt5+1nFUIcgNKGgZR0bBfRJZfXImDsdfiAZvXZu
rBCi7kFT71xvS5nolD0dvxnuHc1dxSN4qx2EC/5lXxLBQOJQIxo09PxVsc22Ik/k9Fp7ILTPJLFS
zPnWOBMam9SkSpeRZuH227aj8UHEarEDebFl2QZsDm82168s3Aolo574Rv1FajTCPZQihRsrlClg
Tkh81b+EqV7QBo3GFn6OfkIJBZ+3X/ZTIYKwGVaSFfo+NZoNX77jJhL7I+qNoqf16VlH72j5au1o
iGZ77wogdxhyVBMA9TS/hINXo7hhivzuSdElggtkXplZpAx640B85dWTZJFwvhcM3oTXlQE3FbGF
JAm89As1kmmP6ReRMyqMAvi4TboodY6FWVQQNgzLdzhqVHc37LWc2mRGLBt57FFi6QqGcnWRr2Gb
y7xyH/VeuytpfvSE71ssFY7CxHwkdN3L9orJdgG3XxHy3x9NrMOz9rhUOZpK6tiRQ93YGyJ5qjT0
9dM4R0FFoa0AXrMzoszX9+V7a5QEPg2eYIUxBqnLAdHbkg1I8mMVzMTl7RMfuo0Q6zT0LKL8vWxp
ULaEXQhWVhkKh6h5GS58od+WmtOFmbLv+3XsGgA9Y/MQ8TnpPFco1CpF7HN6MdZi+y5W0Wa+HlL9
7nGIbm390HiZCGp3xaS+PQQGcBBy9KqcgIGMYWQTMvI53NUp090LSg75wieMyI9GTJemxBMDUu1y
QvhfJHGQzvTi7dXGAXElpSovrIPnhpmF0iivOU0sNerf9nysdvKjRt+kfrI0SvxZsPw2mVDJkyUs
wDaAD8s9zwJpUE4+S1oTVTd7ZXvUZ8Z4BlJ6RRK0PjF2n++g5ebqkvbig6YA7YJY/W2WfMiQ6dt+
Ro5+YPm35r2P01+97VA9kr4R3kHkyAeM93X4MaLZMIHD0VfXvuWWR0zGqdMUWjeQfE6ZtocT9FSJ
+unyLkNdPXo9GKqlzHxK/wHsxZ8P6qbtbldnHsRLZRmODnVmkySy6PHzN6mbipVIwecPfVReDKeu
AwqRujXdBg1f0EE+eF27K7U+53Y0dG/oxOveKMa/Ik5HLZN/MSPa3Ac7df/S2yJLZOdchBqlq0+s
iF9Mg6kGdNFpIb88pzr5nQFlNfEoo8we1P8wB3MrLPIvU3sicH7eVKaYHg0yOLIhOj4FCmUnpIus
IQzzlXxHoxwaPwdSb51osIdQJLahzbiYkLPR4+tx+e9ZEPcPgIK+1hKyQ3cVORhcZqm+f03S7FtP
BrACyzwuTCm3J5jCUM3P2J462YfaftIYuOYdfGq4SJlaZXcEWQ8D2mt5sdDXkRl3P83xKNwnEFyi
mI1MgJo5UmOX2L/WlzAx+2IYBqv9g3nIrXKl138xYSr3qm0rKRQeY6M9go26vlBMRsJoUNh8PTAz
o+qJv8JlnJJ1P5yCtWaiNL5Rct5qkgqHX6jAGufvVtgxPMZ52JsQm77DijbJdBo/xlvtEPmVJWqN
oHrdv+kFa5coFj21M03+1TTbHLd0EYzLZZzV+aybekcQTc2QQ/AMvvHd4X4gbfcOKuGvRk+wvnst
Dc/KHMR1iCqGCggJTzRpW4pNH8XiGxEjr6ImO+uCfG7Nz8VmqJUYR3FwB+/2hcWdSjy8swjvFLIy
yjgLlI9Wa5OycQowHuXpSQW0UZ5TLc2cD0ngUu+rjEIdwdmMdzBqs+MNahy9hkmwkcCHQdOJjICm
aqNgY0/sBjao0UwKMrESnRVfOhyuwH0f22qaNbSDYCGsjPFir8tFmCXVjFUwNsi7UbwTR0Hj1pxy
+UTe33V0KMjNnHhYwDtyAEvzmTitXZcREnkL43GWPXK1SlQHdvsaWs5AS15dgKGv81e8HUitwM2N
ZoHCj1lFNsQqZaPadSAs+Q9Aje2POaVv9cJ4by2SFl7dzufqWcKmLrWHDIBsjE5D5dm93gs8d6la
QnLpGhaQusJCHENAVQx6UueBhQktBhSpmdiMz+2PXw6k5mbWAKyfUOIP4MqazkrhoBX8PVKqobiP
9VtGZwyMxdzyUgh5GGu1UgeCT67J3gGaAC2GJTjEe5RdUzaVS4V2kaEDHhhJ877t9Kh4X/a/WXGg
HvbgyjuY9WN6NcCIq/s5Ios3uqM+zVaxpo/U41Pqp1SFaW51bwEcXDzmoDyFc/xDejuPQtgdtI5A
qXQY31zMg3WZFO5MRhPioS83b1L3JhP3RZsUsj7bEm5kiY7pVaE/qW0UBF0gm2ngU2QGRkOTgdyS
mt93XfRfVvqV5WS4iLFB+IQl4x+OYu8AZ4i6Hm0ULcb8+IYwAeyRrNkoVxKiAaxWWHNNJCy0O0kV
ZmFg6CyJ68wMUO038I+aeAMNCD3aBAAfLfA6p+/3lboib591kvh2Qcjz5XG8eFBwd0RJe3fof/L0
wWQ1HVBqXMnTWZ96ZMNeF8NSWodHPAwPtJB5G5WYo5CSee0GVbdOG27AC2Rilpi8XSxDLCnJPyKQ
vbCHHVdB5zJI19pWAUt1ER1hQOjptxvSMhGFYd/QWn7d5+WqVRgqsQDr+Gq+iFhm5X9MPOeeSojq
O/xp+TpWGDDstwEbkJYld4vKYK0c1BYQ8AU2q3lMsCKOQ3EbMxHkw+ylLraOn/HaTRlulGdbBFG/
DTJw+h0pKR+PtA+P+WKJkTsYUP9qbcAIVkO6zXEDeft1CwPzPByfOwrKpBzPSYaSTFX0mp5kj3rR
xdXTreb8Ip7Ua90Zq4eYlvND9W8uJq9Md3C5BUDNNW2NkrgKv1bhaHiVj8XZOFpoOzt9txKgjNK3
3GYI/DJUIQZOvI+fENK4M3wtJiUZ3oFY4VdNL8cc3lFH7XE1MfKYfm5yPP+YLwpAshUBlD8Eq0+Y
SNqOlSBIqg4Q/DuUGvaTQlFUeekq30B3ZC3GrcLSRXNCAHMDjHiRc1r+/zzTKbKUxbDMU/V3sebJ
dVu06I7ypu1PevpZWSPOM1z2a9LvIEO6alUmLciqPWujPjnqYZgPIbY0wSHVZn9+m7A9EyLmNzuy
2Fizk06YiIJwSX9xq5LJWX8BprtHlbzTi9yYxA2AfatPKZuQLKn3UNPmtlLiu3xWdjTAAPrnrNPG
7AQKe5kLbHwyJgFLDiHUHO2bm49CbUxV6/uzAloBE8HlM4V+B506szQe2OE5vbNxL/23P83whxxb
rl25HlQhatPBrNkzd7/osIrdzSOOLmLrirKMqc8sGD9Ovjv9AwhCVL6ZEYsbRXI04ZGj3hcMUOhm
g4bX1DfiEdYNiqUu04GfYakdgEgN1WGE+N3y056QrjXjvxd4AhgDC0oH7MuxLM8R6jh3flWjicc1
lBulUCFlrKt34TTD1qVazSBcBepklnG/uUdNiMDVudt66WQx3XvPWtd1sB5jv7rzBbpW4P83Ndvw
Jn9rOSFPKamH0GNK5m8eLgsLZ3SxPmVlh4QDdQgL7MCY1qxmyVpgmi2vClhaEv4cYz3ZNp5a0wnq
12ojmFEIWQS5jNxJOdOguidmvtMGhvtzu7rpiLgNy1WBANGiWOyNsx8uQTjajjOc9nFFJK+Qc7Wn
piDhmE6TWnc0UCXnrLkoTkdDM/5vgHvTSGEQ3UqGhpz43jIamAzy0OhWDQHsHW5LRVYSWn1GmFfB
1Crtkj2mk6z+TC43zg+YRhYJQcY+vvCIhqX+fcf4K9VmNBSAKvORPZVSBumM/5UDlan3rXWNro8t
e6ccOOV4LTJty71Sqkb4NVQZX5cN+TeDB+vHfnf5u4zb+BSA1HXIpWmTdUL+QvfBKAkonpXIFlXP
RICqXOh8Ni84IcNzr6okVu2a0pluzsICK2l+QP4xI9EhPJMWiBPoBZ1ZBbzhzR+8Q5WnyiY6OxdL
gd+gp4G2x/wpUK7j3uJC8YQenpIrtMNVNiE4PQDG8B9SFZgF5NSVKZO6FL4RPehSVUbi9A/N9PO/
5PfAKaiEaTaX4Cz14LJshhTxStZfbsuwIEORkLxsgOUjJmRUuwgw7f+sLS5HwllFJnItNJIef3zp
YzWZoOgGjEDpkvyMSfsham3xj6/2H37RrNzr0g2rpndTvP9dzPr8aPb2ABe/4mMg5oQdX0VFLiHO
v37AsFICZsIPhjuHIkpy9XiR9O5Mib/l/QCn2d+pOfzcD6pnSAjovs/DBcTZVH41SNNTvS3PnY10
HJ7LN9E6G3siLH/4O2UMRYG9d86R4BjcRoFJrRkpJnD//1ZcyUeBtxS5vnp3ckhQA5vhl5MH/6vF
viwLNWR0hoxw9uImfdz5gz6CNpOki2dCF8Hw2+8J9FVWOMKMDpMnV7Ti3v/A4S1xhqS/TM18QtKR
YquTG2DFbimAAyNZrEbXqiHKFA9fU+NDaJ9yoW07TS/ZnC9IW2Bh55532EUeedol4uk+V4DZl1JC
WxiZ3oW595ZW0LT4lGT/5RI7yZKzoP0s6Y39kUqs0qTbuaXvrJLX0C28LZsA3/2lOiKwDvStdI7r
tmMZeUDtG66VRYFFLQD0HlFHmUmV771YRQP+kr1jfWfyh7uKPcyh+IJV6WjUgC/QOf9GZXCrhrTL
meakGwX/JgMcz5yHsl6mNgSgzulKT7hqqjLz1/zK7t7x9KxPRkKs+a3vxlBS/OBCyzc1vsxX4vJQ
Y3RAVjgW5EqkDyEPnSmdJ7jqjSOkKdLw1fO7YoBCwwoR7clTotdkO7lifrHspYiYmi73NJbLsUrL
tCCz3+c1unuxfs7RKbv7eYiaFpgdbk4WyB0V5uInsa0nwsibF9+s7326kAayPVlgnJsShmtoW50k
Yyi4Pu+4kaSmRjlY+k+i6HWxdYx+0OMmlVLPPiAfkwd6ctMrD6RrtqX5ivSIjQ03CdFWV8MrRGHl
oSBHCRjKjDh1wYlxu+WteqbrZ8uvm2MwpDv4Pv5sh5Sl7eKgAI5waaj4tJxWFYzVLLj6QeMDEv0q
SBlbtg7SIJ0Qa4huZoZv4KsbzV2aZGUy5dXRhM6qMvDUfVUApC2rj609xvqwL5oGH3wMxk+WwsWZ
RE9g15hR34kaiqlAZBzz3LqQMn30TzwtM5zV/rKYfLnEyCl8WrWjqmj1RmLM+HjYvtzhAh7Zqy93
ls6IDsRAGxXRazt7VKpaQdFHD9QQMm9Bi6TDrTyi48mhGFKb8MZ/hdlWIZvq8pvzK464WZaS5FgY
ukzKsPOZzkbEbnDt/DlwAdwNVIShFACzghfLYj+gsj13Yt0HBDwzZ01pugWJW2bcR8qtdNr/BpeY
9jwPXboCcBr8aI+Z5cNHCK2APAKdVUQlDKnEupYBaat9IXikJ1loWfZTgeg77weabkZ36pkh3/7j
ioReEWrrshD4xjmag5BhYHKe5bXsCVX7xU1jx2RUyi9Mcwg5XkoraICJlVSsIwDRahc/mh5mevNP
7h3h4JipcZszhfXzQGh6HJJc1n5dGoeGzRIxqKu6cYZnPUivnH2Gzv9FrgG1ibQppFzFf6D1+IVD
Ly+yZb7VO3kLvNj4F1AE/ix4FAPMRWgceW6jZj5FmLZuicrjhaWdH7YpRRxLOJw4hkjpbLpMRiJ+
/b6K5oOO2jw7ZQkGS4RrqTjSCesmmpYl+i6q0O6DrJactkbXoePoHv+LOBx79wsOLwD5wq+zIXka
m77pdxPBtDi/I3Zr938jdotlqwwA/O0ijlO/eUs9TVOB6q74kzWU4dZn7DvAI2bS/y0jAsB4zDJU
xCdd+iEsZEeNsNGCR99x9VMIuRrohcxilaPQsuBLFkroZNZiMuxAdiQXy4DHNDbT9rJe7qHL7+dJ
Nte32ztoknO/wG2upUoF6ulY8Jo7OZuo5gGaRfzM/iMD32WTvAIkkmzk+g6z//BQ16NBTj1+z7zS
g9yy6TzQq7NhmzPSaIV6gublIcxmKszBxF34BFKMauRFd+aUv/g8tiatit/4mJzVC1Lpv/PFFzq9
ZemAJSsIj4C1uRy4bKuY1ncRwiNn1Xu2lOhxzWIBE8Zj+S1yvi37g1TXOOTw1+cqW3idVFp9bCab
x7A0HiJ4P7BWYc9sShTnOjuEGEYcSHddw0/EXrqcDkLKDS0RRktaKGPoF/DLMxCaahoOyh+WyBde
CyrO5/PNsRdGJr66cgxLHlOlmVWYNGXRrsv1Y/ZmTxeCU8UiYNSMO2iXOyphPatPYGakGyiVDBB9
urNRTDQqhM/Moz0ckA/sPGrqXlgsZ8w5O0Fdev3D9DOH3YVOzsxGnspMn+C3rMJA/I1an7f4bi3x
PvItPtJQ+9qVUYhuxKyYmVyuaqHQhf8Q+tMkBk6G5ABU/h21w6IOOJfcDLwM1u4y8g5Gdj3vEWnL
1df2MbPnBl7zgAuAJwJDw2Oou3XeSdedfJ/ISC0LAu4lxitwVqE/H/6LkZwe5uUXrFiIGqbrZtMF
A18R0eX6FpPOq0LBcKa1EMgdYl1dg4iWe6M5abMG6P0oKChaO2euyZOsrBdAkBz5FmaWSEBdMad/
89ypVFFnGYI88Oe37UueR7d/2sO2+8MHVY+IDL7jqoTPNGCdg8ZxHiCxwb7/151osMD01FR4L+eF
ZdazkYTHB5Z/lbYDLNkBsy12GSxnIXKrfxF67kupIzOCYCe05OJe1XFDg+8Wj78yHFpp9jn+Y5Qd
yv5t9OdD1JOx5uoV4dhuYRoG4nWu5cSv6fPHS3cInucexGAj3ePqfIX7n2njKmVn+2NyjcHBhuiR
0xsSO1unLf5eWRM3XlYxLGXCXRpvehrvG5bGOtBNDAOTUAImAiHJ3D9R3MTxpMQyK2u+vwqL2SMV
o/k/UbjJCPrKI9HNPOXFNB/SkI0TTl8XOF2ymoHPlHELMaRCiy7VPKyuaf/LEjwaSY44TQpZ7CO+
1lsKP2ptykUedArwQsMtNPJ8Up0UlgAh75rGU0vaDAEh9usXTl/TykC+2vt2Qikh5B24d9hmmRV9
9aDy2SoteKcsuWuf5i6whnKrkCfyzSM7Nyz+JZMlydYUiMHyfMSxc4iezZDk2cGz7wlyI3MbCoy5
1S2BRxRje+ewHEBvp+CHPxQaSeR4nKrW4ud3zXSqQINgXfzmAGNMutO7wGPckyUSWuiuCFCXw1ai
R61en16c2qdqVQbEVYnX0HbwcO0BFY6CxCd3PCe1t6EqS94cOb3Fjt/VZI9YVFiKHlYTY3R3x5ev
Y/a27faJdICXiIQTjwi+2vYxC0ww0AZYGdkef59Kluo0yKosbQHlxgb39Z3QssmtJKXJ1rwjANsq
5oRYMgmgdwse7JXB7OYvMcV4o0BCOalBr2hGOd1XmPmikU/AcVEl+9+JfSm4omTXb16TRZfTOdGk
orQmWM18EFGgsFYpwBtRICF3KlqZ14HWhpVsQYNo9fRcRlsiCmmVOWbH4Q/PQxnG62cacZAGAA+T
sIKmxWTvOtOEA3O5JxzvKzIjUnD9tDm0rbo+04vV1mWg4YwkdS7ssTknDXzJ939NzLvQQMy/jeXw
iMdIISr4Dfgao7lcTpFHhppiilGdOJeH8mWYaF4CsznBzZ715zKMD+3ogjTTk6EmvwCWnkYeIPT4
h2d+k4rdn9jjFL4Vgwo3BY+55eWSjGQ5FTyCTEQv0Fip7takqSJqqUo2tb2Aw3acrZc2c5CBuySw
QKf/wudgT5lv/DvNFzYjaNsQObiFUydsABo5dVfAjE7tPWobaB7SDw71OKJW6WSxl1r2uAMeWfIh
OAUy5rd5wUPoX/SJ8+n4QEgCnEeq2DHxjLXU00vahIYfgotWznjJex0vQusFwlaq2pbLQtxaE8o0
guPghWU4RnWn53eRZipy1UxRAcNIOML2qrw9cqilGuqGpGHExX/ZzSH9itxeXB370S1Myz8mBqPZ
EGWBJTBV/vRoxlTkDC4Gnum6cNQgnEMsYMnQPPDbWma8gqKJjG9YBPPVjgftv/nkYhfqEu8/LKaR
EtMElwS378lDXCZOa2ML+fnQNpgp2D5rSGoChS9HSpNpEbV7v56IpBBhTr9l6Kgnvps3tl8cIdAr
crR/K8jIUlPAYCaMpy3XV344puqkABLPYeiiUalKn5Rc8ji3Rv8e+QOow18W9n5TYd1hAnyI8fLZ
cSZ4FRSCbdtPuYDGM4KCYwB3zTyv59mzP8UzxnLDbzRuKEr8VzoGdRS0zR2gR67aaq7N4SHZ9n5z
cTkCT4hZArWCQ1qpwIU+Y/peNhJBKPiKQGds5BSsU5ObAXENGmsXXWVS8Z0WEk844XyiJ755C54b
pseFWLArpjuOEwZdyYAILFl7kD2NQ5YoB5LiRz/wrXLbK8NF9D3H9iSIMkh8SrnXufROT4Jrh1DN
91KM0UG8FKX1sgzVD2RkBHRq4WLV8YUHdNOrS4j21m9ABtDz7gBAtQ1yF+bIKNaR0enS3DK3HYaM
2OBtRqJgqA1ffJKcHiYARJKItpZPJHxC/LnR0ALNP7fuEHpOUhqQL7hVmnLaI7KTU1GPs4EUjHDm
ehP62imdbP1Vy4Tc90tKe5DHOlgqvTsR7d7Qzzu81mIeazcCtzuOFH41pOIXzSuKIaCWAJBo//OA
QZ+afAsVKE6PZG+QJvRGEc5GWHxVfOYFdOYMmqzakh6ZlkTwJ2eho/XQGrDKHs5ujyl7CBSfbzUb
Xq8obCPBnwpb0L/PSU4jztNW3YVEuMzh0xfqgzPtKMMWTYDVG9S1d4yDqGVw9l5Ph+ZE0W8E+cEz
PujqVTZw+84S2c0svfc8jFDAz24xBdNNudLe6FwhW9Huvl0kjB14egF5nNqc/YJ90Q3ReCCpIWza
TYs0//5HNWBqfUtR9kqDAaEggPYWP4r6y5YMzraTiptvACRMeK90jiAJcFiKfARhvxGRjsvtRS6u
JTfmNxtvzI9RB/sz/Hs5pPo+7GT6DkWoqqR6mpda8t23+cz4D62nEKeblZKE++NBn0wILAVwbHE2
SWdE2upH0YaXHaEiGrSWXBowwMhfFZgFogQm3ElJBe3452921UoY0At9bjMFUkGOA0mc4h/lv/Sk
V8hMFI2MkhSVrjelSfhQO935l0iiYeBShGlpkD8HmZhXYWSBsIUdMJAjCYXECuY8SSUi5tz9LGPi
net3c9/flnXPkZaZ4O/cpuXp7wSjvwBZh7narVUsuS2Ci8IBUUxF8Sdyyk9nzrqPaYVCjRl7g9mW
//woZ2Yu0o9mhrKMNZmyxs1B7McdURlwXTgkzKyxbi83u+5ZLq2Y01Ub6k7uT2glpEK/M8+q1Nfd
cj5PeDz0X/YzUvtHy4kNoDjFX9tpH9lXWtojRQneO5xCoYOjXyZG2OaXhfeD6GLVCs6hXH5VxiBt
4u+TZH8y7YkLc5YTS9b04HXaDCE2ST/w0914RpnTaLHqgtRWM/TXQGSRlqWydngSNlGynpNQeZQR
MHq7IWhwQgbyr4Bf3fou1xgO/YL2/lGKALeVw/c2gxMQwTZ/qAUurnalAys/5aAK/sQp2s/6E7uW
ROAEcXGbxoVNkezDA+Uh8GgTCjTRay+xV7MmWDI4YqNovfdd9r45NPWK9l9R+dU45uB/RA6CnGVD
a+jRhDuZ0GE0NXqgtEsuo+6xZ43qDfTsnjUlvIpf4bbWOdwK+yfEd20C6CLTzGyMrOpPumIZakxu
Y6GX4rtc2E41Kd9MLpoq0gScx23MZQcHLUenddEJlzEzx691yB/cZt8SnlV6pYsy0DdbVGaK8opl
wkN+Ocafo0h9KAY5Do0FzuwFkhegrgXo11Z7JZhs0n4sz7XNGiR7ST9Lb/rAmfLl4YBHbAYKhaGM
P23dUieG1cvP+7W2dxIiPdByKjrpyPi0LAMZ6b68bc4px2ifmyguIxTk01ZNZlYGCbNQjc6IkZAA
aT3aQJ1t7Qshl5vjtsjXKVqmkuEQqtTV/WItyyUT4bKZ1o1zDYrYOFPdm2BBfD/2Ac3AHdTecJPk
npkt1gjFO5fQljXR8L/7HRv1AJb1kFySC82kn2zZ6OeLKzvpYQh0eTyhDY4f9N57UOUWOkQHKoLU
7MSLjwjIzXu8gtVjxxtEsYwW6GkN7nFq24RrCv/fWkacBTKb3G+go3DTx1pHQcYwXo5f9mRzNI0l
Q+RwRcy9xBuC4poNVWYx+dOcGY4eSof7z+qi5HE9mLJbro4JL54gdl+LRGvLl2EHOTQVjsSatoWS
I92Si1RHzgCL94+qw4+TOVtS3CXVfxQdjsglCayrsRBwWy6JG/T5m3ZCS3IbyNK18mq0/f8nr8pQ
mJjbK/zie4TN9qXdVOp6g3b7SYVoH2MRKyz8KZj3XGJ+5jVzHUOTab6AltM+EeunH1H4ZsB0DJYn
o44a6tb10yQd2NegoxslbeQTke4ipjqE+TJk7wWKGnOCqnBjbCKjKoS9NFL22uk6xIAlHGNDE7Rv
jfJP5EitH9ccqDGyeRfPPsc1Ig/VE+1xfB34DXPZfTuDCXwceeu674CDzqVxUvm7suXsrbZND/Pa
DZfIHzVYznEIs68/Jo3QfHVbc75IHQBI3ExFo/5NhoNgDea7VgiZCmPiqy8riNtCZXhKdYWHBw++
3eEfFIR5NvdgBBZ3jaQ0WxvQBxWm30mJdEqQ7Tt8GDtV1p+5YP9baizXEAGiKq6LdyzfiFDcaFjG
oNlau5EkqHGvtrpS57gdHozXp1FBh6yAt+k+tamC4aCiSQ8E9JmzHefAnXt1M/0rZOoJsuH+Htva
B5v8Kq+1HDracUjSNUmbGf9tYpRUlfE5Iwro/BXwGvMRjGNeWKFXIUqnfF3y12nWYkzul5PntS6H
aCbTJyX4nh0QgeUy+WOi0zg4MVzMnaIlcgTfrJXzev+qbVDW4d+BvI4mnSTOg9DZeCt6McXVcDn0
i4U+2mAO72rUMgIfpubdEQXHQ+zxG4fEfX8uU29IeYIoncAs9+3OTGqAecKogXSJV2joS1RlTrD2
Wj4ZtNBGjeOEa5l7v6dzRffsuJaPblzHfYGUc/+Sk54/h85MQywsfHneI3OfvCNTGM2yYQEu5QUO
TEZJU0L5Q7hVlxksYJtuqsMpkabn85BOvz6s7i1jzO0KJEXRSDayCteUcDcVwFY6zN6b+smJpFYx
7Qsfx6k5oLNFlUg3jWbgVpQVCVbepC9nof3rDQkSMczEEdLFUHl2MVsIZr602mor+vKM6Ra+N2d1
xp8U4IJtb1MQ2ksA8N1AXGUfnTi+Lxr2wEfNtxfntb3H/qSnfXPGz3WR7VerZ9yTLi03t3VzLMcr
4yumiFS+ZH3GVgL6dHIwY3L4dv23Q1saOCCrxZWfROXHji1MHNVc8qUOZ/yUaJkqIEqqfAoJ+zm4
hRNXS1s9rRW4VmkN0MaF0Op26FEuevzArcBvoDaPdYZN4zz4KHxBWgDlkn8VXBAP7p1S5RJFYJ6n
tvGWt/8HRd8DqrKJINZqYwWPaZ7nrCfO47scRokJvozcNql4kOTI/P67Nmw6N2FMO/kxTpExmhQq
bT3UuneRrTQR3vTzssxqWA5C46KUjSvjJq0WeyxvoV4tbLEVaNiiCR6Et1ipcmBqq6AfOQXXgMlG
M64snyDn8OFWeeSXTI1wYD2OY0p5UmUrXL7TivXbt607w2qzbxV5zvEBgjUdxANy0oIIKD79Az6n
5ipIdmOZyBf9wxlNQHK3TA4GyIQZfRtCCPa5VDvo2gsafOoVA9HxKZI0T87zsZuv/+C3Vx6SL3eK
6+gc5bVlGIK36T3pCSpxembXwoR6kV5gaovbBfOGERtYd0A7gize0A0tAXIH8EahxZbdbXrn1I/b
XII5j0ZGlDR77uILpiDmBcARMItlEv9Z80p5/WFXTGeTI8/RAs2rAorsq0Nj+HFss7TcNVnUX0NO
lUshQ/uTkHcD7f4eYcSZVapsvPxNjRRxwSPDBmVI25toFz+HLjwsdBbjirPCYtiXuzBuiIOa3YzB
JWXlHgQ3feOuFZuBUW4ZrfSU0FjlYo+vtccdmLkFs8oXcl2J9P62UxVXvcqrGTA0Jx85kjUcrVvy
N8voRCZIN8LbGlzsqTz68FbAA3yjZHxOz1OtC4BL0CHpx1Xcr/0jSzMxG6Pg3bwUvx5Mp9ZBqYWq
FoXxo5ahk0uFUHkmWaDc+sPLiY/SJbpISHQ1aRZ2QIW59HwbZf2rIPOc5gmXzFLMUXMfktmQTjLD
pZZzvXogVHbJP/yhy/vlUysBi+9VTkO/smvCavsFTQ1Zoa5daw4eScV6gkulhdCxVotgk2ZhzDJ0
FqzLPKLTfw2lRfagPJiJbWsBiONgM02SMc6Ok3+XXCxGlyOHqa6FYwcyLTWoqejVEv2+1ycbN426
nnJu9kQzKRRUO3nLRiCLgGGYB8TfxsJKrQydd+M0tZubK7eTJALiSVq57dGp+6axb93eQep0212D
jISQobkr+uwyF145h4wz7L9g7coJKuCS4rXYrzTRl4AfZn1uNU7Ko+Xn4XDSLNMpCIsBTDN9LOh+
i/C9l+Kt82MigdBkYJxM34RRnR0Pcjh9Kawt6wNIXeSDKF/QamgaPitIIDOBdLgzQOMZpHIPmJxy
kmjbpvTu1934y+8SvEyUHSDTt7C61grwNQRjkN6VigjP+i+ZxoK7OwGCW22jFbSwj33a9yRtUU+g
L4odD0vUf+Mvp659KGNL7rumKw9kneGNF/w4M30YCo2wHsIMbx48bor7B8/M63jXBFLFm9BEQDWi
gnf/yAvlSJXFOCvfvZVcgBbdxa+kS35v4oXKRmnE9g2SJsVPv1rbN3BPp9GVhEOctSzBqrHubaWz
5/ElYCqSl78FODtgS11ua8dEpSQlNmESF7ow+Z02c8WQbhg+T0n3oq3L5Iqct0HSaD5/bLhhP8VL
CkcjpKt3XGIEpoaGLQNOBIXpYmj/3r2hDioMZxIb5lGTUbsz0UGsNokBWfD8Nes7SaOj9b5LIQwj
4ry60ynWXd9Mj5H4RB+2ufkjUowpIwMLDhfoRFgsOwhmsfTYkGhriqy3oM3ow2ccnBoyStMTxV2C
71EkM9ZU7ola6yeRFPxqGxvBYl1TMg1YSBTSJEl9Vaz22SUK67ZfsHTUN8k049UooMlnwPfTd558
aZTvV9GWXKbrXLGl/R52OiWPlB5EJqlyut6sUUpKfxHvWNP2Lg2ndcLdLr7Vvs79Lgyc9ZCxgqam
QLY/4BBo5yZHohcGkOvPv4AxqiLS3dw/J6Vx2Gjwidp29o9MiAM/WdjGOID4K6Q7lCagEt4iRC1Y
TOIheU35tDHJAg/d24nVuaIP1cFivHJjtlkrqdw615/NYEvT2EBXxPvzzfcB0J8K3NNciQ0i8BiR
wNLGoqTYAj0A+jIjiGXXXVShqVYrnA7lZaDfRURT8kU7XzxkErikezhscDcfyKXvRPDG1l3xdNwh
z8sx+gHcBcysOmJyvGqyhOnsh4SPkO3xST+2/1cmp/ncRNzqZ8Fpjd/7En4iKrZwbBE3i5kWhNf9
jHwMX6HicgMzhueu5Mf54yPmwMtuuKjT4kVpmonMUa3gCmEOaMkEJIemm6zfx2M3EsyjMegSiljA
WDq20vGHFvbFbd1KO9yzlL686IDwgWcBhOVS/eOZ/uEJkmPU3Zp3vCFi1oGcuQL76Aqfd4q4eWNB
MQTHYDVkQG01h2gRvTzOEAjhlfgx3EbWsqsb16vQChamNN1I0qikRYHy87jPMBirHYtgjdpmfOEP
kxqYkCCVpdb+PlU741WdWKnyIqbdynzWvvmXktArkQkk8R5+8c5rIQ+sVRm6rPfk6EypTej3rTxS
TatlxqMalRezhUIj2PD3UElBI+sEo4JGjYW818AqVmg8PuzcyQVz2vye9FXyUt7F0jx3B8UtIKGI
NnVCeCWgYdd5f8Bezv/1oUth8bfIB/6OOkm3xRgjjUvm6MF+0SNqYb1TAkd7WDZsG8BPT5LlqOT4
Xmw/lzNibhUflNg8/+oMMsRQ5k7x3JBPyscFptPjbJS+2Rayc+W4eIdTO/rFhZstfhi8cIbOxDIl
1/YQuixInhafsyYLsoTtc/U0n23gN+ao83118clxRNaLD8ZZfF6CSeifUzdeaD8Z0qLR83/5wPhY
9ueUT82iCLG7fBm9o8zYrQ+jIZjEpurx4MATtxIP5/X+Y7varGFCwk1r0s+f1cFVX0lrL2ZRtSR9
8O1PwIDQT2Lu1PN6AJjjMs3h7uEDVcrglI3y63VgSgL7JQLJdCY3CG2W4U1USANidmlczIdN97V5
E6bDXjMlHNWmUSIC/54YGmi+dZepNlYMuST3gRWvhFi0xDb0gAe4yLTxYMOXRSHAl4CTku+g72Z2
JdtgNHGQFvqHIuaCRHjJTOX1R99NvtwzhkuRmVrEzPc5WuRgSuspN17r7eRVCK9IUnDXf8N6BQin
VG9/DFoEH6Zebt6VCm7j76yt6WRocP+NGLyx8M2Kl6ZGCHXxNnEB9/E92r9TYAWkwXumqYz43aik
B5AjtcrvRchewtLdFC5fSG56i3B4JbwwNmYAZHRRkKadT/2JmJKQAnGXa/04hXVATCtDrlmoyCur
S5FlhaWn5r+Zju0dI0Q6dEoVs/uWyg6waJ/M0k9xq28BGnsvB6HxSpyaFqumt06lBpNSoXRl3sxl
gox/0rkHj0nArgM5BLQhVSUpvV51zoMNy2insgx6J0pu8hUsG+W8P86INtKpCdeLt1Cq/8QxGlfV
m93IIC3n2TINcfYj1fhbxLjUsuMVuokKTKU02ceINAXyKQZjE7ltqNObllTty53ZI+TIvVMrfiSp
gWr86VG2jfCeyU/v4W31VK5M98P1KjyKTWIDtpbRyh4EA5aUFz2Uv1/j7nEIK1dqgJugabywNZRY
Dv9+t0jC+QezLt4n+JDB3Xg1bZE3mr/Kc08bJorzuMmDv7t6GdqvjybAgVKfZyY7Gz5juOuFxlMZ
O35WnaXle4QcAYirD76YaYngOe7X18sQQWTqDL59TGZYlxWPWDU+PDlLvGs/U2omrE2JCNAQG5eG
fEAkIs/Gp4Wee/R/NBJ+kUgiqRWaEpqx89Ch14/VdI8Ibqvo5GInO9fYXXEKVsXjgOFaIGsKOZ43
e/fSjQUyDM+GnLVP2OG4UYYVUG7iGipy6cm7IcwQUR4EUvhU87BaxaO7dEcnk2VLG5x/2lmICgBg
cY+nv6rHWXxSl3azDIrMClY2d3vnMx/qs4P/Kn2JFhXmb8r5rVEtX+FNx4L6jQF98JGvgJEnMXxG
Q9zZXmf90oBN0Y42HPdrtthR5GPFUFnqle6iKCUbRO0/w8lsP4WpwJeU4Goh9nZY9Fb4HBtMSsdm
cbv4bzdmgU0VerMkAeSpmFl0fWRoPaAnP4YByPnbIIArmUeE5EVXNZzu6W/Hiqpu6H+swbNfZ0bo
eQXolF65JHA6FigS+r9L69PyhrZ6h1JJ30ovxwlTkrg+yiNAorIXpHTDtPb3q7kkQk/CR8OlNKlV
eFRf+Vis1C++K58qsggsX6HxSqj3sjtNJ86UT9c/qrazbwZEsAhIM8Hl+lmgfrH4DqMX+gOc64W2
A/sehsEjMTFAr21ZXqr5tmIaYqEncfh4x74caXQfKLTgbfwuNlmXHPOLSOdmPG0cVeyka0zh4wwS
nT+7ivDCJrzTFVI0RDtveIlPkj2FsytH6na9EPSvz3TpPjrmxqMt+FmtavhjXn2d+Le1iL32mtSO
GEHUcKODL54dSoiHN/n2rcC07/RHJ39YPe7gz/pIXIcTZ/NQgeHznluqPPMjDbnt97MdqcmIc+b3
WOEawzMoYABJCI+QShE9cvQpsf5F/2zHBC4gLYO1fVtAGDEwkAlgCoLLLhARyvt9HHNf8hddXsld
zSgyLcQv+foRFENoG79IeSan7aBsgAVzvix11ENGSsLBjO2tqeUJkIUQ8AP58MnJo0ssm4CSjvPq
Z9T+3SDBVfPx+OWAyLM+x3it1nWABHqgmpFX0S8NGGygd01rr2qYqk5lvrqeS6IpLPHor2FkdNVm
slWAp2DYVVkp9qFz3A+KJ5qpRjEdj3D5Rfy8J6Ip7ttRzeVc1f2NcN88+D7CCsxDKI2wM1IS6vkq
j1pyRXNUmkj5G18GQSnA+hGFDk8prmbj0Imli+Hu8wFYIlAmCC2sX3IwS6oHe7OrGjuw+zMprYIc
49Nir5+vsurhBgmFRgwUTEs1aP1TOZk/0+F9QYv2Kf9mMX9m1m/nfF7IuB0hlZxy4HVC+03nC8lV
7M/6pUb7UWgX4RZu9XHJ0DTdC9CbFGtbA6cTin7AYkwUMWFRkdiWQDLm7KEbm3iN0O3ssFd/qzO+
hpx+FNr0ivjjEvNJ0VETnF/4HsCgThtpT/ZxmVYe1w7JI9PSl68vFUfvKX1JOzkxxpe14k5ffR4M
1nnqR9y/u6x4fWdErQ6PO+YqSjNmuGyfFeBz5iOXzMU9YiGBvTf9jpcHvJOXFSEszlMkiHsA0D8D
vIxL/hB4csOqky+Ea5/rP1w3JfrCAJ+0EWSmEQf5QwKGkgeP/OvOCu4s6gbGYGGTdJuZD78OJvXi
vdGI9rAqg5xMx1jnA2hUtiPCUDnvcDVdWe7GVIA8nXKLdQ5jCW8rFx4j8v4lNDpwpgbKjyprDkeL
Yrt2ebi708HzSDApba9ZH+SEw14Tu+WSdt1ivm4MxNeEwfaef6VkXOfL1/vro0Efovm4U75JnOBz
VgqSZ83oziLPEk9nSaADKojWNTypZyG9Z+eREgH+x3gnytOrOEHzhjdphvcSz6uPUOT5BXMX8n3r
nPhRxp6h5oWCGB5YqbK0v+Hrgjj5FU9+QpmbpbVV9J89TqQrTBAkn6RH7XuquimiTsp7nWyQkizZ
CO/XbHYXfKAuVgJFj/0BJS9LrD3SUTeTRzM+dltLNq3Y5f006DxQl9j55zj/WU/kVHFe6aqiAJA4
A8qdoBzKFkTwDVYDIED+7chOlA8QjjXxfKgFBBmU+O72m3tSMQsnYNIU8v09zuodXfCvActNWbLT
Xm2km1I1gD80xVFWPuqVzsVbeNRa/TQXy3cmujQB1/pS68CyJJw74TBd7OxoV9Ve49TlYTSsLpro
CcTO2xIUyudvrjyEsKHm79E5dIm41AIwzCkBHZxszn/toH8apY71u/uUzl5R4qM/kd07A0tbYmlH
GDaaBgrTvn9Fwmtd/UgGpkQZkvJnbCid7UM4KSo3Yc4vBayzax3GQQg5Pn0s6lbxXo/J7RdM6nky
n94lDexiPNCYI9CW3GRybXuh9Gjaax1/Cg9jWaiNFwDPvFpQ7uOrpBAhHvChfDrU0h2fX6bbsfP8
SP5uuzxqyO0Aa+XysAD/NUJx49MXE06zqkyVwEusYgmp2OP9bSXelUxmkD3zruDN3GM6scyG56IV
P3ViAdaJ2OHYOH2n6UI6wMSIT/OZ1cOPpTcwPRHkchB+f5iSTz3GQX7VnwGIDACSUtrqsOKuRKru
io+kyvWchJXX32uMiIkosgZfFm/+cTsX8ehPTO8sD/njIOoOGDI8gER+lpP0lMuFMd3W5C3/tohH
JZQVJdHVMtOgc5Vpf5nxKVA2Jtt5+K/XnXy3QGWk441QM8rtuE8syRHZ26aUVXwmfO8HUZD8jWGl
zmoxe9r0NOBRyPv71l5NpalawWWCRuYe65m6XOg3/dbcB4++3c2S5XZlElHQDNYc4CJ9/wMuU7Zx
ppeVuixoVx3IHu8Xlmp4kwfmfl+wxkb8ays2NdQ/bdt2fPfFBnfz7IKkBlUsIrZoATJrvTjIXbnX
mWLHliNBn3M6ySt0Q+9/b1rGSBvq8gwJTCYDSzODMSxVXuj81mxA+4t0NWOm5GKgIKMzRyuECwDf
W0+wPD9hrNo971NV6MauFlPh0fWgz5bW184AcFJPXnVCq4Em/G8mgM+3UMaanistJUfiyGhi6CVG
4WGHO7SJMM5x/O0exvIUaqY8eo/u+tPgCIxcYiKZU9KmrqwdxnIrJFSF7bhIk/CsKMaqymAhV7Zr
6SYVD7yQ8N3FEoI7F7Z8GoroPILBXR4ETuLQbazoUzMQeYElOUvwABydlcLgj5FOvWO0AglvA39l
s0XypbrBK/ixgFyJf/wDAwB6u5AFvdSMCVekcaCSSn1ZhlMaTFYRJqyDb85pSLAWMx6jgaPVVAop
Va+aLOT8yRZzud1Y5WSQe4qa5cLeq7Pv0VqOQZq8T2s2p+FQyUrMqxVUAyMExBYEkEQicVkNYi6y
tG8oMAhI7hOh5ugD6bnPs3JZsErqZV8yS2eSsaDzIgEl4yVCJwe6jVfv1I+nAZUm+/mID4bW0swQ
yZscFoVmoAxCBYHFEvvExGOXd4BsSHWcDq9qygzkxZAC3e5dQI6tgXyQQfZUnoAFGeO6o1dZKklh
QV+wVRRjcFYPegbtiaRy9yWKFK168lcEXHVtuw73rDr32FkWeUykCnpS9GlrWJtF2H/Oy6LHruA0
Y7RUiOgBsq0dKOWCd17l2O5GeQmPHPTkUOhZ+6I2gEHbO9Z4JcLMdsxNvwn0KBGkL2406ZAwdWuV
DSb12SNM4Q7xWuIzxRpgQv3ot4T/LoV7AYSZnPybwA7nODVs7wflkUUXPihq1+DdbVhVLFIOH4UP
2BlzHwNSObuRKlWxx24Sm4cn+Y9jYGWGG38sXdXAj1/AHlTOE4z+b+4JQcKPfkRIj5CB/ndhIBKD
xXtD6omr0X1wjdPS+JRNnjghnf+JQPqhlmEh1u18VPShRnJg4fMoNa89Ohd80WZzlMQyyBajb2wl
eZWDVFEQvFfdG83SPRfqtZw0VPPI/0Z6336OL9Syz0anp9YX1C9VwrwDVSnahm7tOdCuOZLn9qcG
4EN+J8Fvk2RSiztaNVYfSF3a7gwjxBVkuUCBr12izSp37WULOEUfhPybgcuyappgUysMAas//tAE
EGW/0idgbuVduSX4c4oXpqBdzskLTxS5vzw1s4OYOPul814rIxkPIrKYC1inwLMGpVikckFiuBzk
Rv3NcZRLOCeXY/sDTvn84wkgZNTD3tmgHdfI6OQnOFx9a9cJTuX8xPefdHsV1iqRtMrVdopJsjEU
sUaDlwapGZsH6+PY62somXEFAJ3TMULLfGX7NnYaeEMaJvur790dfivujycsdLssBXLbpFheJoid
gLKu6XZkBCHjxEGprEwbA0gWSvyOd6i3yr0dNxaMl/4lJZ/wY9SbnMo+1DnAFt1nqOyX94f1hhy7
xWxswOQxlpkKjndV14isee1ZmDFfFZPY5EqEeeJd6+if/S9l+JqX3oQPCiO7HoRI1AXJn1EWL1jb
T5SfYMR7CYXmg6qW5Nbr+clwGoNtXcb193JQICI1Ipi1zoEaDeJxBknNp8wCRis1XbaNff9nmsG2
wvhI6Y4LGeCdi4SNdP3CqlSzV5Z8tvyzmaOBwBP38T6Np//u2xwGn7AKemZe6U0mGC8sGK+UyonF
LJkmCR2L3JdtywTOjQ1b4z+PXQL2lkIV8WCw5w7ikOVciTBmdYT/ugNguL9InU04po8WKeiulnId
0PnJt5XndtSHEm7cf43X3dNzzBN82lodol3iiszWriCwX/6vVOXzb0QTVk6IWO5hR5e/PlVkBR6F
fl5KSgVBFBKkndBE3CKGC4UA1ptl8DCSD2lzF9L2o3CQ9U72dusmkeyltJWkJ3mNRHq2cFplbGSX
xQvaK336edACG98mRcm1AbUe4zKSvzmo0bV7DyZ4yNo53DvF0HgDwdj852BLCWXzQwJeViW2CEhX
BRpzOlYRzJtwdOFy6ZZGxlMohSMkyi6XbFNSt0toC3PK6PYVfElMd34GJFUG1Oe4rmpt4lrpqP6d
aAFU1WhYhhg+u2M2TpyC7uhvvk3QeE8/+n3HDZ7hM+N4pvDVsEo1qNBnPoOF1yAljrhERAvBE5QI
2YeebeDZNJWRMSry3AsIfz3TXsGWWHYW3JtzSstTmHqYv5YrzniXneZ/OWZ9IEc8IxSk6XX9CPSP
w6C4KSJnHja44v4RoQ4VlaOfYxR8Q/tfdfAYMSGS3vSowlVRg9IfWYL4e3Sex2aeE2wt7BqUX3Q+
rIEisB6AX7ZL7Y46ynHgZgGFZlWMcdeUMpEomTHSSLKDvnV3JDiba3R3TxIWSgYXeTfaSKbyROTT
Lv4YxdOM76BliKuAh9waUH+Y2n9o20LsuwcPow4fg7dgm6qcF7S5Peisy90bOV0YdX4qE1xag/mX
SOCaZrNxuWCu5hiiuVjgEmd+KJYyXUndvcvXwyFkX4896MAbMv/fF465O7rVX8JVDb1S0ccfDhz/
4Sh0y1E47S485XahFy0Bd8pmbNkrdAy50x/NTpqh1QjyTUMWl8KnE696jijNgRnYtnj6yjiBCCSd
VvHu5feckfT7AlsJSdaQG7Xn7Y4krsaj/tDCwvXaYYP7WZWopAtewb92bDw+3eZN3y434uU8EX9Y
EC/mTrofrQDvIItB5J8QvZ+CmrslGP8b3M4iND3dvVDrXtckS7JxTwuTUkD/qjUNEjZbVUEsiUyg
xDV6CjL+gTw5cQdDo7dK/GYmmB0hrIYCCrj9SpH2GB1jrNxZkIvc+BUrEiok2wqdhNewaZCUqAin
YoC7U/kCowUNEwLdSouN7vZcV/hcHzeeNLQnPMPPYoEqk//Wa6bg4ue2Ws+sp/tPXbU0HI/FRaz0
uaozoHQ7Nasc7tqAbluZ+mMjLkeXGwudgMyukerhDzVITA0iTs4Bv/G7gHlC1bOZ9Zlt1kdsrf/0
UpH5/emuFuzdVIWcsSpSU8Go31QrJMYiWuWQ1i6AWIXzmu9i0QY3/wHgWPFWmZPVkW91h0pj+vS7
hphAxYQ77za+oGLHn/6kPsUSelNMx2vsrYC+u2bQ+qWndyTXjdbvS8XuPKxfIDf3lYqtEa+G+ZVT
a8MZkHl2jgo7tKxqqLmgi/dpgNB55aFiTU5FNm8OLNo81Rp7qSqb4+JGdXoINZcyreFxaubgToif
aECntnOrfZrs+5DslLH4sWp591SQoTPsHjjdw8pOs3FUFj7mw1b3VOOVpciPLsbZdr5xQazXuboY
ZuS+Ns8A5KEmDVoEPVzQ+nPzLi9m0vUr8jDl6y5ZIWr7y1eAqMSXA9yP9rlT3kmxvGCIPgHvi+91
gYMbz0yCbufiNRfJByDJtzNQai/lDFxT2VTsmPnBssYk2Qew3xnHZCz32325+z977U06bfNTkD4H
PxpSErdG4lCMLcVj587bpIY1TfAsDmuDWNpaH2kUU6c6uceDZEXDELLZ+zWJzVaAb2MpgVBjIBdK
qcugAQ+jizp4ofYrBY9iIC0Gfkb0M2sYGJRsHvBwTS1xm6AU2sb/NhGFx+s05CDp78nShfrRlSIM
q4Xtz9VRDz0TLaDr3Hhj1PN5b5TyffcApSuXhPeOAPZu9ONB+5svqo5muLLLuJ37APF1FUTs7ez3
ZhZkl745QpzCCIy8n8N5K+R/itnwdvnvXxgUUMhfRD1m2FE4ZlROfH2vK92vyS6M8S9W2/qeOKKU
1nOIeoV5hodoZaEGzfLbN65rh/zQSFnmMIkQ93fzIRECqOP/o/1/Ww648IN2F/7RZZ6fhFWVH6mR
YZlA6uTeA9cco8Saym+zz5bHvUAJULz4uv+i1KLSOukGY99u3oHc1Mfi5gbKFC/NzphCm1IcseaY
aZYTvwvCoEAFMss22xJ75oChu9t4H8QA6MBAoNokzrHGWnhDOhLzkY+J/vw3CwJgsPWO+99tV3Oj
VVak6Nunjy1YtD5/qVMcSs2JKLoGOpTux+y5PI9LJAUdU6PW88qA7hjSuNU0b+21nfikvY2P5Ezy
xmzGbr5s0hkRRF87C4x+YlimUcBM4AmoSo6Ia36KyaODrIRvN5+B8JdbjCKMPGyLo2pc2N1rdi5K
SXetGvRrsd5TRciLDKKJcDs1uasVMuERLS3nlnuhqsUswnJyJTeARd9wDRyFTIy7bPJMCapEka6N
4lIbb5aDIBP55G91wFsdZR6Oqwdxt/TWd2XzfjI+zz4Qw62m4kpLecirPvklFoIeeDiwfK1Qacms
uOAy1/lO0AaYjZSPt8DgHdA3JAFpsYhwdkbL5EmiNhrln8Qgf05Nio5cM6vyUE7CJrnD1aIccXRv
NVAJ4N1L+Ihx+LMkUmdkI0vYb3pCoHtPS9Ck8sB0Cr8JvZdbV+3S+XYZI+iFCkXNnul4vHxQEvfy
U0FfFBqiL92RpnhO4li3+QQHmosECECzaLNbnqElZOgtG/mAm6y9aza11g6cBxouCt45KUijnRLK
jNdh9ZOTtjgk6KWsz7QlEifNHPJKywhtJmGd1PDnxk6PzgLH2weH7wQ+6KwmXMjrbL7KNZe8ifgY
MhBtGszJ+IkYTyQy0D+/hre/oW3oqyXuDxS2RhoRJNZpEdNiFVqpSaYNWjwJZYvWda0G1EKsi1uh
c2Zlxc+6139qWPwpZgTb9JVivMCMFtmVWTk2uqWOPfQl3tLO9/NRojBlxIZOVo7cJZNmbGZgRN2X
oYHb26TiPQOBN5k4cJ5OXeevlDEhw/HIAkjWuWIw74L+CNKB5lHDjvaELWB7NUwZywEdeoDXK9b+
ykui6k6UOAlOcsmaWoFbDx2V9n001dS6xDPnYln6OYQFDlWHAujVNSrq/dz15NkGaw6Xcek1SIVG
b1mMoRlBrLjtIHOU/A8sgns4nxZXnb3dCOwG1Z/J+DaV2ipJ9MXXNVGu+Xj35f9T/6c1pPlW0N2x
gKByyWeFG86MmI/IHkr7VglFarwGrxm4mK5H/Aby97Lp2VCLRyJscnO27j3fv1MsvXGS9up+MlGG
y3Cdy8PAurRPmk/P8JUpO9s9DNFy6ZoRgvSkB8NjaIalJdmazFwvP6ddFtjOT9yMLMYBv+pN+OO0
cgDuFtyvlcIWjnAizitkzpI1UnZJXwM5MpoRlkQYhG4HxdjIX4evqAkCESUsXFk+qx0DDUvvAHCG
fNS8rHObxNo/HvgiTpeKatkfbrEF8tt6p3BMbUXzxCPFugCFYIbHCXVHCtMQuBPswIbV2gK6kF16
X8B29xI3ed0ts5OQGjR5oBOXWaN1jqjhPes7KiFCnJn78QeJ9EiKc0Ik3onTq8sc9rXrniGwCM5W
ssxQ1FVTrz1uP8pPGqT7w7uGiNe7X892ZkTVlpvY+jEyf+P7c++u8YTQgX/MqaGXkNlA5WY7yu3w
c7pzgAcG+X+mJLJLIEtT7j704oM9ZI+p+udsEyLV7jpbfn02jqSdolYvfSPV+s6od9Rhtp3Q+8lh
BMpcSv3DcTZaslf7fHoRrJcQQ4BxD2AUeTLw62PkgMGsQhp630zfY+cAXqgszoNhLrZaq4i6+6Tu
ZvaryszWZp4ts5oA7+ZuZ8/SCCwpyltc8laQ7Vo/I3NkdQDkbl5uwM64wMJqmBw/VHBgkFt33CpD
NYHqv47PoIm/8NmZrCZLO/U5DNVvw4ayIaKKnaY5FzkXS/R2njeb1Z/hl53Ol3TtJlMcEaeWNhOv
y3xaI5IpZcwuKyQG3GlzlRyaMgoVsAJ9mg3BvNYF/ikI4NDWrnMl2y2c8J7AuogGXeWjTzCHqHsw
dGzaxzAd8LLai5cdsg9C+uFU/5iqm8ULauN2OZVDj6aX109q7Ojv20ITUnPHS0AKNhecK5zIukUT
VLM54IAiyjXMAlYQR9/CsKdW7kDUslT+cogM1MtqWdpRMx5UDmr6t7lqJVeO6ex6WLZff2NAqIYE
/HpVuWXFtkyqfB06/8BDrhp709okSVUpB4jVHT/hnAtRYED5GS9N+zO1WSqPvaQPKF3nTIs/nVq4
qFYUsi3j5YvNCc3jTW66GZRilxJ59oHT1y5UwwZ19/CFli72uRBbyujp+zTbeQqMS/8lR1N1dPlH
3zs33P/p9788SrT9GcnoIVULsKCmSVYXSCWGfAiFQlL5M40AW7IyRXpQxSYBTLCWtrw+uxtDbfoB
W29I4wwAdw7/EdEKoi3IFUfs9nAbn80wfzMQuApqDE00noyktrGF5yLiYRB1rbwPI54uCnX+4LUr
9BvF68PyAGjoe8xydRCY5aqTMoJr63s0gonQrAnb20pdFpjIXmvU1/vusY7z1WgYTPgz0vsgCnxi
PuM0cXYl7kh445SP4vzCFk04LUg35QOecPn4Y97HE3hlKHLmC7MzPjVLzk0EmkFnHT2pRuFCbUEy
s27KYrcBZvMWtcsIFGlTAEDlpfKFBaHwJNvpTbz/MOkdRRerR+AI+wAGFTuJ6obAFa16qcEVNoE3
kfOsyq0XX/K+on7jmK/Q7WViI4SW7MqHDLWnFkR9NPIb3R+NuZXnDryXKOqtcuRJgbCnd61156wN
y3+PCVJsor/Y+1DONq8MvJeUgXWI3L8pXHuULc/4idF+iV2WSgkUIpywTsS7e4zefIp/6bc2qqoc
Gc0dbic+0dq5y7exP3wM2sq0XsjvRoFUkRYF6xP1CSjAsHMLFnSSSLlBKZZQ9kHqMbY0mQE2ctJi
F5W0Y95vGuwqX9HNplfVDRPnMQsaTu9AW5pvCzmyFgkPYc4bDN08Cv2vskTk4tyTYPpBoLZwEJ/Z
pcC0Btd6hXip/DqqxBWjrp4OT0R66pZTYLLFwKMaaUVk8V6zWyXINwuJUb1Ux+ZouzMlB2SuwH8I
WeToMdMd/Ju0Du+yNW804oVhUveEiE3E35K3O7jkzGQibaM33pojkOOg3Vj6n/1+FhMs3PqABBkf
byphI6imgidfZrQJjljZdVPi8rZDDOs/7WhWLA6gjZ6oKKJQHDfiQKyAh3Mcplhu3OVsXNddVQKo
FQ1CnG6hOsPu+M379Ao//8cXxDi1FSgi1g5ReonEZqe/0V5ddB9qVxd9P1ydJuX7xGHH4jdF7YPZ
LtzWmtVW89Snwv0fIGLZrUIzGafGhBfPz7MFhDIwIrt+Z1SssKhVk0fcmjAfQecVU+piJWNY6Fws
KwIXyqbeFLBRz+x2B86KkXQfEDb27MnZBx0fTFfDnAyCOeyoFlCbrxnj5/f+da2rQzb7R9mqbINJ
aLR4gFhwf1JS+8OMDtgbaMmr0ofLfqCcegfAeFxB3cfkhlupym0qiVJhr6cWqxjGgBfpDvyWHR9s
SkiRuJmxv+dexWmZF3innFtP7bVU+DiV15GSYppKXYwn/rGgIKPoRrsUq0eKAjt/M0x+WArtVrhU
4Y/cSPirpxDQbnh8mgG36mJ9gz0eYIumR1AR/HpT8ymku9cEar5BvUgG/adQGdw/IA3uqwY6t93s
6aT+0cACrlJ0a+SHTFtW0LqCBz0BDyYsAJvrsXPsDDp7TrGjgxw+CZGzjz1qxIMjtqGMVEGo/F7Z
V/rm8bghP84Zb6gSAEIQ1rRHAkQWZPmuGjk/sZpd8UNp9Fn6qNGbMQCbL5dezoyME3HCPl74apbG
X/C/Hl/2W6tstEJZH1E4YZti1s2LVF4noZsfgTGLI7pY/Cz5XSzzIwe+otJgsbtig6rTpa5Sh3vD
ocH6A9L0c3BPhTS7+FfkR3Ww6cGmuLmfzGjRlDimsB8JU51PuXxtJzErzjuQenE3V4omasyrU3L5
nsPe/ozr87Ahz2ZljdDw+xmrGxjc6vZm5b7eJy8pZtfCWNUvA0ZnJUafYji60XupbENFxiKZ+Dri
a8RvhZkXaU3D3Vo2mFN3khGIugEwd5oruM/CGG4y+3wj1OEE3Dn16I+b41F/soG+VjHeBrA2Jfp3
3+KlpVxNxIXRz3baZpcGxeS4WV01yAYpnhc+/uDpk+yEFdAcQuHWbrh9c5ZRYujXKPf1c74J2aa8
9AJAj6paGlyoAW3m9HrM6nYmPA1zMRhoMLg90MR78tkxuqu3Gx23L5y60NaeChggpf4jnGgFdSM7
/xz4Pj5EnZNoTc4CSqgv/3AcgPZWSdvY4CShPCdLLOuSszUjurPheLZ/wLsHWtDuCyUiIRiIdpqr
Q9i6q7ZlsJe5pRzFPHuoPhIyGW2W8x9bJt9oeqCI3pWpzswxOKBThjPerwZJ7l4uPfL7tUveuvPj
MJCHOf699XsILHaYg+yF5SpG4u669DjOdxyU2ex81N05nephWWvGBeBBLHuINsr/ClmvNBYW7I3u
SfwIPj2RsdYkPq22IFR0vsJbsyOFxNBRFYMGQzl9WC0uxrMvnDMc1FW+i6K0gT48tFYGQOeaZiWE
czcz0rRv8L/3DmaRLUVi1Z+dafwzZpQz8eCJmT+3ZAP86hIxr9Nyxv5sd+2vOAFe6TGZM7sOvbIR
wf4ZbjDwD2b4bYZjzztaSwVc3MUoGMNFQ0r4vGUAfX0aNWUN3Uwfvv7UQMOfieKUfmyVzQN2RGq2
P3pbDn/M0S8OCGphCA59OrghpMjyf/e6ONWYZLo9xu3hOqQ1zuezYDfvsay/ZhA1iVnsBceOs+ZZ
AmQK/+5/r4R4zyTKR7VK7BNpnK6WywOCc5nG+CcORtkD3NgyI1aBZmjUjWdzy22ckJcROcci1Fjk
CvJayc8x0ziouf6E2P6x2HByK5I0f5rFVY3SGjXt3E6xNC7ztl8zNrSQR8JYauXXmGfpekFlt535
kS8Mg8M+vB4Vixjf6Rmxz/dtCh32s9AASsyk65oeRFJoiKLgirJx3xG0HPnFi6WOJzppQAZRX+P2
GhyLSqmBBIhrVGKiM4LoJaYomSxNWfeiWsDR4NHY5SzMqIuKvbtyJO374iInp6p/O5EjRO4RiNZ1
uWJTpz/NTCZqkI/a3ca+BEluxQSuyfhT07AVHqnVtt0WxZtnVTIdY0ekyse5tCf7haR0xKiv3EOK
eABnGX6R/v4r46OpbJcn/gZFsBa4JcUIAnkCxZp/iJEJL7itg5yNe9Ryy7U9KNmH4FBwUEF9L16X
m4JAEqCGqoNNMPtci1sVQWDbg/HV3UWY8BOYvm5CwQwPnOm7XBnH5ufuetnqZwgdjmfizFi4WmBR
jacrOkkeTh0T+9nqTuyZePs1Sc6tFYv2KMOpDuCxztDjPaX5autWC+C8ogHoBFTaQn183TE0/pYV
KocQ/FWMWNWEU3IKhm+kMOGd8iLrscUaLcUtEryIYoyMDmGUADhEVeQY3JF2dHkaK8g5TZ8E9P/w
wL7sshIeCD8KwLm+IZ3i6IrBXh3Cq7T+GdGGeh0429IvstLdJoQjDV5V+EXTvvc/0OJl6PdH9cRA
VfFcV6Qw5rRp0dSeN/ihNsv4gI8iEfvdB6tAPqkpgjfS1YlDre8sMImHEINVemWHdciCZ2nguOgt
btHegLhxKX31sUSHFaFJOINXCaDOpfK4fKWYA3B42REP5g72oex2GF348HluVP+STbzWvk6zVxFs
+/wtRa2xXQvszXduWxfCLenaC8GkmnLhE/g+BsSqLe+xLStOy0mI0YwRWCi7cevbs7dsEJ5dYePE
tokbzwz20isFiUdL1IwN1bo69FaGSgT6aG7CiI6L5BqQcN1lyujLs0b+tCANMkaklfZdFAH1IoMM
5MeuOC50aZW3HyNyTPGM0cEA8tmnghrXZmQwIIuGh4iFkXwm9p6LvzTkl1u3GsMhC3LhuNpwdGk8
xpvB/LccrvuNDtGGrhfCShDgSaQbzCQcwsSYQnG8u62dwddy0ELh31HgM4OewjQP+5oCBs7TlO8s
VayH5APAdsQ+4A8Y7Rkc3tYEBopVFGmN1k7TVHAzoAgF2+LrDy4r6Tpfts955G0h5/pjRPgYglda
Ul/XvP0n9TtFN/VNLF08m7+Xv5jSKY6xeVfqD6+VSVkm5EL9KO2M+u46YCjOqf0HxMy9TGR6UTkG
gqBVtgn21SB7m9yu5M21rwTQrQsBbhlgHQg4R7m5GZx4heCMl5CPZTm3u2mtX1Jk5jJ9K/T6tqu6
0sUqTFe/WXKo4amKznwEU2bNjHSJvjCLLk/nzH4QW2WA3kjdcuCio1QzBuRGBwrxU/GbEQNvOaXo
Cmryli5r64MM4pwBmE9Aq49H0KwW2TtUf6gkmVXcEBHSNYI3zYHWR/qzTwF4JV+iv/LKfLuvUi/F
VBAr7CVqVacFGtnKLE6BsX3c5YNKghwwI9ODlxbTndMFvRhp8OUL+PYgXBpNJOd9WMIkD5RA2oeq
sHj0Fcar4CERsRNdsd8AaTekWGaPVMBu4rI+UxUBPTIXSFPoelIYyuZm5g71FjF6NDgq+JcV4Jzt
T1VZUpXDxxEDckL9BrYwulI0cPQE7NlUqiEjJJfnr4Qgw5qUbyseCn2L7InWuqKCXsRcGzQPN1W+
ABpd8+Dc2KXhe9vdQZZtjCq03NkIaGx9i7dyVWbaOere1wQiqW4M+OXI5B5b4baVHy5K7P4laml2
atZ6L0/HuNnBUzmNqb24c7oJyiyFQknPZfZUWLirczol+jnhGFzw15B3U1JExoban4BPivtk346y
jFL4zL5n7idpTgL7AVD69H21vEwiLcaL/8L5XWWEbJAnlyRB9mOPmVgpTert5YPPh19+JhcoIeCE
OGaw82GkE3KSSln9n69pN5p1ZDtab4Ub3qF8lol3dnsaIl7D1mEkz2vib67CerrU9AAxpCaGzg6o
ik/tBcaL2DOqeKEkKTlG5DbCXaXDJnclnq1902aIQHwRh4YOhSZBveaMgLWZKYSn31cfm/3a8T6b
M7ozp5NweHQllmymjvD7VrSMdw65SfTasV6CFz6SMyjFnBKanA+MiSChyhyqer2zd2RtmhXhjbr2
+ne3Jc62dRS38BBR39EkkeYF/wKdmGoPcKxdVJkHjaIYKGGS+RhIpUxrWJ/I1aoEw73D8j6iD8PM
wz4UFZ/2ioZAjPnxDBKOSDA7UYW9KFQzm10z+7dNO9UfyOLuQtDdsOE8myaRihI5fa1inMpfdEYg
BHBHDIUzRigC8bTYP1fTmKzMcwjcwizCiyBB272fOT0QzsyVW3JZJ3VpWG8HnPibxXxMCiL8gZ1Z
rfk2MoxRQYH2ZyYbds7NnsnPg+EQw/ObpztQnzgcYmQgXdqX/3TvdLHX73zwb04qITVetsccoi5x
A4bvhhPACq0vAG5wS6O8A6v1ByA6JAG/rEVEUv7kyWnWBPFQLcB38J9au0Cu0l2z5kdzT3Oh3u+z
n+HpswSRtJ1FpSKRAzK7jJ3CyahSZvg1hsFR43UDC29XVjRlQvhUAtaYU+NxZ23gHhkv1uQpH7e6
M2dnGIdUN2CBTmkSh6JTJcLMPNT8VL8uCrRJXggs8Na9enGlaRhCXZL6zJ9ytCoyB0ZHEIabkHCJ
9hFaVaYFppIycPFcVMqAnesEHw9qJFvlhF04CFdEbkeHEGyH5a6r/oO7jt5+QfhtzguA+dO63tnc
VYPDLFD3sRcsAwPOG09le1vTpM0RjdroNso6BZ0ZKRYrmG6IuqLeeA0rquyTyadJ0vzl1syq/q4V
7x19Dxxl25wsxAyFoWEuMwUwzI8SX76hxWAELmRN3vUw01Yp0dwyNqKIa0vHhNcFrR4VOOLzW/RD
Ij/+H652seaOaZK7RPjtG1lFFJ8XcSqjTY5QmRlEpNBnZds2MpaVlZTKhmYVreew+TaMZFDDnBXT
wp/zo96AWYQr3Sa/kOVsXNMoqtvRvdFnIs0bpzjBcEqqXgiw8KmDoaBLGu9BEMmX5jv2/DpX+TYx
e+GyfD9SXFKNSkOrSkTQVNTEwHiKejA/a5rLSb6eoYkhdosKTzi8+2N3PP9qb19oYOkj9qCDdYX2
UntHjaaT2T54wR+55KU1DJIo2MsniDph5iU8k5v8ZDxsMO1zLhxqk4U5mCKSgApqzPEwvQ7z8/8L
9d4TXkqERzmz7gRrachB41yOAafA8llheK7GlrOAzciPVJB1IDKPT4Yj+EGUdOaOWpz6SzGLnOed
zFHcsmWRYD47PWevXs7HQWUSa+Q7ddSlk1ACUJQHpWGmyZAzU0i6U0EdxVqgWJMQ+/JYpa/EFpYk
S0rqR9bzaDH0/isIAwHlhNqNG9owquaoTygeG4fn/uXuoNndxf+BXuxcpUxxM/DS9MlSyy854xLx
yX1tHUoQqsXRMTZtHLeidbuqfPmjnJT8FlGAu0C9E3CaiVEqohlzuz9UJM73TwU4vACUbFvbjdG2
hLvBzJNMaD1hSsqDEbcE26vyhikHihkeaNVG+pdxnxyjdfXY25EzKt9wE3F1g9qgYSXEUJD3/bIs
QMZN77fqoJaR938DfQXPJFlueY2rZJzT0mDpBKTDtsoM+///4Oy7LLuG9juN2LJFHjFV1Z9seAuh
51PCJhevLoZaNaciBHzzdh+ofmdYxImhz04szDDosmkERBu3+69+Py3LyexKcjgwO9FtaBnG7Yy0
rFI7gCC3RZfc2loQvLDnTf33iGYF8dxPXu3YSlUAwsD+hDa6depC/dhpRfrMhLhayLTuXOUP0J8M
prZk05UaNmZH20gk2JCcDM6uR4T3iqrLPcqJUAnh6YupYQfG54ZxLzkPqEzENJ3hrJLjZXupZiQL
GazRvWhbu2dJvUlpd8+jlHDEQGDmwUd2d/wYaDbWbhTBFOa9mqD/CDoETT9Kb4X/LlrwDsZKBs7H
nqo4XPSt4bru7L0YKxv3YmtD8EshlnoLDJ8L0WoxCh+Cur3LcHThgWiZSIP+xrJSiqd7lx7j1LSj
iZIsgvKq/qC108aXnhoiLp2WG1VekPhEYd3GVvw04YcFkIcuqKqPyai01UgVMcJF2NuUQK8N1vDK
dlBglkHaJjPqTGrVVZ6I+KoKw/Tjf4Re1bxVv8WZYsapWEGMbKDndHd6t+02yz7CbPIBMvVDqm8/
kSZv5vEkDBc6SZFmylkevB11pxuwfJvhgtzi3L+I757NjNiR/j8sd9tjmLIUii6/2CYbN3WnbNuS
aNxhowCsPpK2RW63+ElIHMCwA/4EaEMS7nT61QUNx5TmsiMPYCsbREctWhPf1jTqUqyb2pImlwZB
RMOHz35bLFNT0rsr96r9FmJi1V+82mTor/N8n/0vevybZUnBIcYqA5ryADS7HF4Ixe4MuwSaIHB3
VTMNnpuJIwCTls0D0T8fN01rCr9ks4p2hP0aDUYEz2h7U4pxKAokvN7RiiiGu3EZQqoSHXM4I2EG
nWC59l1gLOiBzkkZqf5ZKdHD8Rg9UEmehWi7uiEOxnWt8UXvwTjVdyBX5rFRomLKNyCtspetMDJu
rfnvY8tWrssxR5EQHMU/F7MbO4JPTyBzif5JhuRAN5kcJvkg6SXqgKKhuccQ2A/egyn3k7laVRUJ
KI6NNrpKGihY6VtTasju8Gs1KpqYSCf4oLlssWqWCfCFeziXl+moax3nOjVfXXiGwR/YLle0iuyl
FMMTB27BfA58jzrdFMsI1fXbxl9WipKiXhjNbYhhKTd9Q0fYLnkg7CrpqjcGzxuJqpCKkR5ws3qk
y5ptU9PrtZ2gTbqi8Kwdy000w5DrHVRIwcH6Gz0h2V+W+4ID/FwBxmuMmFL2frfI88ppLvJSLls7
L0nTjA6dCZEA+/g6AXEbDC0teDdxU5mDdiLzKWIru2bUNElCA1ZxvLdX+gNRhrJ+3a9xVdocjx8x
WnhjB6jTBemikLfzQDCD4GiryduEhQOiymUQiqv+JnkHX74U3qvTzbIsBXv7xD/UqRA2ugxppPEK
GxXUE+QtQ5WA7/XYUgN3xrQSJb40on3iMw4eco6j4KpsaR9yffNZk4xM/gJ8PSb9yry+4UigqX7i
T2jANb+faaqeSyFugLq/IbApzMFyxWuNZeNKK9JzIQ5J4JOP5jnA1YzoAVGc9ILRsa0IPd0NvJVK
sZK0ojh8uIkBkGTNZXr8EvnHYwWcgKsUihgElKKf327nzf8kNjfon/p5mkqUxhNeWO24Hu65yEaR
m7DnWoSJsbC2nVoY5REOI0aK+xtsXpyQhMfbc6cz29+ofDB8P25yK6vACDkLIEDmnAo1eVAunmsk
Ve1AEuGOtXk7VrbX52YeNOD4waaHI2/wF1NZtl3MYxFaXN7Z6AWeacUjSx7j5onmjEl7E5aPPxdf
Qb0Ht1A10bUi3Eqp03qYt9M7esyqNjLHx6o1okFztbbP2bqjL/PF2hq/rU4Xi/kSEf3hEQrDH/s2
Np+jUkdntf/gc70vJo4/yWVN9517bNOPz5iwRNNvYH8jAJaVhlTDbWKMb8LUoY7X3u0oIxL1PuCX
gkJYzVX+4aI0rMl65StG4j5LZzj3L3vXI2u/FDK98e4GfIYrdjtIf+e3P2Sax68JqPFVnTdh5XKp
OMHbzXx6AlVvfURzU8Twkx6IF/Fkqq4T28hveevYpT4a2Ot2ICcmK8tEFtNOeloyrZxGXiYZEmrZ
bokV/vc7MEM+my2lKvKX6i6qc7UEUp0qnPE+qLeUGf9yK6yUIR75GPMo2T+NokZSTzr6xof7BnxP
w9u1fduLD6gLLIKPDMvpDqXJZuTknjbrjt3JDb/AkErF6NUWqf7mEj2igCILc+eHtgfIvpqRvQHc
WBuL5W8KiuE5IrYBgKofpXhGPUbosWKoEteQmH+xfkTUW/QwLQi4IevmHolYV/6qgu+74Kk7ROtk
ZbX42l+X4LR4H7fhsN9bHvIxREMyhn13844mKwZxqx+xKZL45A3QXTGC3WKkqqV6iqfu4cCYsakF
HVLfO4iUHl3NLgYVNQaApgXhzrBAJIp5qTXo7v50VVKnRZCOY6b4tv74nEZ+lCBwmH+i8MdT8oEy
cwbtSbQDZkCSNVr81ENXotFZqDX5uU4xIYBNXaZfllQoHbT3anjGhTtqXEIHrcLW/eUf/ruyDs4m
N7hDWc7Hu+4bTZhtKr4XI9dkqINnp8hmABelNmdyKkxTdrVpTcDXmgLrXKjnrv43ncTkXVvZSfST
lOPLvW5BX6/dBye3Z1UX2GVXl4iwVl6K+4SuU0iuTK9smgpzTw7ijzCvwyIbI1Lxq40JSpilCupt
EeXrFVxzhIqugrZUCXbAk8iRgYTovSxnVTdOq+UrDj7kn6wE9Yp6G+YrHiueYS1DURE/Mw+1Bsap
dOlo9MzqI6fL9lLOK5b04Bp7nswRMP/rQSySJ80xL6/OF3KdLDU0K7JfRxrdNxn5S4btwvvQ5ETc
ryMHJYMV+ittfomFuVWDmSTAjShrK9PDkZDwXeKaCG9PZAkeLCyBPjEV5YCW2SVg95uEWoQQHrvG
KZmSNh5b/kJlrAXRS91Vo1UzffJnOVJoa1kf6hJ+iRo90nlqha5HUaQ8ZqKoYkBDUoMrUVKxXxHU
YC7c/5hXfyAJd00Or3zH4aCsTZxV5E9C3UJkB9NrDe7a1s44G86gZrGakcT4YJlFU8qHaJPA76RX
AdZH9RlnM1W6NWsa+ibbeEKC4Txo1xJJV61PHU9JF73rKbz/NjVg1A98HHL8ZpmMxJEJlWlPUV9K
86KjyH3H/444gOjWWGwR93h1XnVl6za/CNrTp/a3O9tAYYb3a3YyEo+1G/z4mPf6OLLT5gBkJV3n
/wBsdC2NlylKk1BfiUAOxYjjXNJM1JzmRKoLezX0mKGv40CE0WPtaMeW8IgwubuIyd88CY6nN/bm
Kc5eqen7c8DTYZtwrJHuU/XvXC7K8TRfKBh8nJmLxxYXo9JwpWBcDWBk+bZnL5eufpHP1GM2hVsq
2hKr2Wtr6YZiUS6LQK6LrQeAbbtHFY6FYTlKEVwFUCUsh3sx/W5BrrYPfCjTAV0Z/Tmwg4pnFBDI
YxiYqCSZR96v2Joed4tR2NgxsFUL0qU0EI7qsXdrOxIxgnmOw6TYS/MNEW3Ojhtkv8DAe+Z8jp/V
fiDrdwdecfsDT//LjY1JnwjVZiKATWhATrOCzkfeP/Bj3V1NrsZjvf84A353bkrMXirfcXkgwnbl
gguNgATjGVIvwRjpwEu/wxhec6ns8gmUptzxzW+o6z6gWHrX1d9l5ZEjcE784HzzH4b/4eqnAr37
7YqrrUdbB2qJZHhOQZDPejfBWKetoqkc1X2Aq7UHksr9NbugEAhQzuO6uWmTGzE72Uh61H1tQBtN
glktb9wRTFC2WQiBnktpiStrC1sbLEXw5VEPrnRnEpd+EtNBh9oENv94WN8TaiRU7LdFq2dyGt0M
MqQ858mDPHd/KQEfPUrdg8qZo1j4MQYZGXbdq1CnVR5Hf8vryZ+QgGhIpELuvB5AqfolK5Q+nGyR
xPDbbYtoUSNsI6/VtrenKjjGwa+8Xk00GXoZF6D64aeRaDxDrXPfScYnKYHfxJ7ROGc9Ml/XRhN6
EGCymS3js4VVn/gOrbg53UbArlgtkl2SZYVxfOLqqMmk5njl2+9ufAZ7YzcHRWfuwC/VZTSm1BL3
g4U92pjtvEXUS+/EuXi9oYCrmiQ07kf9REmTfyBnVjz9ffD9T0z8XOe5aDHSdIQZvLeWPKj5b8F7
69WDPAw6UIiHx4CoZF4658swX1vmItVfdJYjNyQm306W8xCahDUvnOX9cfQ+ZaiRJDSvkXGZXeS1
g2byzzlLAl7kR/o05H+0RDT6uAPRnzyBJc5H12nJudrMU9D73+eFRAcRVIRzsFluot60YZRYJjwh
jpO6ilyY60MDni4yp1LSediUvqBIcRH9uEWEYQVsOKwfr3X43v/XRaeJxtBTx4cvrbjz+SkgLYur
uNr+tmVdXUsbUTD1suBTPp0JM7bzMbYM5Lrqn1OxNmV8ukgz8mkB0ei89mu8RsaOs8faD1U9uZ15
ZedPgNHhtYDm4p2565USDCMWOW3846MiSD+d8WZKNc5JnnQ5NPMpBN3qSIW2mCWYwQmsjKoFWoO7
2eTwWF9uysTdNiRGCXOOS/H4RCL8WOZz3VFs01lDbpU4WITQ+pJADuCwDdPhwy+Mexuzqo4T5O54
6t1QHlTbsKaXjSlfr+bUioPfaPQR6u/ykrzeG2HqVxM++5DoqaSJMkSydJCcM5D/H2cpLk/Jlqi/
OiKAmxTaHHHsJ3a4QCWLdp1kYPgulXIGLnnBfwGJQF1pOPa4yqocnB9q+GtKSZ6lMnUgI3lzc/Rl
+UWAteyHKRTgxy0ExYYHdLrSLMJjJcs7TFlHxGMki433IRhAaNOMTTGSN/8lB0OdFKZ3zuln+1MY
wLVjiEOs3xJ9/RxlQyK43Ea7xJrPhjyuBr1DFmAgWMM/+BNLlqVG+IO+dWV3fzcfyIpK9u6ZzYjC
VnHW21+/CMSyhHVOPv9pKltO0vscphZzaUBD8FkoA4mFRniSBwMd76mhbb3F2wPq2tsronTfitPA
xAiNTeGjLNGwLbJp1kNGBbQsWsYoOIvKAcP188xTJcx18rbIS2cckbMT5GYXTzcZCKg49zCht/i4
6iHtjBSxV9shfBu6PmkKXPAkaIeohdjyYLpJ90ODbKgW3DQtpGXpOKIY7umXwc77DZTzwAF8G5kh
oaHftk4XluJWh1y0a+pLPxdKMZ1+rS/8PQc8MmLG8OGglQRJENeco974n45dbCCAxJA8ZsSRI5sk
W5zWygq2nZtl3ZERoZd8QvkNkDiru/dA0eXesdbXvq1IPw+/l/OVl4QF8/kSW1GKFv5GH4jwpXKu
D3h4XalaXX7yyNt+U+zhzmDuEgm/jGVovOxp8YCUtLw8qtqCYKZMPqiHy2kSZAODPTfhbrgBXM/f
7O/9JxKmiUidPJhS91wWQ7kym39fRs8ovMXa4XrpeCsIrW/x52U42lopqfEZZV8WiT3HdMKPQSuB
FYt1UcRSK9Jodl6hNrb9AMUa+u5TmTKS63/nwdKIKqjk8UBMTD6beoaFgk6Uira7D5XhN579Uzwj
1JVs9MQOKYApxG8btfHiDuGT3SUSFmakBRwiYHD7Peg+QNVKBKv/oi5VAdEXkOxJzBlzgcqzlNwx
CGyqWSzju3H1vkByzriKNMKE+PNLHh3wXUgTPfeV90lOe5jG2Ca8kSQ+5+9zUsv0hd/peNsjMSYM
lBBPf1/PKqgbjGf9qay8vIvIlRgjE80hKzDmk335qvN70gZLGoAdKsw4ZYixGMa/7r2rBWSWP/aU
Qk3b9TTkTObtjp0Bz4Z0p3NQg8YKdayhEtvp4muRoxIgQ42SMUo8btsNqibmq8lW8AvXcZiTaB8d
/qNWAgcQ0BQushXive0W7gYfmVRtekfss/YnCzW9XniqLR3LCO9dGtI07QIOLpcbEUxfSDwqFb5d
IpPmeao1wO7RjzgzZj92brpE+CI63Ch9At2b7t2FT2wdBdb7+YyVHKVY/JFs7JKtL2+upIiCYsK3
S/gtJNS5YFVDIrywebstSPJ5nFE/rPFkIZHRmRbW2oQj4SUnduzi7yhCJgBMEfryHuKsRSEUhTU2
1XCHwE0uHmusk/6xhTJz7R3QgpYBSutoSinVtf/nTi4IK88hNeuGi3/WB0rkDI3nVk4K+DpKDPOI
0N5SGb22bF52eQw5DCdAfaFZTmeC366UXK5MJq8p11yx/M2SY4vValEeBP+dgjau9h7FNAa48eGJ
g8BCD/W9lelmDq+WOU1dlQdPAjFtS6O8jmiUbwUsj0Ab+lreM2qgdhUXiCrpz8D7j/h956DnLSdR
VYRwArUV3bdEKiff0VI3cN513uml8HLkITNcLrE/7OEMoiyEpKmpc6zTyFNW42HNeTxDaWAq7UD2
3icK4EtCFq7pv+bMnXToB39Q1eL549tWXckHihKzXypCK65990PAY+4RbhzhasbLo3CfJXK4WTQu
/felYIYfyNF0zDZ+jgpgbrNedcKtjqP+1726/IqLupJOvZ6t0yeVsyWB+zFq8orAP2Ge9tTyDe4k
phfJFSV43tBaDBPx7MAKpr0BU3lZHmpxovsbUOTgcjZ+ZWxfuXzuLsYIL5dCsK/lBKyYBsP/S+Lr
FwSY6Xn+KGK8oDbW4TEUNNnzSJIAIbkDfO3/39l9UioJl8IHrzB1bOS+wn6j/Rri29MSZLmQFiEE
b3qHTKqSUpzTgZkg9GcxmTyUN6+xQ3lU2TuVatGeM1vLb9as93iRznPstMqhZXJOwjmNFGdAz3lZ
AmkCOvPBrOujTcNLvcntT0ermuyI8uP3AHrgzkyuoAj/bYkzSXgxJyRKNOKGwmQlxhW2LdNMqQ9b
WrGIyNrpAC8xbWvUGZcGoGRS1N5mxL+VLgFPQFN6cvBPd363ovEn8LvfyZ34FmI/jfhjPql0dE3h
V6tPV5D/OXkKusDlfuozFj9c+EKk4/PwJEsGUbeAwueyD4CVtyYR/D9RB2ZZkorkXIsYP7N1iZ/S
JXlqR+ulbPjCM3qbX0My94wIjLBc4TsFQNXKBhx1pzNd4E1BGhtEJwNNGicPSo+xQs7eKkxLodXf
N4WnQ0PVyC2x62fTmbpGT3O6C8528eLeIE5FEdGdA9OpfX6D1h/Iabc6RCiPt7aQhCY+fsSN/TzP
MjQAeuCsr7UK809yUO3ZVq7dICSLo5b9wzj3Iodq4Nf9xFSmxJLXUrL11hRrFr9yiYmnKxLVK92c
Np9zRbe2Hlb3sYnzDBt91/OjBJ5g+UVtxF0HHeul49N+zDv5y4B+0kFee98ZQURO22RxCawOS8rZ
qpbVgfClANHO5+LgBTIRGPtJwBE22GC+P7n3hhGQKqP1z9w1UFnwsHaFdCX06ijNQyIifdhUi2KA
QIchK5bMnPHaGx1Y8hcGSbuqt1Yq6bGoa6e6T4op6r7XvgF4Mt571e/JJTAnqLCN7IcfMBpFvq6I
YQ9iJiswjq4J5nM6di2WjI/cGZ/tHypEQp59VxyWCSN16isSJSbzd221O6vpA+CTG+hUMeVmiQED
jeBiUBb7aLwMBq+XwDdhoqcXS2uTLrjar1YM06WDX3gcn7rDcNeEMtgIJORap6wb40plNe2NKGbs
Z62jcyUnJOJ7hhQoD776nKkDcuMfK/KmvDf3qgOERB11ook9ty1iE9tAU2o0CyxwHOzaNoAKxhhA
IaIBBLUXitppDnLk/bVOaILYh5PHX4sxnOB/76o/vsxUR6LaW5D0kYo2dtm0VM3PrYubtS1fcXWz
LnxBVCMWfxaWeLB++KyZvJJwfYFnxdiV2DmGfiaN/t/6qLZWo1JHpYP6wtOog9affzJRY/gYdW4z
eVu/hQ1qO3qlWmhm2iW8rBF2dPv84nkeSzTy/h+SFDfn1Bo5hDicwHoNO4kFLDed4T2+/LBs8N24
Ja30ZLNb5QtTG3O21WkTIwGu2fHp2pmI7nRa8E5yKrCSgsQJ4higbtVhHDqwziOLNBagvdBZujSy
UtZL7jWrXjssTej4WtYunDcO57QDSArSg/SLsWhu9jaNhj03Uc0JAqkfKpprXX5AYbkOnhCjRXQ9
iCM7S6arJKBo2A11sPAKAyaa4BpCfUAWUlFzVw70rLwg0p+4/yfLNp0BMMh7sM0UtcXFYLD61lNL
TQTeHLdiOZstUnYn6cS+73gWSTNMWOWS3OfbXkA9aBNIoFnHPoQLQMkQSRVPbf7l7qOEntKEFvtw
+mSfqDv5waLFtpmSxx5n/V8deD0qWCaVA029G7bMMT5n2BVHyRq4wmPF1GkBD4NKJuS1f2WyOOU8
ON3bN+iYkijXvCQEe5Z92IEYNQ8K5+z4ixYH/MpKn51Nwl0kkXUeCcNWDt1GoaBKNJG7QgHIQAvF
NPdVO0bT5d4fjvWtE93q6w/p+k3rum+oAx+0fyPjSIrm0Urib6BUADUe+r3sgVIkqNL4VxUpQfuL
ORX6Gpr/RYU+hWXjgmfoDzSitDx+o7x8OLPISpDO3h3CcOVP2/Xy7u/yzeDxqF87bOFL5AH2set7
F3iIpDkllMz1ttUbtyYx5UH2Fy947+KJ8rLlWAaYuVUVvbuMA4iC9gJ8pUgZMrhS5s5iSPkP3Bp/
rAT8AGfKCQeGDOXPkrIwyEVSwzQvJNOqyUIUKxDJDnVDJrI2LHSynOIYIo7FFd3gh1H1Tn/oGeGO
dUgsFLYgg03hayxtgFiJ5/DDDcTG7UqTN4UVZhUDlwVuTG4dBRnXGFL518HRIlksBD3HC40Nu+u+
kquid4A2BgXDxJ12QSEeM7geyktnOyiSKepNL9HjH6172Ir8ZQ+alekiSRo8l6XZoP2dcROVqd6Q
L2O/M2G030bZDznhO9UGsY7yx/7fBIxT+MEaC1TqZV4L2DWny0PSxd58QDpOaGwDJEeo9bgUgKZl
p0WcAyjap5JhDapT3jc/vg9aStRW8gCeIdd5lrSjLnBTfP7Dpxi8QcFnJJeZjp62BEJ1I+SQNP0I
UP6hSSCG/MdZfZq0bjE663DyelEIrdTC2XT6xZe2uzLWEuiWTgsMVGC2wN9ZcqsBM402k5Tdq8KV
a8AUQSbo+cwU4TCP67adcusWkFu7BfxmCx5JXcftwJETENf4EmlpDRVOC1vF2JV3slgqI4Yjfmcp
0Hl9qCyVBu9Efu/GfJAEG4vdx86CVN+LFkV2ZwNm+BuhsQuYAuDfo9ETGNgY2Vn9yS/3QPntOPt8
DKRIb1wcHrfFdpHp0k/mPIo/Ju+SS6ZQMtfGIgiXWSvQWeSLzDAOF/Qy1ssYOklCEGsbFYfy1CJh
oJOGvQuEbp9peYvE1xmEPO1jyRdYoM2mc/zuZrl7d5Ngpz8UnScWOtw+LqfMjLuGC7KDWEE+Sje5
NboBJ3/sGfzrCZlo1YbQztsGbVBBZnXYFTBFEVef/FZEaMNJ94BqEjXH0lq7KRv9COYCbC3VSssW
GzEMSrZH/hAv8i8O3MnAocqLbl+mQT9JkYX1wR7xeo3q8OXbbVQ81jctcOpOXPW1P8DsTvD06QEB
O2s1D1c9PJ2CJv3nhBUtcLUvF2SoqhHUx+Nve3A+RQaHUqMGGcq6xymLewjW14D1/Sz2+ykDHp/v
H+m9xEbDV3s3SjFieRqER1cJ45TjctZGdKk2FvSHJ3Df11OkBXNtdoNutBCyFZd5YmM2R2UpiTU+
SsRUI1S0kYf+nB1R1SdGgX/3QVlbgda11UsYqnKTh5cpkhMbuGTIKidfViQycwIX1/sUO8xQRhU/
hQ0aO6fWPtIGypJVmUSjRHMgOfatGyyoxiVBgjruOnEciYBNKAruPnG9NxoVHHwAiE3Y1gtNARTW
hVL+CxN/+qBFrjQeUEl9CKLutd49ICyQoLM5/kqgsuzHCFdqxUHXSv2+QxMcXyDOOgQfPs8zxjOV
SiXkOwjJ0sxNMp8rUXPpnDaExLGKG0SGbln1OmBkHM+9F1N90Uuicq1FF6hRa72cmMy0TOxna0oE
Q3bu9GICUz0i7pt5aMagKFx9JW8WK8UOc+Ul30IKvAb5syhS8cZ59c5D1RG/C2zTtcLsHdVPc+LJ
8U4HMym1aiiHp71SVQej9ixPeagpmvNL8UkMxd8W6QbvT0BY49raN6TaDd7rQ6LXxfHoO44JZ9ST
nktWFxPkyUpLuWoqLQuT+l8EVfCesWJiDNWGL3vklYDkEbj1OIXl+jPhkQvxBLefIJTtIx0YB3tL
UOYEdzqITZoA8LBmYzLIIl/Cl9Tdk0YV7wykgsErWexiGzI9zr8vvA4FS7ZTsDO3dB8+tPTYgrvq
p0sAGj2bd5YfJZufwmm/ezeBh59H9UqNR596mrhsTCGZkrmVYEuflr9WyuyvFfilZc2WyV5dXrTX
qE16H2Iuz+GkNuvj3ZP0k/Wdt7cXMRYpYfTtSYsXTtHw9KJ+nizMfacB/tiV8H1JsYNWXtAYNG/M
DWF6AvRc8CqcanGirl6gQH+1V+HXMzLyVZfW7zje1QjILTAx7XeFJep3I0jPEQlM4HpPhLKfM7Cl
s7suJncI1c18e/Ytw7HQ0EEVzyYia5nMyJwEpIgEcx8cL4cnq1fGQU90W9M4Ui2qC2U6ZDpLlKj5
ybbXg3o5isAuWrjVK2UMwhMO2z7nBwGk2k5D6xC4K9db7c2fAAsL+i5ASOLn99/Gc716VwBpzG1N
Mc9qruC1c8RIrFNOWR8VemFS+2HCrC0avfM6FSqSitLeJVoVCaVnBoh/DfuXs8eU9OLSPkICy9HT
8N/X2EbslOfoGCsWJ0lQKxjrryrYWwheOeOSK9WS/8EtY7ToyRYNgrh0jWxroomMHzPH89jkSPfX
CqBsBtlQH9Re2d/y0JIthYH/hlyKDvU1dGoswKi4Wfyw8rNwY3dZpG09cr+x4n++lYIrX8AN9NgN
zio1ARzzR9YWpq+LXGrXNmP4XL4P7deesYL33yaLPNfji+RthN3j3uUy9WNiCVkpNGG1AnviGYjF
V7sPP1Qm81HT1NO97RpLaw+NZWB69YaApXqfueE5DBRCmm2ZXYXj7eyCZ0KdbyXwqAucioMr4SiD
1Ylqf+zkCS3iINZ265gTPIEo6fadBV7e/bHeAaH5UIQgbJmr2SIR3HSqPDLvzUz5AlAzzNEwUry/
rO4c1vopXM/7AO0L/7lgLoCCnaaqqPi+la2GXWljoQNC2NaeRROkgAYqiddv5dERFDryAwPpCUDM
JUB4bMYcZdkSTyp196avFAtcD594YRhW7fVx/oqKsl0ov6h8GbPvTwsOoHeG0RNEwcE8jXPA8WRq
EEujJeD1De5fzgzC9S1wcjgrvXz4Mn8Lv6s7m3h6Zp3DOvIYEgQVXGETKu6Y9ekQAZDu6eQtWfZW
pUJ37dQxfQc7UtBjYsXvm7NxXqyRvN1lOqDU5HQPu6KrULCzL7vhY9txB7+FoxvgnUHrog6g440Y
D6IlVaA/KOFirGWd4Pq1+AKquqMVoWxaug+zt9EJjPpMp4UhgQP56zn/yCeC5/rWM3fUU5nfyKws
iksPvZEBREz/Z+Jliq3jQdYY0a1upA16xTUh8ArnpsOaLqkSffqWHizg13OLvRg0ZFBi6UaYWGRF
nro52kdVV2s6Nzj4JMX8BtP7FJKMG/ayQt3638hOCD5pPpZ1P+70rWcMBNQ9YINNLtlzJmJvdLey
xcdrUor8B43AgzWq8sAXaReDKsO7TkN18KAlzuOmpbsmqnK8kcaB6u83yjMC88lTzIjeRFGm8oMe
rrVBq8oOQ+NdJE/MDNrcPIIJ8xdn+U+f2q3Y78fROY7y/9sfbXY2zagpDJRkWphSJIJfcG8ebofD
vsaYLx4Q3yINb8jjBiDxspaVGfxRCGUTqGQJivNCccx1zqNX7ShpYaIR/IyFUxOOfPlA72+LnWYZ
sKqGmx5W71n44SHZ7pZGK11JVAsT3QEm81JzlGALV902JjdPmdcZvEHUQ9DVs+qIJIEO7BQ1qsv0
q2LH4va5T4Iqq1cDlJp2qKwjNyayrnuukOAS3Pkuem0AugqdlLV1xgdjddr66tdyxv4xYtDBPj4v
7HnmdgezttPDknYUClSfYjshdONgMQNRkqumq+FlDIJfYi3dUd5X/SrFVCpDX9GORyV4LrgPiDfj
5QZiNSmPOJLhjjA9PJWzXSvhq72VszbJWU268kkLpeX43IwTM2pMGdhTfjZgS5nEQvm6h7fCCpPc
3a8uyNvTNHFqm5+nqNv3kEUH+jCz1w8v+Nu35z8BT0Puarl0TeHBLwBYCIZqGtxNs+oPgocs2qZ7
so04hGmpFn/zTA26Rz+05MrHRux0dL44+CsvEIXgBGMPPI+kpG3arYxQzFuAMF4PzB74ZSx6K5qc
LxKt4UryCdtamXEOQ1VCKfaSSxyex0tQOHD2OkdwZlom9U04lfqAE4D5UTrTzaf2qlgWtXAgIHww
r+Ydu/5grwivyTjAazMQTvKwkbHh8DF38n9iSAYXNhEAjv9F5Stvs9pKlF0ncl78Z+i/8pWSDqIF
BgOgvkqxrlwQwB1aN7hOYBuKn3vpoF3NfI3/+OQRZ/QMe6tb3L4dIOdKWKDA+l2Qx6VFZNP8DWTF
NgsT/LpD5HQikEJKuxb17pYY5MXLFVBOrzylXNRJXL3qpsT39FJkYUkN/gqwnyYU+1LxPMYPAsfq
u5YS4EuNHbtQXhH5MBxZj0Ew502e4T8+Ny1YUsCQKUE9RLKp1qZvY/ZCfWLQFljp3oewSsGn2Ihu
kq3xXYqftrycKBnR9oM6fcvcsQ7tYhRECrIRVvqGEAkYVCUddXF5GUHv19Ir0uLxcB21hR45VP8q
B9OmGWkMyoydi9LwldwFvA9kOuKEB13cLrQgTFLPgxMzo9VWUXDA/FOUHqQTZiCPQtdyRQHpCpvD
ivDcr1Ov7Br0RuiDlSvfVYLyuef/ZYcU+AFHIgnjQ41LWndQ17lduqIrd3JphJDFHMJyGc0Yg/tA
lZyz55PnwiyIFShE805LJGu2B1zRkQYQD0RaSgOv8vst1M34C0QDeLm4ZnGWuWJiZUbxrPSCAUkL
4HmOfjdjURpeMHI6zCmLVYPiA92VoNkCZ8+piPOfcYd++/+NYKHGhA3CV+OhnueLgC1A/iDYdbgg
bqdhXWRVBl26XDXeIApJjExo50G1hLpVJaRdr7QpOEQGyuc0Vdr2j6rNri7j9T/c6zuRqDpXGJFl
CRgRh1RF6TJt4fHFOQUI/vckswXbT74o71xJUHWuE8pnv+npKpViawq+LM8JbW4fw5uhFbwYx7Xw
vrJelwKwC+lwzxH5r+6mhj5/9LgJO0PH5IVciAGV3Mfr8jGbCqbnIKEFrhIMBWLc5H+0IXi0x+WG
w3OK9DPWaIvdBcTGGZfIm1HFzbezkKACKv86feETazoNXmiy+8kxWoYhnUXeq5bwmTJ5N028vSwj
rl7FWPO4oZjfpuXcKz5lJMH7hKnUvy5L0V31hhzs/2qVj8XuvvCyzfaHmIMmhP5NHb7npU7lxJE6
fFCTQZqo3bxd1E3GYJOqo/LViqVig/iU1P7mXnPFy7IQbWfVGFmec/MJzKLWcf83l+ZSyDUX8yhi
7GYyNZ2xPmwC3/phdmLXRQplfFcYvBNeY4Fw8UXx2PtXbXdUe+mRWKtOCShO5Yvg0kFVskTskcuq
2tfmazvcaYt9Lb/XQ7Lel7OY6n+ZwF5iz63m8CTs6rl3pLQ02/B4fyTbGIfkWgDIxBXOwhWdXJ3G
bUNCgj2kbvxUN6ej9mcMQ8eMz+ZPQfHTwd7lRNxrBIO7SktEI9dSg7CeeQX2K75zolkruc0tZ+uV
hIq/SvDzMjqhOyf1zRLEM798QeAC+UU8Dlis0sw4t3YEBU38r9HGt0oLLqZehUpI19tBTWndhFSu
BZ6TwA2EaiJ/lKTZ0mYgM1hmSAaDeAEG+PDUsfclrU3Ims9qBA9fODK8AEs75l+5nzjO4wCDJINq
PH/MU4JRXMt67dwvzGEQ7BZjWgAl+v7m5XJv4o748oBZRjH5KgaCd+7uDhdfN7UWSz8bwNmRx8qT
tdKyWkKknK5teVCiMqGoA8SMoNtG/nWRLOSbszMq6ZcmAR/K6/lx54DC/1JgCOl+zdLgDF9mOHab
nCEl7MnkhEmwHDl7iKZm10TMjwoMtFCjm15ylO5wCK2u7737iJ4yhwV5H9zVpwTsmyadj07VHI9g
xgsg/8q5pSbhXoK9vwt0/BgRtdYCCRjjTm+j/x4n56CFS+eGLhrLcR2cPJUz4cYi1LzQJDYujWaa
VFFdDHDyStH33NDTlyyqXPJsBLaXyYnnwZDQFr54B6f3hzhDc53C50YgF8ddoMgmhLfnhMo9cmJR
UuL9GMXo4M/iRiC0RpYoPPCIL3+44xsVQmt8saCZdVSLu4H8hK3kq3tmfA/jP4E4EKDiOH2Y1nQ1
YP0Iy1fO0veZRIr1KEozsR8frBDTYhQqW5uUFaj2al3iM3Mc82dwjvpnHY95btup3gmlwufKLomM
OtmGacPdir+dt/+yF8s6VxfE0+kliKyygSdcOToejMIyqK3iOVLPuB+OtT5Zp1OkmL6HO3OMUEC3
ELRnAxbtwz7lFbWEw6sKdd/qNcEP8FfMTD18LrXZHY4vrmXlXxL4VL9bGAutSFF5vU3rbuKg6MXo
jM/+DVymtqG0neuCiL9tlNAfyUmSZaRzqR+2bYIgdUvcKzlPXEPG+oCPO32Op24ok3rNjh/uptBN
JgZnIQakkoQ7biJ4bt55qep77+/RP8GUTGs8TnlOFzJYBRpdj2ux74KtLm2sGqhmHRMPCMrycHHP
OOolaDTSuzXsy6Wguh9b+6UBdncgTjwLZ+3K3RHjS3TLds7XjO/kyj1VuZvAN1iOz/zhOjy8/vTV
8Af+ck1X9EOMybxvwxov/pzgJPpED9W4CWL89yYVzEm+9ctiIguPsnoApAYdap4fC5/MRXq1i/5K
qOjAUeJa3O8KN9F6FAAhl3wxNfzoiAPJIs6cJNNJ2Ze6TPvpG5FSPt9PTaU2BAKeYVDD5I180Z1C
kWzqfcfirfSbV4dxyuf/gfWsxabd8mkeExQ0jct7m9qjqVt8NtD0kHWgfwsYArPDVIe9fVT3JOoW
qVtFf78H62U71Ur4CFDPEt4aEabmZetOr9SdtWdUeUioR3G2+9XiGcHvjYOtbYqU8D5Z/UhRzXXQ
wPoJlzEkN7E3VhgXYbebgFwvGNoqE6Na1FQXiSPf9dmuSGuwxNpxVFkYIFL98nbNc6WwxUxzkO7j
Uepo4Itry0YQjAobJCQ9IIZ5nk5ILI5h3dwklVJ2isrvq2AEBVkBDtOT1tbSqYcoDvsupNGvYhpS
G20lXVWrZWI7mioA9JLPlWYebETjYis1hJhDtBIoyBMHnG0y334xcKKSEhdQkrb8cKmmFlVh6+GX
aQwK5pB9SM9qUg7Uk8XFR9Q5tp9Dazs9jeNyGT3N9FVN+va+s0Wn/Ylg255VHDq8saGSNZ/0RMGx
9f22YybyQbh+WLCM0CNk+KsFTCo0E84vxciM8cr+eLZR7PfbczuhKRmo7Y04bl687f92Kl13Vq+7
P2cBMA08RjasQmUbq8ORRcreGsesRHe5YCPXR13use1jgpJkDnadHn48OAgEAJdUed8TV4450Fp5
FPXikkd2gy8MImDAs4h2KNpXrfEYWfdZOxsbFUfKI9MHEIvJkOy/qthDYNhPdfyq8v3zzuljYLNb
NFSkak3WKplHNoW4N84kv3lbpFoaUn9exGxZ58OyADdWQqSqzlEpxIPK13ijju4JiSVpFJV86PXD
RZXBsxMYD67nrX3Mi1kCAXmAln1ZSiyvCy87jv2oCoRxiC4jFUo16QHlOsH9BzP9UZseXojTnpdW
zQPddkoPTZU7s5rjyddp0JiVeDdT5e37Fn2HahO3MbdQxklwqG6yHmxWo7/vlNefV/2zwdtwekQ6
EgbahihCWUfP61ThQWq2VzyPwlx60lR7u5FVLX0QvsXD/pvYfP7IdvJdSfADkuW5XQPI9p7fEbkO
R1dg24/1ZsdxHrNcqMXJPKQvvK77mAnGAp/KJ5V6KGgT8+3zT5JzKlDN7wSm/FtFxitKU3NZUuzr
pFkvq/QIgLBk3VdWTNPL+QiMJYzCoAw5+fWo2MGvRIn5vLnVZAIYDLR6SjxTnqKaTv2uwdxCn3v1
8cHcmpH5NzoeRMOzceLsCQji95fUiDfGlf3LAjgn1BbjbovqHOmCZmOMMQDZz5Wju/dAb8N30HAA
U3DgN2/Q+US3AH3YyCt5FVku2CCHJiHAwb4pK9GfDipgBDuuJUlwBcg8NuZ0vBM1Jhw1eXzfzMQ0
fFY3dr/4YFdFj8Iv7SUqY9Zj2H+keSsbUIZNUuZNP0Xwb6S0NY2WvqWJWZIMGFlkRLBUuSzK8ESl
3OPsYkV6UR9MZsTcJnQqK90deyz/SGpJudNW1T8IvnuQqppmhtSHvOdhL1DQY1zn4bxArjCC6q4m
18lx/5auzUvaJook++g4RVqeLhZuTEc7Oxqq1nU9QgE5lzezbnrJRHGKEO60Ni5L88OJ3KJvuU80
CGCN5t5JYCzh8hPwrDXTEmUEj8LjPhqIYAqSdIiUEKMuonWASiwf8ik3wx+pezzHRaExRtpBF3ME
Lql0UHPro4iou7EyRJgziplYsNfNBS7E1ZHoRjZSJgoXuLVU0MYBhfcviDm036HlwZOlAbA/E0sc
McZQx2s95RjxQc3pkJIMi30ayIlzRbi/XmG6qgzOtbcyxsjjCpuZORrQuWWwpFDOmq0Kb5ZdZ/Dr
+DryFcO9n4+VRGvc+uXt5Ph62zAIt6WkD0fQh1JnBsXNgHVaTOyk73xg9SRjZdZDHwWXhR+bmvEf
72RyD6pSqYbphm0x63NEmsqc8zAJhGJ9K5xf2vAWsvA65FIuz1cDKcCQRl7+qlMz5qDauR7mN3Wx
2r5fHuXZHOBTdQuFpoOXKgvvyQfoS2nhVJwNzKDCoIZplvVOZZNc1NSWPUAfJ5XRLkBerRl8L3gB
uaeeG8IvZywacJvfQjyoIl+/+iKwGb93mq1ytydQ2gvcazQr7rdGXN0Jwfq+Zl3i9XwfrRQ8M1Ui
9YP7e5LlkZVvNAZFC2YHZVVOQcWQSoxSepmRpULvZO0ihqEln0N9t0zL4aLLj2EG7LdK1EW+Wduh
PvQS8qwVNWXYpj6OLriT0HbduejOZlvL9gt4DDnL7D5BGm28n49jrJz88zFz8cerEoaTO+aBQy67
FY7feQGePvFS4YgndeMYahHXNlxCJ4HSswRFZ602NpqBBFOKWt5753gaKc4bmKJ84Sy5XXdc8c5w
Hi2laq03QTpysvfEngpX0tp3uj2GAZ6I1Gte/Us6pinQNFtPyHXjdUQadO20IyG4CPllLS2zcLf7
jSk3BLglhU8lKju/hX3LMrxdyn9Df7KgkjZHfi2zBLMg0BqTvA7eK2HeffsO+XnGjZFO+G0NP35z
MiJd+S1cIVFj9vLhng87K8DIcnxDCAYKOY/KKde3FACqr9Opd9OX7QtG8wMl8d4Dlu4UQJJgHkBL
6weNRt7f8eEz9zTZgXS0FODkv9yDaBjMw5KCQ03/6w5N0xm0UnbGAkaPlNWMulux6Nl5SRT7Ll2O
o8xQrnzZ7+kvdhYBO15JzqyhHUXpaMhQrsplnwsbk3i//bVgZT+FBN1y4ZToYZJMLIWuh6VLhWbk
ZuCDw5hZZxQEnvDSQfng9xamvBCnPgfaTJZLVAE6Xo9UrozXGfHkifrHvpNzh93w8a643JA2oz49
fOMsq1fT02o/z4XpxNLNSGZOWOE95uVhUiNv4PIDHIl26+yLvDyYrHoypAyffFcueODuJje1DXUC
wd28K+BqwwpMbTi6BQzC9SDhc64auyEOJMmAiNDdjy1W+ioGpaKnooseRzCyPpgqqywpmoFC7EfH
L1bwAYvzimvzbPPZucD9r35HmVH8IlRLd0KZ3Kr82FGumr4dQ1MBhBaqwMlhoqK0PIXiCR9r3WvE
/WGUl/E6H4X3ybaCkYDJEE6qefqs8GjlBxZ3GidKqBPAOIZkMohV0KsAcZ2GnieLCR5mDzi0a+1E
45CO9I90VKt+1xMNoUJEdwLoDYOv3/So3U6cDBuT/qpW5UdPXqtb3btPcpyprQOledYzKUnISwvc
edgl3+2wtV8GBF7dWXKBzrUG/hRHsXFSV09PAS5uO2V5PWm1U5CugLgI0lqJsFarBkBFKUUS8iwk
n7CQ5CVHroLaC+1RMhwRk6MwzlurWyYfUGHKzZ/bXnolqRDXK6nxzh7+WJ+xjQAVh7Og54fs6fk/
XfFAy4a9GBbQcP1yP8WDUa1rF//ZxKtOpGd+JtYzOYvpGty05g+vuXn8njk/hBj/9NQICpHk+BkN
M6kPQ49fU5E0h2G2hlKksOO9cgvYoCjj0BM88aZDdlYdsj4X9Hlae4gEsjUuJZJic+8ts09eX2zh
K5SyK+oeU7Yl+LrG16Q4v9Y9sTtUNC1kF9Tm9Ku85eSNmqosTx3eZ3155JzAUK6NV1JJ0Oh0DU09
MMVfr5eJUiHpBh0Wq/vQ4kRzxfGQPGna9NrLr997ftLb2wu6GkiXO7zacxPRAJeCMocK1vI+mI2E
PPzlQjfV3qRgVZvMqk8qTDIA4ndK8+WTzzkXlzVEUIo/FNmyxRT2jjbXRmLDUHLdS34KGeWEHQ3h
L5m28yUHr2GtvL0Teu9bs9qS67dCHIVVajlRE5TFGzS+g6TCQjFu6DemR0b0n8gLyz7+Jamybbe4
Txt9SFIOM+lMMggTlqRZwJkXklvGPN8wo9ZdhCEaORtpsKaJvJhSFB/Ri49Pi5iIFPhZh7watIiF
6IyB9Skr1eWE38SHTEU9XpFUgrwmViHEtVf9rydjD37PjgvMTavNCTNb4BVBwIDprvDyQBotP7LH
lEKclcJAsDecJz/Hdh2ghLmys87IOPFstmYVqOW8yA4WZMwkov3uJn5o3aXzuhd0jQZZp6xg1Op3
N8eNoq69SMV/RsD9SVTRHUFSRvQAKzV5lI+V1NqSjW4wTZcP1nsGyXQMyrRVPBEe97YKkToro0K/
fAfeMCMP1purMnaoEm+MZU9XSC3z7wFCv8IetZ/a9ypc9OZzL9lhcxqs26G6dWJmZJcUUhJe0Hwb
1tbrOnRBnOL3L45h0cVDQ1NieOBQkD2cufuN59HCQgVlY1X8kShR9poc3l2mo73QQEKleoMhg1/C
a3aOjiCUw2XFs8iM6Pnki4I+VRBia/7BaZ6mCpsNcUGMfsSEisc1b2a66lm1mIBpNcFOMAalnHav
gHjtVSGedOzarB5HtLoLuAGy+vbCqYmyKMWBdFA13EBoRGAlQxK0oEzJ8JWfhGZAejA4hRkEIukT
r8p2rg4fLPY3CG5WV3Ba/DwjEVTiUoqRdFKTGP1JwTmPWykNS4BHnbDSx2/V3tcRzGCvpk0ShltN
c1eWEnE9G6Vx+WtKW3NEd77YKi1w6NTJUr3x/87Cyomz670kBgQHvrb0RDp3EIKtsqnfoTAMYZGn
WMnOXFattS5kOLs3SSiD1E60mOZpfERuC2sY01zWeid8RdnTiVRjTnDqfl3zL6KBeYbsxT5KcShN
Renyi90KbfWxPOhJXMJuuSdmzYbKW9mmg+wVj5LE5lhh0YnZifrkFH/PQFx9UIpJwDPPutjwjjrG
2bt3d8cBQboTjSxGJwxKq/JyaHRPc1x0ZjmpxHUjJruGEj5Fw2Hr2Hpjj80vkU0gd9A2f9UmF47/
NJ1SkAyiqlpbYe3VDqwblZXPl+BVjjJis75KXSoxToc33j4qhvrv7t+mOM9mfWvTsAhKJPHz8Nsx
vEQT1pV3/qDO0CV2Duk7jXYfsw0Jc+0cYNsuWwpiGAXQYGEzU0aMFJauyf/u3b4kdmnopqHhf5gq
KmwkJCrR3/VPamM7Dp0CY31JeA8zRLqxVjJvpWHDuMnXxTN9HzFSi1jpXu+K3Es6i7OTuIhCUiqa
7xUyAnsPXO5GxNGz8HwY3+L9pcwNeQPo11BXxcX8gKtnt/2u6eq2CI9GQ4UdKA/bvbSglJc4jDts
Cy73nSd6Kgsvlvu2VG21w8vH6pvGFUvyDoGrroJm61g6RnHrNtssHz2aKcMETO1Uc6reJO0QSAap
mqvDS+AqbZLLYd88Y+k/F4qWvl5mtgC09vKUTvM/wHCjS6cTyL09S4U9L5LxV7H/Q3qdkc3uDvxO
6w92PMs9AmZOGxRy/bwVqXl5yyD4f1NbyulbD5tI8hhfsZV4E1Brggf2PclioHgpQU6aG3u+7IYZ
MUgjEkoNjxgCDLeGxngDDrVEq53q+JTWQR5W8c5bB/GvZPNjiPcBfz+k+O/xt0cbcVcXxaDPZ/nc
UD7zuleO3ip4F3nQYg1TbUYf9Tm8Hwt/67cYxRWXd8mQKvrWLnlCS0b31cRxhfJQMA7SZaDXuD5i
obkKo/svbyq9RwBUvkP4r4Rg9FHDiS5ZXdlztqNGG9Q7lo7uu827d27ueuBw/ChMLlDwA1GaJRcN
ql9DbaJGzDEl8b74lUBNxAnuPMxcanl6xSq7ldpISqyFrVMo+qrQ3NmkXpvL67uY7AL9Gkkjj0Rs
VV/xMK7J5ik+po5YTe3ow6mdH4CpE0bd3QsvKNnJR7ULUpDXsbCreOufiqV239jrK+zxKk4Xw4hG
qAospYcH8WZDAz+rcECyJdvqq3qjG7Wi3aWyzpOT76lTbOQOeNMQgEJoHHcnqfLBXwACQnlQSPvI
FHAtBCvtqsg+yT9j4n+M0rD98zAQVqigPW+fBPV1gVrXccqnMWTHsZ78H9dHGfb8E3fuF3/QBc75
Sxx/a1tuDqAcz/yW5Ft3ITHB3NJfNMus9k8rMctCjZOyp7NufzToZHSR171aZS39itKPy6lf6zmc
quLvebyEL+wj7upQYx10iZ5jh2RUgYuPvdZJZzj7JVwi6ziGUTomoMhYSD7TuFK1u8p707SwsE79
ZAPGxdUwNYaGV9eyRLST++5z2sTsnV6gSfo8IbZrNSZ2gGok4KNyD0rDFalTx3B2MUU88wdplT7e
98kcIR3Rc9yLHDIfhp6fvSU/pcH9WG9xiOg3f02KCDhd33jxWw8tRaJCDaS83LvVXITQ5YfP+4cd
UnwdW+YdoyC9BVynfwymvX6WUbAlDhZd9ZMihvWFES6ubrNOuyfE0eCJVyi/G4WsurSKu0cOmBOh
vcA29CsHhHy8TGmJJQbE0xR/bejutGPeAX8Gv/5Ug9MOLotPSJwRwxtLFUayj+Zc5WPaVwuKHy++
FYz1ng1LGE49UBTfQyvIdlvZ1kaYifdXaoWbp7kfNZJZPSNsRqeFHr+HxjhOxTOzO9i09VqJXOW3
x5qiEHoCax/3JaxsR/vuqIGcIek4mC7K16mA4LooJYcu6n1mJNXE2hMDZWyB90Rfa6qtlUX9P9d0
996CiWDWgW2PNcMwqljm3eW1lZPoS1X+z5RHHHpobBZZdFa34jCcQjgmf7NmDRCPG7vTTxNpZDRb
+I52oOpS9YnvuYoFHPTj54Ju9vapZKA1i2FDV9bo6VYcaUAUt6npWZvgS4Dbe8VZ2POyJ53+SVa7
2XdvCyXWbKo+uZju24GsqSa4IDVdQKwojE9WBENTZMBKZl7U0VYs/m5+2GKObwBnvsrRIpJvpbmc
O7GoaasGsT6obSKEjBRURcyUGI0A46IMfLInDwewzFshZOMW7jKTGsSkHHhDdnqDMJNyjd4Z14wy
LH+YtR10h5V9Tu9K/bLMdCCpQ5nmtB67SizjYYXHB1mj3bzAYMq+iSWWkFguOqlYvWGz8dJuyODn
tn20AEZBHNYOwCl511TetTyAQZslltLOjHE2hWXWKUJ3B0NLWfomymgcYUYtI9GavY5K7BfKrNbO
SwriBNmXBs7mF2aavXJxSNsh0bZqHkf5coCF43EJwPwU43Yit29Pv7DCPZqjjGf1kp6a4IYJYJbR
pLvZ6m942i1SkVhoIsIDMpt3RURrunRTHQmpqSAGIAACeysBfAFpL4Qh38////l5NCuyG4OXuqN6
qSS0k0r5aIkeZYFzPNI4p29xuFJ2lFdI1c7xJsUT6FD/PRvybKJbFs3KUUPaeEVxBy4/4eqGf6RR
/TxbBpVQLexvhL/HXD5DPmDVsB4FE2Ie8T113W4g9MzkcSYRNta8nwaNl4ybu4YWpg3zSUshKHgt
9QXioZYb0Tqs7V1QgespDvdjm1hsYb8w873IjLk8nDcverhM1Qudd37cxlwHzJMs8iTxv1qbef2s
dJzG+fcAUIzDBm9Er+EhjujD6ztUJkHciTahhT/ZswdNcVzfFlh/eYf1Fevy9FoWD9AOIspSLCAJ
N7yjEtDyuHHDVTpS+VzuQEHi2JkHBIpZYLEgmw5efK08cep310MICKFaOsNg3q9jI64jpR1fd+i8
hsZ+a612mveNo8sLgDSN6dW0ay6LQXgsQv6ygX68qXeAPABfhC4NuLEzmPrFFjnynDq3NIAWsrCC
xzjpDKWgA4KgxyHFJBV1EDvBeDzND8dl7Pb++QBFmVyaLW5lrD3bMI6FOG6GTh0mwHJRarKSpgyZ
1xxQgf0BSNSAjYdaBmUOm6L10HhSf0md0tesXenr/MwK8rorTzSMywIputy1LsFlT+4MYGF07kuv
adejLbBwei2+vKy/mHaAlFtOEP6DVT9a7oz9YklCVSfu9DCOnA9TMB8yIt68GotrZIp/J0SapQQo
DYKIr1QeXisqo2ANfSMEIPMk35p6hF0erBxVhZideCGslrWhaVIj0TLQmzF+sV1Yau9snkLONQHE
EQnRAvcbl/h4VS+4ElyThYN4RwgY/F+g2rkkiq7x/fVPIkENthmWHMNsAbuW9h+wpNyj9q9c7VaH
n9vo7mC168r0e3dFSBCdIaPVLdzdKEIL8aGnKNp3wBoAQg4ALOpiSPYif+Yex1Jmj2UWBwRJoBL3
Mm+qwN2yO6e4Md6+ExiRIcar6aZ1WgcPFJM2VqnJfNyc+vO6Iviqe+L4hZvV3jUUGCWLXOzBJZ1D
YliuQ0NHXhxv14kBsdLLx9YOryHxZ8gFcvTihYTHWyOBV/GtaSL09h0SHRuL1MGHkaanB6MT4cmF
VLb2507N/5rsBVTeqnuJDccog+mjkF8WXDNgtaTAMUaPRlJzfgmMlfcBrP6sKvJpI0u5QDYwtr+s
3GIB/MbUh6Op0dG8ZfN0FLj78mVrzqTUx1Vj7UR19QFwpMaTbk8prixpg54V6FJqbtXDsWOJnrs7
Vp68j214JXjIgoWLwQ9v5mWqCbKA7qN48nBukTcO2goS6ika5ORhNfUj8nUkwNBjW8G2pm4vvCIr
Ujnisk++cbQ9EigbRA9jxMVXLHSVmu6vsSQg8xJbxQRrG7t2zMQDbv529JFiRWzt5MUUZRDyACpk
aamj2dovMQomtN5zO1A0v3c4JimONpbIrvQ/2XUJl53VvCsGBlExTxs4ybk6bSnYeDXjzjHmYtno
ANdDON/VNz8/N4K/SNite/YCtKUHkaBht2x+/2YEuHibpNmnHz+SQTsvI0rgXPayoXVROTsVT5DS
lCnpxFpRbOk5Uu0AvFOgpdp0syShNNTiBR5LDfieuJiKEwcLKvZgF5JAkQCP/78yhMvDaze1uGQw
i81pcakoqVIaVOvi2tXbYV5NQaPLv+ZZXmuWwNNuok7vRuiUCDE57onF7GSkpdSow/R6XeM6vI+q
AuJb6Y2buNLXSDS4lhngPnlsEwXk+MuL4enXXM+FNUafoLMeMwMf8S8XZHu7KR54Hb12dZl3APwn
WGeF3o3UXRORbnzIUXfwa+eSyBmvOb2H1lBQEBnumt0+FJRmShd3qRUVFglG6cZTrerMSQezHIQn
R5tLSg/x65A+8+4GrrOGiB1N25QC+xPi6sbZmuUtLP3S6tR3kxTeMUDtKBvk/vE70wxP1l2YvN3q
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
