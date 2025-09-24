// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Sep 13 20:48:30 2025
// Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
// Command     : write_verilog -force -mode synth_stub -rename_top microblaze_ilmb_v10_1 -prefix
//               microblaze_ilmb_v10_1_ microblaze_ilmb_v10_1_stub.v
// Design      : microblaze_ilmb_v10_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tiftg256-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "microblaze_ilmb_v10_1,lmb_v10,{}" *) (* core_generation_info = "microblaze_ilmb_v10_1,lmb_v10,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=lmb_v10,x_ipVersion=3.0,x_ipCoreRevision=15,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_LMB_NUM_SLAVES=1,C_LMB_DWIDTH=32,C_LMB_AWIDTH=32,C_LMB_PROTOCOL=0,C_EXT_RESET_HIGH=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "lmb_v10,Vivado 2025.1" *) 
module microblaze_ilmb_v10_1(LMB_Clk, SYS_Rst, LMB_Rst, M_ABus, M_ReadStrobe, 
  M_WriteStrobe, M_AddrStrobe, M_DBus, M_BE, Sl_DBus, Sl_Ready, Sl_Wait, Sl_UE, Sl_CE, LMB_ABus, 
  LMB_ReadStrobe, LMB_WriteStrobe, LMB_AddrStrobe, LMB_ReadDBus, LMB_WriteDBus, LMB_Ready, 
  LMB_Wait, LMB_UE, LMB_CE, LMB_BE)
/* synthesis syn_black_box black_box_pad_pin="SYS_Rst,LMB_Rst,M_ABus[0:31],M_ReadStrobe,M_WriteStrobe,M_AddrStrobe,M_DBus[0:31],M_BE[0:3],Sl_DBus[0:31],Sl_Ready[0:0],Sl_Wait[0:0],Sl_UE[0:0],Sl_CE[0:0],LMB_ABus[0:31],LMB_ReadStrobe,LMB_WriteStrobe,LMB_AddrStrobe,LMB_ReadDBus[0:31],LMB_WriteDBus[0:31],LMB_Ready,LMB_Wait,LMB_UE,LMB_CE,LMB_BE[0:3]" */
/* synthesis syn_force_seq_prim="LMB_Clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.LMB_Clk CLK" *) (* x_interface_mode = "slave CLK.LMB_Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.LMB_Clk, ASSOCIATED_BUSIF LMB_Sl_0:LMB_Sl_1:LMB_Sl_2:LMB_Sl_3:LMB_Sl_4:LMB_Sl_5:LMB_Sl_6:LMB_Sl_7:LMB_Sl_8:LMB_Sl_9:LMB_Sl_10:LMB_Sl_11:LMB_Sl_12:LMB_Sl_13:LMB_Sl_14:LMB_Sl_15:LMB_M, ASSOCIATED_RESET SYS_Rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, INSERT_VIP 0" *) input LMB_Clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.SYS_Rst RST" *) (* x_interface_mode = "slave RST.SYS_Rst" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.SYS_Rst, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) input SYS_Rst;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 RST, xilinx.com:interface:lmb:1.0 LMB_M RST" *) (* x_interface_mode = "mirroredMaster LMB_M" *) (* x_interface_parameter = "XIL_INTERFACENAME LMB_Sl_0, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD, XIL_INTERFACENAME LMB_M, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_ONLY, PROTOCOL STANDARD" *) output LMB_Rst;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M ABUS" *) input [0:31]M_ABus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M READSTROBE" *) input M_ReadStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M WRITESTROBE" *) input M_WriteStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M ADDRSTROBE" *) input M_AddrStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M WRITEDBUS" *) input [0:31]M_DBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M BE" *) input [0:3]M_BE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READDBUS" *) input [0:31]Sl_DBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READY" *) input [0:0]Sl_Ready;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WAIT" *) input [0:0]Sl_Wait;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 UE" *) input [0:0]Sl_UE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 CE" *) input [0:0]Sl_CE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 ABUS" *) output [0:31]LMB_ABus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READSTROBE" *) output LMB_ReadStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WRITESTROBE" *) output LMB_WriteStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 ADDRSTROBE" *) output LMB_AddrStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M READDBUS" *) output [0:31]LMB_ReadDBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WRITEDBUS" *) output [0:31]LMB_WriteDBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M READY" *) output LMB_Ready;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M WAIT" *) output LMB_Wait;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M UE" *) output LMB_UE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M CE" *) output LMB_CE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 BE" *) output [0:3]LMB_BE;
endmodule
