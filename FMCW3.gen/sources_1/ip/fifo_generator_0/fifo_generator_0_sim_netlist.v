// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Dec 17 14:22:11 2025
// Host        : DESKTOP-BEUFM6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/CK/Desktop/Vivado/FMCW3/FMCW3.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 102464)
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
