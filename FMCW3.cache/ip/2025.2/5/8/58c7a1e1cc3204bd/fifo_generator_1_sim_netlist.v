// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Mar 25 15:36:23 2026
// Host        : DESKTOP-BEUFM6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_14 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__1
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 115328)
`pragma protect data_block
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
2DjprTZTlSiyMshe3uF2/Qk=
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
