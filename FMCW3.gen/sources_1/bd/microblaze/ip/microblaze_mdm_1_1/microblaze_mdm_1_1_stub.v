// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Sep 13 20:48:32 2025
// Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
// Command     : write_verilog -force -mode synth_stub -rename_top microblaze_mdm_1_1 -prefix
//               microblaze_mdm_1_1_ microblaze_mdm_1_1_stub.v
// Design      : microblaze_mdm_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tiftg256-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "microblaze_mdm_1_1,MDM,{}" *) (* core_generation_info = "microblaze_mdm_1_1,MDM,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=mdm,x_ipVersion=3.2,x_ipCoreRevision=28,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_DEVICE=xc7a15ti,C_JTAG_CHAIN=2,C_USE_BSCAN=0,C_BSCANID=76547328,C_DEBUG_INTERFACE=0,C_USE_CONFIG_RESET=0,C_AVOID_PRIMITIVES=0,C_INTERCONNECT=2,C_MB_DBG_PORTS=1,C_USE_UART=0,C_DBG_REG_ACCESS=0,C_DBG_MEM_ACCESS=0,C_USE_CROSS_TRIGGER=0,C_EXT_TRIG_RESET_VALUE=0xF1234,C_TRACE_OUTPUT=0,C_TRACE_DATA_WIDTH=32,C_TRACE_CLK_FREQ_HZ=200000000,C_TRACE_CLK_OUT_PHASE=90,C_TRACE_ASYNC_RESET=0,C_TRACE_PROTOCOL=1,C_TRACE_ID=110,C_S_AXI_ADDR_WIDTH=4,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ACLK_FREQ_HZ=100000000,C_M_AXI_ADDR_WIDTH=32,C_M_AXI_DATA_WIDTH=32,C_M_AXI_THREAD_ID_WIDTH=1,C_ADDR_SIZE=32,C_DATA_SIZE=32,C_LMB_PROTOCOL=0,C_M_AXIS_DATA_WIDTH=32,C_M_AXIS_ID_WIDTH=7}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "MDM,Vivado 2025.1" *) 
module microblaze_mdm_1_1(Debug_SYS_Rst, Dbg_Clk_0, Dbg_TDI_0, Dbg_TDO_0, 
  Dbg_Reg_En_0, Dbg_Capture_0, Dbg_Shift_0, Dbg_Update_0, Dbg_Rst_0, Dbg_Disable_0)
/* synthesis syn_black_box black_box_pad_pin="Debug_SYS_Rst,Dbg_TDI_0,Dbg_TDO_0,Dbg_Reg_En_0[0:7],Dbg_Capture_0,Dbg_Shift_0,Dbg_Rst_0,Dbg_Disable_0" */
/* synthesis syn_force_seq_prim="Dbg_Clk_0" */
/* synthesis syn_force_seq_prim="Dbg_Update_0" */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.Debug_SYS_Rst RST" *) (* x_interface_mode = "master RST.Debug_SYS_Rst" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.Debug_SYS_Rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output Debug_SYS_Rst;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 CLK" *) (* x_interface_mode = "master MBDEBUG_0" *) output Dbg_Clk_0 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 TDI" *) output Dbg_TDI_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 TDO" *) input Dbg_TDO_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 REG_EN" *) output [0:7]Dbg_Reg_En_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 CAPTURE" *) output Dbg_Capture_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 SHIFT" *) output Dbg_Shift_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 UPDATE" *) output Dbg_Update_0 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 RST" *) output Dbg_Rst_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 DISABLE" *) output Dbg_Disable_0;
endmodule
