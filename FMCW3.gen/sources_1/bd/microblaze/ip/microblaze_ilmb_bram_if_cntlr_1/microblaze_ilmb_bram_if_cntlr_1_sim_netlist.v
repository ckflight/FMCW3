// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Sep 13 20:48:30 2025
// Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
// Command     : write_verilog -force -mode funcsim -rename_top microblaze_ilmb_bram_if_cntlr_1 -prefix
//               microblaze_ilmb_bram_if_cntlr_1_ microblaze_ilmb_bram_if_cntlr_1_sim_netlist.v
// Design      : microblaze_ilmb_bram_if_cntlr_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tiftg256-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_ARBITRATION = "0" *) (* C_BASEADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_BRAM_AWIDTH = "32" *) 
(* C_CE_COUNTER_WIDTH = "0" *) (* C_CE_FAILING_REGISTERS = "0" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_REGISTER = "0" *) (* C_ECC_ONOFF_RESET_VALUE = "1" *) (* C_ECC_STATUS_REGISTERS = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FAULT_INJECT = "0" *) (* C_HIGHADDR = "64'b0000000000000000000000000000000000000000000000000111111111111111" *) 
(* C_INTERCONNECT = "0" *) (* C_LMB_AWIDTH = "32" *) (* C_LMB_DWIDTH = "32" *) 
(* C_LMB_PROTOCOL = "0" *) (* C_MASK = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_MASK1 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
(* C_MASK2 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) (* C_MASK3 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) (* C_MASK4 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
(* C_MASK5 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) (* C_MASK6 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) (* C_MASK7 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
(* C_NUM_LMB = "1" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_BASEADDR = "32'b11111111111111111111111111111111" *) 
(* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_HIGHADDR = "32'b00000000000000000000000000000000" *) (* C_UE_FAILING_REGISTERS = "0" *) 
(* C_WRITE_ACCESS = "2" *) 
module microblaze_ilmb_bram_if_cntlr_1_lmb_bram_if_cntlr
   (LMB_Clk,
    LMB_Rst,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    LMB1_ABus,
    LMB1_WriteDBus,
    LMB1_AddrStrobe,
    LMB1_ReadStrobe,
    LMB1_WriteStrobe,
    LMB1_BE,
    Sl1_DBus,
    Sl1_Ready,
    Sl1_Wait,
    Sl1_UE,
    Sl1_CE,
    LMB2_ABus,
    LMB2_WriteDBus,
    LMB2_AddrStrobe,
    LMB2_ReadStrobe,
    LMB2_WriteStrobe,
    LMB2_BE,
    Sl2_DBus,
    Sl2_Ready,
    Sl2_Wait,
    Sl2_UE,
    Sl2_CE,
    LMB3_ABus,
    LMB3_WriteDBus,
    LMB3_AddrStrobe,
    LMB3_ReadStrobe,
    LMB3_WriteStrobe,
    LMB3_BE,
    Sl3_DBus,
    Sl3_Ready,
    Sl3_Wait,
    Sl3_UE,
    Sl3_CE,
    LMB4_ABus,
    LMB4_WriteDBus,
    LMB4_AddrStrobe,
    LMB4_ReadStrobe,
    LMB4_WriteStrobe,
    LMB4_BE,
    Sl4_DBus,
    Sl4_Ready,
    Sl4_Wait,
    Sl4_UE,
    Sl4_CE,
    LMB5_ABus,
    LMB5_WriteDBus,
    LMB5_AddrStrobe,
    LMB5_ReadStrobe,
    LMB5_WriteStrobe,
    LMB5_BE,
    Sl5_DBus,
    Sl5_Ready,
    Sl5_Wait,
    Sl5_UE,
    Sl5_CE,
    LMB6_ABus,
    LMB6_WriteDBus,
    LMB6_AddrStrobe,
    LMB6_ReadStrobe,
    LMB6_WriteStrobe,
    LMB6_BE,
    Sl6_DBus,
    Sl6_Ready,
    Sl6_Wait,
    Sl6_UE,
    Sl6_CE,
    LMB7_ABus,
    LMB7_WriteDBus,
    LMB7_AddrStrobe,
    LMB7_ReadStrobe,
    LMB7_WriteStrobe,
    LMB7_BE,
    Sl7_DBus,
    Sl7_Ready,
    Sl7_Wait,
    Sl7_UE,
    Sl7_CE,
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_Addr_A,
    BRAM_EN_A,
    BRAM_WEN_A,
    BRAM_Dout_A,
    BRAM_Din_A,
    S_AXI_CTRL_ACLK,
    S_AXI_CTRL_ARESETN,
    S_AXI_CTRL_AWADDR,
    S_AXI_CTRL_AWVALID,
    S_AXI_CTRL_AWREADY,
    S_AXI_CTRL_WDATA,
    S_AXI_CTRL_WSTRB,
    S_AXI_CTRL_WVALID,
    S_AXI_CTRL_WREADY,
    S_AXI_CTRL_BRESP,
    S_AXI_CTRL_BVALID,
    S_AXI_CTRL_BREADY,
    S_AXI_CTRL_ARADDR,
    S_AXI_CTRL_ARVALID,
    S_AXI_CTRL_ARREADY,
    S_AXI_CTRL_RDATA,
    S_AXI_CTRL_RRESP,
    S_AXI_CTRL_RVALID,
    S_AXI_CTRL_RREADY,
    UE,
    CE,
    Interrupt);
  input LMB_Clk;
  input LMB_Rst;
  input [0:31]LMB_ABus;
  input [0:31]LMB_WriteDBus;
  input LMB_AddrStrobe;
  input LMB_ReadStrobe;
  input LMB_WriteStrobe;
  input [0:3]LMB_BE;
  output [0:31]Sl_DBus;
  output Sl_Ready;
  output Sl_Wait;
  output Sl_UE;
  output Sl_CE;
  input [0:31]LMB1_ABus;
  input [0:31]LMB1_WriteDBus;
  input LMB1_AddrStrobe;
  input LMB1_ReadStrobe;
  input LMB1_WriteStrobe;
  input [0:3]LMB1_BE;
  output [0:31]Sl1_DBus;
  output Sl1_Ready;
  output Sl1_Wait;
  output Sl1_UE;
  output Sl1_CE;
  input [0:31]LMB2_ABus;
  input [0:31]LMB2_WriteDBus;
  input LMB2_AddrStrobe;
  input LMB2_ReadStrobe;
  input LMB2_WriteStrobe;
  input [0:3]LMB2_BE;
  output [0:31]Sl2_DBus;
  output Sl2_Ready;
  output Sl2_Wait;
  output Sl2_UE;
  output Sl2_CE;
  input [0:31]LMB3_ABus;
  input [0:31]LMB3_WriteDBus;
  input LMB3_AddrStrobe;
  input LMB3_ReadStrobe;
  input LMB3_WriteStrobe;
  input [0:3]LMB3_BE;
  output [0:31]Sl3_DBus;
  output Sl3_Ready;
  output Sl3_Wait;
  output Sl3_UE;
  output Sl3_CE;
  input [0:31]LMB4_ABus;
  input [0:31]LMB4_WriteDBus;
  input LMB4_AddrStrobe;
  input LMB4_ReadStrobe;
  input LMB4_WriteStrobe;
  input [0:3]LMB4_BE;
  output [0:31]Sl4_DBus;
  output Sl4_Ready;
  output Sl4_Wait;
  output Sl4_UE;
  output Sl4_CE;
  input [0:31]LMB5_ABus;
  input [0:31]LMB5_WriteDBus;
  input LMB5_AddrStrobe;
  input LMB5_ReadStrobe;
  input LMB5_WriteStrobe;
  input [0:3]LMB5_BE;
  output [0:31]Sl5_DBus;
  output Sl5_Ready;
  output Sl5_Wait;
  output Sl5_UE;
  output Sl5_CE;
  input [0:31]LMB6_ABus;
  input [0:31]LMB6_WriteDBus;
  input LMB6_AddrStrobe;
  input LMB6_ReadStrobe;
  input LMB6_WriteStrobe;
  input [0:3]LMB6_BE;
  output [0:31]Sl6_DBus;
  output Sl6_Ready;
  output Sl6_Wait;
  output Sl6_UE;
  output Sl6_CE;
  input [0:31]LMB7_ABus;
  input [0:31]LMB7_WriteDBus;
  input LMB7_AddrStrobe;
  input LMB7_ReadStrobe;
  input LMB7_WriteStrobe;
  input [0:3]LMB7_BE;
  output [0:31]Sl7_DBus;
  output Sl7_Ready;
  output Sl7_Wait;
  output Sl7_UE;
  output Sl7_CE;
  output BRAM_Rst_A;
  output BRAM_Clk_A;
  output [0:31]BRAM_Addr_A;
  output BRAM_EN_A;
  output [0:3]BRAM_WEN_A;
  output [0:31]BRAM_Dout_A;
  input [0:31]BRAM_Din_A;
  input S_AXI_CTRL_ACLK;
  input S_AXI_CTRL_ARESETN;
  input [31:0]S_AXI_CTRL_AWADDR;
  input S_AXI_CTRL_AWVALID;
  output S_AXI_CTRL_AWREADY;
  input [31:0]S_AXI_CTRL_WDATA;
  input [3:0]S_AXI_CTRL_WSTRB;
  input S_AXI_CTRL_WVALID;
  output S_AXI_CTRL_WREADY;
  output [1:0]S_AXI_CTRL_BRESP;
  output S_AXI_CTRL_BVALID;
  input S_AXI_CTRL_BREADY;
  input [31:0]S_AXI_CTRL_ARADDR;
  input S_AXI_CTRL_ARVALID;
  output S_AXI_CTRL_ARREADY;
  output [31:0]S_AXI_CTRL_RDATA;
  output [1:0]S_AXI_CTRL_RRESP;
  output S_AXI_CTRL_RVALID;
  input S_AXI_CTRL_RREADY;
  output UE;
  output CE;
  output Interrupt;

  wire \<const0> ;
  wire [0:31]BRAM_Din_A;
  wire [0:3]BRAM_WEN_A;
  wire [0:31]LMB_ABus;
  wire LMB_AddrStrobe;
  wire [0:3]LMB_BE;
  wire LMB_Clk;
  wire LMB_Rst;
  wire [0:31]LMB_WriteDBus;
  wire LMB_WriteStrobe;
  wire \No_ECC.Sl_Rdy_i_1_n_0 ;
  wire \No_ECC.lmb_as_i_1_n_0 ;
  wire Sl_Rdy;
  wire Sl_Ready;
  wire lmb_as;

  assign BRAM_Addr_A[0:31] = LMB_ABus;
  assign BRAM_Clk_A = LMB_Clk;
  assign BRAM_Dout_A[0:31] = LMB_WriteDBus;
  assign BRAM_EN_A = LMB_AddrStrobe;
  assign BRAM_Rst_A = \<const0> ;
  assign CE = \<const0> ;
  assign Interrupt = \<const0> ;
  assign S_AXI_CTRL_ARREADY = \<const0> ;
  assign S_AXI_CTRL_AWREADY = \<const0> ;
  assign S_AXI_CTRL_BRESP[1] = \<const0> ;
  assign S_AXI_CTRL_BRESP[0] = \<const0> ;
  assign S_AXI_CTRL_BVALID = \<const0> ;
  assign S_AXI_CTRL_RDATA[31] = \<const0> ;
  assign S_AXI_CTRL_RDATA[30] = \<const0> ;
  assign S_AXI_CTRL_RDATA[29] = \<const0> ;
  assign S_AXI_CTRL_RDATA[28] = \<const0> ;
  assign S_AXI_CTRL_RDATA[27] = \<const0> ;
  assign S_AXI_CTRL_RDATA[26] = \<const0> ;
  assign S_AXI_CTRL_RDATA[25] = \<const0> ;
  assign S_AXI_CTRL_RDATA[24] = \<const0> ;
  assign S_AXI_CTRL_RDATA[23] = \<const0> ;
  assign S_AXI_CTRL_RDATA[22] = \<const0> ;
  assign S_AXI_CTRL_RDATA[21] = \<const0> ;
  assign S_AXI_CTRL_RDATA[20] = \<const0> ;
  assign S_AXI_CTRL_RDATA[19] = \<const0> ;
  assign S_AXI_CTRL_RDATA[18] = \<const0> ;
  assign S_AXI_CTRL_RDATA[17] = \<const0> ;
  assign S_AXI_CTRL_RDATA[16] = \<const0> ;
  assign S_AXI_CTRL_RDATA[15] = \<const0> ;
  assign S_AXI_CTRL_RDATA[14] = \<const0> ;
  assign S_AXI_CTRL_RDATA[13] = \<const0> ;
  assign S_AXI_CTRL_RDATA[12] = \<const0> ;
  assign S_AXI_CTRL_RDATA[11] = \<const0> ;
  assign S_AXI_CTRL_RDATA[10] = \<const0> ;
  assign S_AXI_CTRL_RDATA[9] = \<const0> ;
  assign S_AXI_CTRL_RDATA[8] = \<const0> ;
  assign S_AXI_CTRL_RDATA[7] = \<const0> ;
  assign S_AXI_CTRL_RDATA[6] = \<const0> ;
  assign S_AXI_CTRL_RDATA[5] = \<const0> ;
  assign S_AXI_CTRL_RDATA[4] = \<const0> ;
  assign S_AXI_CTRL_RDATA[3] = \<const0> ;
  assign S_AXI_CTRL_RDATA[2] = \<const0> ;
  assign S_AXI_CTRL_RDATA[1] = \<const0> ;
  assign S_AXI_CTRL_RDATA[0] = \<const0> ;
  assign S_AXI_CTRL_RRESP[1] = \<const0> ;
  assign S_AXI_CTRL_RRESP[0] = \<const0> ;
  assign S_AXI_CTRL_RVALID = \<const0> ;
  assign S_AXI_CTRL_WREADY = \<const0> ;
  assign Sl1_CE = \<const0> ;
  assign Sl1_DBus[0] = \<const0> ;
  assign Sl1_DBus[1] = \<const0> ;
  assign Sl1_DBus[2] = \<const0> ;
  assign Sl1_DBus[3] = \<const0> ;
  assign Sl1_DBus[4] = \<const0> ;
  assign Sl1_DBus[5] = \<const0> ;
  assign Sl1_DBus[6] = \<const0> ;
  assign Sl1_DBus[7] = \<const0> ;
  assign Sl1_DBus[8] = \<const0> ;
  assign Sl1_DBus[9] = \<const0> ;
  assign Sl1_DBus[10] = \<const0> ;
  assign Sl1_DBus[11] = \<const0> ;
  assign Sl1_DBus[12] = \<const0> ;
  assign Sl1_DBus[13] = \<const0> ;
  assign Sl1_DBus[14] = \<const0> ;
  assign Sl1_DBus[15] = \<const0> ;
  assign Sl1_DBus[16] = \<const0> ;
  assign Sl1_DBus[17] = \<const0> ;
  assign Sl1_DBus[18] = \<const0> ;
  assign Sl1_DBus[19] = \<const0> ;
  assign Sl1_DBus[20] = \<const0> ;
  assign Sl1_DBus[21] = \<const0> ;
  assign Sl1_DBus[22] = \<const0> ;
  assign Sl1_DBus[23] = \<const0> ;
  assign Sl1_DBus[24] = \<const0> ;
  assign Sl1_DBus[25] = \<const0> ;
  assign Sl1_DBus[26] = \<const0> ;
  assign Sl1_DBus[27] = \<const0> ;
  assign Sl1_DBus[28] = \<const0> ;
  assign Sl1_DBus[29] = \<const0> ;
  assign Sl1_DBus[30] = \<const0> ;
  assign Sl1_DBus[31] = \<const0> ;
  assign Sl1_Ready = \<const0> ;
  assign Sl1_UE = \<const0> ;
  assign Sl1_Wait = \<const0> ;
  assign Sl2_CE = \<const0> ;
  assign Sl2_DBus[0] = \<const0> ;
  assign Sl2_DBus[1] = \<const0> ;
  assign Sl2_DBus[2] = \<const0> ;
  assign Sl2_DBus[3] = \<const0> ;
  assign Sl2_DBus[4] = \<const0> ;
  assign Sl2_DBus[5] = \<const0> ;
  assign Sl2_DBus[6] = \<const0> ;
  assign Sl2_DBus[7] = \<const0> ;
  assign Sl2_DBus[8] = \<const0> ;
  assign Sl2_DBus[9] = \<const0> ;
  assign Sl2_DBus[10] = \<const0> ;
  assign Sl2_DBus[11] = \<const0> ;
  assign Sl2_DBus[12] = \<const0> ;
  assign Sl2_DBus[13] = \<const0> ;
  assign Sl2_DBus[14] = \<const0> ;
  assign Sl2_DBus[15] = \<const0> ;
  assign Sl2_DBus[16] = \<const0> ;
  assign Sl2_DBus[17] = \<const0> ;
  assign Sl2_DBus[18] = \<const0> ;
  assign Sl2_DBus[19] = \<const0> ;
  assign Sl2_DBus[20] = \<const0> ;
  assign Sl2_DBus[21] = \<const0> ;
  assign Sl2_DBus[22] = \<const0> ;
  assign Sl2_DBus[23] = \<const0> ;
  assign Sl2_DBus[24] = \<const0> ;
  assign Sl2_DBus[25] = \<const0> ;
  assign Sl2_DBus[26] = \<const0> ;
  assign Sl2_DBus[27] = \<const0> ;
  assign Sl2_DBus[28] = \<const0> ;
  assign Sl2_DBus[29] = \<const0> ;
  assign Sl2_DBus[30] = \<const0> ;
  assign Sl2_DBus[31] = \<const0> ;
  assign Sl2_Ready = \<const0> ;
  assign Sl2_UE = \<const0> ;
  assign Sl2_Wait = \<const0> ;
  assign Sl3_CE = \<const0> ;
  assign Sl3_DBus[0] = \<const0> ;
  assign Sl3_DBus[1] = \<const0> ;
  assign Sl3_DBus[2] = \<const0> ;
  assign Sl3_DBus[3] = \<const0> ;
  assign Sl3_DBus[4] = \<const0> ;
  assign Sl3_DBus[5] = \<const0> ;
  assign Sl3_DBus[6] = \<const0> ;
  assign Sl3_DBus[7] = \<const0> ;
  assign Sl3_DBus[8] = \<const0> ;
  assign Sl3_DBus[9] = \<const0> ;
  assign Sl3_DBus[10] = \<const0> ;
  assign Sl3_DBus[11] = \<const0> ;
  assign Sl3_DBus[12] = \<const0> ;
  assign Sl3_DBus[13] = \<const0> ;
  assign Sl3_DBus[14] = \<const0> ;
  assign Sl3_DBus[15] = \<const0> ;
  assign Sl3_DBus[16] = \<const0> ;
  assign Sl3_DBus[17] = \<const0> ;
  assign Sl3_DBus[18] = \<const0> ;
  assign Sl3_DBus[19] = \<const0> ;
  assign Sl3_DBus[20] = \<const0> ;
  assign Sl3_DBus[21] = \<const0> ;
  assign Sl3_DBus[22] = \<const0> ;
  assign Sl3_DBus[23] = \<const0> ;
  assign Sl3_DBus[24] = \<const0> ;
  assign Sl3_DBus[25] = \<const0> ;
  assign Sl3_DBus[26] = \<const0> ;
  assign Sl3_DBus[27] = \<const0> ;
  assign Sl3_DBus[28] = \<const0> ;
  assign Sl3_DBus[29] = \<const0> ;
  assign Sl3_DBus[30] = \<const0> ;
  assign Sl3_DBus[31] = \<const0> ;
  assign Sl3_Ready = \<const0> ;
  assign Sl3_UE = \<const0> ;
  assign Sl3_Wait = \<const0> ;
  assign Sl4_CE = \<const0> ;
  assign Sl4_DBus[0] = \<const0> ;
  assign Sl4_DBus[1] = \<const0> ;
  assign Sl4_DBus[2] = \<const0> ;
  assign Sl4_DBus[3] = \<const0> ;
  assign Sl4_DBus[4] = \<const0> ;
  assign Sl4_DBus[5] = \<const0> ;
  assign Sl4_DBus[6] = \<const0> ;
  assign Sl4_DBus[7] = \<const0> ;
  assign Sl4_DBus[8] = \<const0> ;
  assign Sl4_DBus[9] = \<const0> ;
  assign Sl4_DBus[10] = \<const0> ;
  assign Sl4_DBus[11] = \<const0> ;
  assign Sl4_DBus[12] = \<const0> ;
  assign Sl4_DBus[13] = \<const0> ;
  assign Sl4_DBus[14] = \<const0> ;
  assign Sl4_DBus[15] = \<const0> ;
  assign Sl4_DBus[16] = \<const0> ;
  assign Sl4_DBus[17] = \<const0> ;
  assign Sl4_DBus[18] = \<const0> ;
  assign Sl4_DBus[19] = \<const0> ;
  assign Sl4_DBus[20] = \<const0> ;
  assign Sl4_DBus[21] = \<const0> ;
  assign Sl4_DBus[22] = \<const0> ;
  assign Sl4_DBus[23] = \<const0> ;
  assign Sl4_DBus[24] = \<const0> ;
  assign Sl4_DBus[25] = \<const0> ;
  assign Sl4_DBus[26] = \<const0> ;
  assign Sl4_DBus[27] = \<const0> ;
  assign Sl4_DBus[28] = \<const0> ;
  assign Sl4_DBus[29] = \<const0> ;
  assign Sl4_DBus[30] = \<const0> ;
  assign Sl4_DBus[31] = \<const0> ;
  assign Sl4_Ready = \<const0> ;
  assign Sl4_UE = \<const0> ;
  assign Sl4_Wait = \<const0> ;
  assign Sl5_CE = \<const0> ;
  assign Sl5_DBus[0] = \<const0> ;
  assign Sl5_DBus[1] = \<const0> ;
  assign Sl5_DBus[2] = \<const0> ;
  assign Sl5_DBus[3] = \<const0> ;
  assign Sl5_DBus[4] = \<const0> ;
  assign Sl5_DBus[5] = \<const0> ;
  assign Sl5_DBus[6] = \<const0> ;
  assign Sl5_DBus[7] = \<const0> ;
  assign Sl5_DBus[8] = \<const0> ;
  assign Sl5_DBus[9] = \<const0> ;
  assign Sl5_DBus[10] = \<const0> ;
  assign Sl5_DBus[11] = \<const0> ;
  assign Sl5_DBus[12] = \<const0> ;
  assign Sl5_DBus[13] = \<const0> ;
  assign Sl5_DBus[14] = \<const0> ;
  assign Sl5_DBus[15] = \<const0> ;
  assign Sl5_DBus[16] = \<const0> ;
  assign Sl5_DBus[17] = \<const0> ;
  assign Sl5_DBus[18] = \<const0> ;
  assign Sl5_DBus[19] = \<const0> ;
  assign Sl5_DBus[20] = \<const0> ;
  assign Sl5_DBus[21] = \<const0> ;
  assign Sl5_DBus[22] = \<const0> ;
  assign Sl5_DBus[23] = \<const0> ;
  assign Sl5_DBus[24] = \<const0> ;
  assign Sl5_DBus[25] = \<const0> ;
  assign Sl5_DBus[26] = \<const0> ;
  assign Sl5_DBus[27] = \<const0> ;
  assign Sl5_DBus[28] = \<const0> ;
  assign Sl5_DBus[29] = \<const0> ;
  assign Sl5_DBus[30] = \<const0> ;
  assign Sl5_DBus[31] = \<const0> ;
  assign Sl5_Ready = \<const0> ;
  assign Sl5_UE = \<const0> ;
  assign Sl5_Wait = \<const0> ;
  assign Sl6_CE = \<const0> ;
  assign Sl6_DBus[0] = \<const0> ;
  assign Sl6_DBus[1] = \<const0> ;
  assign Sl6_DBus[2] = \<const0> ;
  assign Sl6_DBus[3] = \<const0> ;
  assign Sl6_DBus[4] = \<const0> ;
  assign Sl6_DBus[5] = \<const0> ;
  assign Sl6_DBus[6] = \<const0> ;
  assign Sl6_DBus[7] = \<const0> ;
  assign Sl6_DBus[8] = \<const0> ;
  assign Sl6_DBus[9] = \<const0> ;
  assign Sl6_DBus[10] = \<const0> ;
  assign Sl6_DBus[11] = \<const0> ;
  assign Sl6_DBus[12] = \<const0> ;
  assign Sl6_DBus[13] = \<const0> ;
  assign Sl6_DBus[14] = \<const0> ;
  assign Sl6_DBus[15] = \<const0> ;
  assign Sl6_DBus[16] = \<const0> ;
  assign Sl6_DBus[17] = \<const0> ;
  assign Sl6_DBus[18] = \<const0> ;
  assign Sl6_DBus[19] = \<const0> ;
  assign Sl6_DBus[20] = \<const0> ;
  assign Sl6_DBus[21] = \<const0> ;
  assign Sl6_DBus[22] = \<const0> ;
  assign Sl6_DBus[23] = \<const0> ;
  assign Sl6_DBus[24] = \<const0> ;
  assign Sl6_DBus[25] = \<const0> ;
  assign Sl6_DBus[26] = \<const0> ;
  assign Sl6_DBus[27] = \<const0> ;
  assign Sl6_DBus[28] = \<const0> ;
  assign Sl6_DBus[29] = \<const0> ;
  assign Sl6_DBus[30] = \<const0> ;
  assign Sl6_DBus[31] = \<const0> ;
  assign Sl6_Ready = \<const0> ;
  assign Sl6_UE = \<const0> ;
  assign Sl6_Wait = \<const0> ;
  assign Sl7_CE = \<const0> ;
  assign Sl7_DBus[0] = \<const0> ;
  assign Sl7_DBus[1] = \<const0> ;
  assign Sl7_DBus[2] = \<const0> ;
  assign Sl7_DBus[3] = \<const0> ;
  assign Sl7_DBus[4] = \<const0> ;
  assign Sl7_DBus[5] = \<const0> ;
  assign Sl7_DBus[6] = \<const0> ;
  assign Sl7_DBus[7] = \<const0> ;
  assign Sl7_DBus[8] = \<const0> ;
  assign Sl7_DBus[9] = \<const0> ;
  assign Sl7_DBus[10] = \<const0> ;
  assign Sl7_DBus[11] = \<const0> ;
  assign Sl7_DBus[12] = \<const0> ;
  assign Sl7_DBus[13] = \<const0> ;
  assign Sl7_DBus[14] = \<const0> ;
  assign Sl7_DBus[15] = \<const0> ;
  assign Sl7_DBus[16] = \<const0> ;
  assign Sl7_DBus[17] = \<const0> ;
  assign Sl7_DBus[18] = \<const0> ;
  assign Sl7_DBus[19] = \<const0> ;
  assign Sl7_DBus[20] = \<const0> ;
  assign Sl7_DBus[21] = \<const0> ;
  assign Sl7_DBus[22] = \<const0> ;
  assign Sl7_DBus[23] = \<const0> ;
  assign Sl7_DBus[24] = \<const0> ;
  assign Sl7_DBus[25] = \<const0> ;
  assign Sl7_DBus[26] = \<const0> ;
  assign Sl7_DBus[27] = \<const0> ;
  assign Sl7_DBus[28] = \<const0> ;
  assign Sl7_DBus[29] = \<const0> ;
  assign Sl7_DBus[30] = \<const0> ;
  assign Sl7_DBus[31] = \<const0> ;
  assign Sl7_Ready = \<const0> ;
  assign Sl7_UE = \<const0> ;
  assign Sl7_Wait = \<const0> ;
  assign Sl_CE = \<const0> ;
  assign Sl_DBus[0:31] = BRAM_Din_A;
  assign Sl_UE = \<const0> ;
  assign Sl_Wait = \<const0> ;
  assign UE = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_WEN_A[0]_INST_0 
       (.I0(LMB_WriteStrobe),
        .I1(LMB_BE[0]),
        .O(BRAM_WEN_A[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_WEN_A[1]_INST_0 
       (.I0(LMB_WriteStrobe),
        .I1(LMB_BE[1]),
        .O(BRAM_WEN_A[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_WEN_A[2]_INST_0 
       (.I0(LMB_WriteStrobe),
        .I1(LMB_BE[2]),
        .O(BRAM_WEN_A[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_WEN_A[3]_INST_0 
       (.I0(LMB_WriteStrobe),
        .I1(LMB_BE[3]),
        .O(BRAM_WEN_A[3]));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \No_ECC.Sl_Rdy_i_1 
       (.I0(LMB_Rst),
        .O(\No_ECC.Sl_Rdy_i_1_n_0 ));
  FDRE \No_ECC.Sl_Rdy_reg 
       (.C(LMB_Clk),
        .CE(1'b1),
        .D(\No_ECC.Sl_Rdy_i_1_n_0 ),
        .Q(Sl_Rdy),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \No_ECC.lmb_as_i_1 
       (.I0(LMB_AddrStrobe),
        .I1(LMB_Rst),
        .O(\No_ECC.lmb_as_i_1_n_0 ));
  FDRE \No_ECC.lmb_as_reg 
       (.C(LMB_Clk),
        .CE(1'b1),
        .D(\No_ECC.lmb_as_i_1_n_0 ),
        .Q(lmb_as),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    Sl_Ready_INST_0
       (.I0(lmb_as),
        .I1(Sl_Rdy),
        .O(Sl_Ready));
endmodule

(* CHECK_LICENSE_TYPE = "microblaze_ilmb_bram_if_cntlr_1,lmb_bram_if_cntlr,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "lmb_bram_if_cntlr,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module microblaze_ilmb_bram_if_cntlr_1
   (LMB_Clk,
    LMB_Rst,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_Addr_A,
    BRAM_EN_A,
    BRAM_WEN_A,
    BRAM_Dout_A,
    BRAM_Din_A);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.LMB_Clk CLK" *) (* x_interface_mode = "slave CLK.LMB_Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.LMB_Clk, ASSOCIATED_BUSIF SLMB:SLMB1:SLMB2:SLMB3:SLMB4:SLMB5:SLMB6:SLMB7, ASSOCIATED_RESET LMB_Rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, INSERT_VIP 0" *) input LMB_Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.LMB_Rst RST" *) (* x_interface_mode = "slave RST.LMB_Rst" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.LMB_Rst, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) input LMB_Rst;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB ABUS" *) (* x_interface_mode = "slave SLMB" *) (* x_interface_parameter = "XIL_INTERFACENAME SLMB, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD" *) input [0:31]LMB_ABus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB WRITEDBUS" *) input [0:31]LMB_WriteDBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB ADDRSTROBE" *) input LMB_AddrStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB READSTROBE" *) input LMB_ReadStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB WRITESTROBE" *) input LMB_WriteStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB BE" *) input [0:3]LMB_BE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB READDBUS" *) output [0:31]Sl_DBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB READY" *) output Sl_Ready;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB WAIT" *) output Sl_Wait;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB UE" *) output Sl_UE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB CE" *) output Sl_CE;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT RST" *) (* x_interface_mode = "master BRAM_PORT" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORT, MEM_SIZE 32768, MASTER_TYPE BRAM_CTRL, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output BRAM_Rst_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT CLK" *) output BRAM_Clk_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) output [0:31]BRAM_Addr_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT EN" *) output BRAM_EN_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT WE" *) output [0:3]BRAM_WEN_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT DIN" *) output [0:31]BRAM_Dout_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT" *) input [0:31]BRAM_Din_A;

  wire \<const0> ;
  wire [0:31]BRAM_Addr_A;
  wire BRAM_Clk_A;
  wire [0:31]BRAM_Din_A;
  wire [0:31]BRAM_Dout_A;
  wire BRAM_EN_A;
  wire [0:3]BRAM_WEN_A;
  wire [0:31]LMB_ABus;
  wire LMB_AddrStrobe;
  wire [0:3]LMB_BE;
  wire LMB_Clk;
  wire LMB_Rst;
  wire [0:31]LMB_WriteDBus;
  wire LMB_WriteStrobe;
  wire [0:31]Sl_DBus;
  wire Sl_Ready;
  wire NLW_U0_BRAM_Rst_A_UNCONNECTED;
  wire NLW_U0_CE_UNCONNECTED;
  wire NLW_U0_Interrupt_UNCONNECTED;
  wire NLW_U0_S_AXI_CTRL_ARREADY_UNCONNECTED;
  wire NLW_U0_S_AXI_CTRL_AWREADY_UNCONNECTED;
  wire NLW_U0_S_AXI_CTRL_BVALID_UNCONNECTED;
  wire NLW_U0_S_AXI_CTRL_RVALID_UNCONNECTED;
  wire NLW_U0_S_AXI_CTRL_WREADY_UNCONNECTED;
  wire NLW_U0_Sl1_CE_UNCONNECTED;
  wire NLW_U0_Sl1_Ready_UNCONNECTED;
  wire NLW_U0_Sl1_UE_UNCONNECTED;
  wire NLW_U0_Sl1_Wait_UNCONNECTED;
  wire NLW_U0_Sl2_CE_UNCONNECTED;
  wire NLW_U0_Sl2_Ready_UNCONNECTED;
  wire NLW_U0_Sl2_UE_UNCONNECTED;
  wire NLW_U0_Sl2_Wait_UNCONNECTED;
  wire NLW_U0_Sl3_CE_UNCONNECTED;
  wire NLW_U0_Sl3_Ready_UNCONNECTED;
  wire NLW_U0_Sl3_UE_UNCONNECTED;
  wire NLW_U0_Sl3_Wait_UNCONNECTED;
  wire NLW_U0_Sl4_CE_UNCONNECTED;
  wire NLW_U0_Sl4_Ready_UNCONNECTED;
  wire NLW_U0_Sl4_UE_UNCONNECTED;
  wire NLW_U0_Sl4_Wait_UNCONNECTED;
  wire NLW_U0_Sl5_CE_UNCONNECTED;
  wire NLW_U0_Sl5_Ready_UNCONNECTED;
  wire NLW_U0_Sl5_UE_UNCONNECTED;
  wire NLW_U0_Sl5_Wait_UNCONNECTED;
  wire NLW_U0_Sl6_CE_UNCONNECTED;
  wire NLW_U0_Sl6_Ready_UNCONNECTED;
  wire NLW_U0_Sl6_UE_UNCONNECTED;
  wire NLW_U0_Sl6_Wait_UNCONNECTED;
  wire NLW_U0_Sl7_CE_UNCONNECTED;
  wire NLW_U0_Sl7_Ready_UNCONNECTED;
  wire NLW_U0_Sl7_UE_UNCONNECTED;
  wire NLW_U0_Sl7_Wait_UNCONNECTED;
  wire NLW_U0_Sl_CE_UNCONNECTED;
  wire NLW_U0_Sl_UE_UNCONNECTED;
  wire NLW_U0_Sl_Wait_UNCONNECTED;
  wire NLW_U0_UE_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI_CTRL_BRESP_UNCONNECTED;
  wire [31:0]NLW_U0_S_AXI_CTRL_RDATA_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI_CTRL_RRESP_UNCONNECTED;
  wire [0:31]NLW_U0_Sl1_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Sl2_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Sl3_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Sl4_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Sl5_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Sl6_DBus_UNCONNECTED;
  wire [0:31]NLW_U0_Sl7_DBus_UNCONNECTED;

  assign BRAM_Rst_A = \<const0> ;
  assign Sl_CE = \<const0> ;
  assign Sl_UE = \<const0> ;
  assign Sl_Wait = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ARBITRATION = "0" *) 
  (* C_BASEADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_BRAM_AWIDTH = "32" *) 
  (* C_CE_COUNTER_WIDTH = "0" *) 
  (* C_CE_FAILING_REGISTERS = "0" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_REGISTER = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "1" *) 
  (* C_ECC_STATUS_REGISTERS = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_HIGHADDR = "64'b0000000000000000000000000000000000000000000000000111111111111111" *) 
  (* C_INTERCONNECT = "0" *) 
  (* C_LMB_AWIDTH = "32" *) 
  (* C_LMB_DWIDTH = "32" *) 
  (* C_LMB_PROTOCOL = "0" *) 
  (* C_MASK = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_MASK1 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
  (* C_MASK2 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
  (* C_MASK3 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
  (* C_MASK4 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
  (* C_MASK5 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
  (* C_MASK6 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
  (* C_MASK7 = "64'b0000000000000000000000000000000000000000100000000000000000000000" *) 
  (* C_NUM_LMB = "1" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_BASEADDR = "32'b11111111111111111111111111111111" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_HIGHADDR = "32'b00000000000000000000000000000000" *) 
  (* C_UE_FAILING_REGISTERS = "0" *) 
  (* C_WRITE_ACCESS = "2" *) 
  microblaze_ilmb_bram_if_cntlr_1_lmb_bram_if_cntlr U0
       (.BRAM_Addr_A(BRAM_Addr_A),
        .BRAM_Clk_A(BRAM_Clk_A),
        .BRAM_Din_A(BRAM_Din_A),
        .BRAM_Dout_A(BRAM_Dout_A),
        .BRAM_EN_A(BRAM_EN_A),
        .BRAM_Rst_A(NLW_U0_BRAM_Rst_A_UNCONNECTED),
        .BRAM_WEN_A(BRAM_WEN_A),
        .CE(NLW_U0_CE_UNCONNECTED),
        .Interrupt(NLW_U0_Interrupt_UNCONNECTED),
        .LMB1_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB1_AddrStrobe(1'b0),
        .LMB1_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB1_ReadStrobe(1'b0),
        .LMB1_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB1_WriteStrobe(1'b0),
        .LMB2_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB2_AddrStrobe(1'b0),
        .LMB2_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB2_ReadStrobe(1'b0),
        .LMB2_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB2_WriteStrobe(1'b0),
        .LMB3_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB3_AddrStrobe(1'b0),
        .LMB3_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB3_ReadStrobe(1'b0),
        .LMB3_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB3_WriteStrobe(1'b0),
        .LMB4_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB4_AddrStrobe(1'b0),
        .LMB4_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB4_ReadStrobe(1'b0),
        .LMB4_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB4_WriteStrobe(1'b0),
        .LMB5_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB5_AddrStrobe(1'b0),
        .LMB5_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB5_ReadStrobe(1'b0),
        .LMB5_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB5_WriteStrobe(1'b0),
        .LMB6_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB6_AddrStrobe(1'b0),
        .LMB6_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB6_ReadStrobe(1'b0),
        .LMB6_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB6_WriteStrobe(1'b0),
        .LMB7_ABus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB7_AddrStrobe(1'b0),
        .LMB7_BE({1'b0,1'b0,1'b0,1'b0}),
        .LMB7_ReadStrobe(1'b0),
        .LMB7_WriteDBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LMB7_WriteStrobe(1'b0),
        .LMB_ABus(LMB_ABus),
        .LMB_AddrStrobe(LMB_AddrStrobe),
        .LMB_BE(LMB_BE),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadStrobe(1'b0),
        .LMB_Rst(LMB_Rst),
        .LMB_WriteDBus(LMB_WriteDBus),
        .LMB_WriteStrobe(LMB_WriteStrobe),
        .S_AXI_CTRL_ACLK(1'b0),
        .S_AXI_CTRL_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_CTRL_ARESETN(1'b0),
        .S_AXI_CTRL_ARREADY(NLW_U0_S_AXI_CTRL_ARREADY_UNCONNECTED),
        .S_AXI_CTRL_ARVALID(1'b0),
        .S_AXI_CTRL_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_CTRL_AWREADY(NLW_U0_S_AXI_CTRL_AWREADY_UNCONNECTED),
        .S_AXI_CTRL_AWVALID(1'b0),
        .S_AXI_CTRL_BREADY(1'b0),
        .S_AXI_CTRL_BRESP(NLW_U0_S_AXI_CTRL_BRESP_UNCONNECTED[1:0]),
        .S_AXI_CTRL_BVALID(NLW_U0_S_AXI_CTRL_BVALID_UNCONNECTED),
        .S_AXI_CTRL_RDATA(NLW_U0_S_AXI_CTRL_RDATA_UNCONNECTED[31:0]),
        .S_AXI_CTRL_RREADY(1'b0),
        .S_AXI_CTRL_RRESP(NLW_U0_S_AXI_CTRL_RRESP_UNCONNECTED[1:0]),
        .S_AXI_CTRL_RVALID(NLW_U0_S_AXI_CTRL_RVALID_UNCONNECTED),
        .S_AXI_CTRL_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_CTRL_WREADY(NLW_U0_S_AXI_CTRL_WREADY_UNCONNECTED),
        .S_AXI_CTRL_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_CTRL_WVALID(1'b0),
        .Sl1_CE(NLW_U0_Sl1_CE_UNCONNECTED),
        .Sl1_DBus(NLW_U0_Sl1_DBus_UNCONNECTED[0:31]),
        .Sl1_Ready(NLW_U0_Sl1_Ready_UNCONNECTED),
        .Sl1_UE(NLW_U0_Sl1_UE_UNCONNECTED),
        .Sl1_Wait(NLW_U0_Sl1_Wait_UNCONNECTED),
        .Sl2_CE(NLW_U0_Sl2_CE_UNCONNECTED),
        .Sl2_DBus(NLW_U0_Sl2_DBus_UNCONNECTED[0:31]),
        .Sl2_Ready(NLW_U0_Sl2_Ready_UNCONNECTED),
        .Sl2_UE(NLW_U0_Sl2_UE_UNCONNECTED),
        .Sl2_Wait(NLW_U0_Sl2_Wait_UNCONNECTED),
        .Sl3_CE(NLW_U0_Sl3_CE_UNCONNECTED),
        .Sl3_DBus(NLW_U0_Sl3_DBus_UNCONNECTED[0:31]),
        .Sl3_Ready(NLW_U0_Sl3_Ready_UNCONNECTED),
        .Sl3_UE(NLW_U0_Sl3_UE_UNCONNECTED),
        .Sl3_Wait(NLW_U0_Sl3_Wait_UNCONNECTED),
        .Sl4_CE(NLW_U0_Sl4_CE_UNCONNECTED),
        .Sl4_DBus(NLW_U0_Sl4_DBus_UNCONNECTED[0:31]),
        .Sl4_Ready(NLW_U0_Sl4_Ready_UNCONNECTED),
        .Sl4_UE(NLW_U0_Sl4_UE_UNCONNECTED),
        .Sl4_Wait(NLW_U0_Sl4_Wait_UNCONNECTED),
        .Sl5_CE(NLW_U0_Sl5_CE_UNCONNECTED),
        .Sl5_DBus(NLW_U0_Sl5_DBus_UNCONNECTED[0:31]),
        .Sl5_Ready(NLW_U0_Sl5_Ready_UNCONNECTED),
        .Sl5_UE(NLW_U0_Sl5_UE_UNCONNECTED),
        .Sl5_Wait(NLW_U0_Sl5_Wait_UNCONNECTED),
        .Sl6_CE(NLW_U0_Sl6_CE_UNCONNECTED),
        .Sl6_DBus(NLW_U0_Sl6_DBus_UNCONNECTED[0:31]),
        .Sl6_Ready(NLW_U0_Sl6_Ready_UNCONNECTED),
        .Sl6_UE(NLW_U0_Sl6_UE_UNCONNECTED),
        .Sl6_Wait(NLW_U0_Sl6_Wait_UNCONNECTED),
        .Sl7_CE(NLW_U0_Sl7_CE_UNCONNECTED),
        .Sl7_DBus(NLW_U0_Sl7_DBus_UNCONNECTED[0:31]),
        .Sl7_Ready(NLW_U0_Sl7_Ready_UNCONNECTED),
        .Sl7_UE(NLW_U0_Sl7_UE_UNCONNECTED),
        .Sl7_Wait(NLW_U0_Sl7_Wait_UNCONNECTED),
        .Sl_CE(NLW_U0_Sl_CE_UNCONNECTED),
        .Sl_DBus(Sl_DBus),
        .Sl_Ready(Sl_Ready),
        .Sl_UE(NLW_U0_Sl_UE_UNCONNECTED),
        .Sl_Wait(NLW_U0_Sl_Wait_UNCONNECTED),
        .UE(NLW_U0_UE_UNCONNECTED));
endmodule
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
