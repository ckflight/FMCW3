-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Sep 13 20:48:30 2025
-- Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
-- Command     : write_vhdl -force -mode synth_stub -rename_top microblaze_dlmb_v10_1 -prefix
--               microblaze_dlmb_v10_1_ microblaze_ilmb_v10_1_stub.vhdl
-- Design      : microblaze_ilmb_v10_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tiftg256-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microblaze_dlmb_v10_1 is
  Port ( 
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microblaze_dlmb_v10_1 : entity is "microblaze_ilmb_v10_1,lmb_v10,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of microblaze_dlmb_v10_1 : entity is "microblaze_ilmb_v10_1,lmb_v10,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=lmb_v10,x_ipVersion=3.0,x_ipCoreRevision=15,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_LMB_NUM_SLAVES=1,C_LMB_DWIDTH=32,C_LMB_AWIDTH=32,C_LMB_PROTOCOL=0,C_EXT_RESET_HIGH=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microblaze_dlmb_v10_1 : entity is "yes";
end microblaze_dlmb_v10_1;

architecture stub of microblaze_dlmb_v10_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "LMB_Clk,SYS_Rst,LMB_Rst,M_ABus[0:31],M_ReadStrobe,M_WriteStrobe,M_AddrStrobe,M_DBus[0:31],M_BE[0:3],Sl_DBus[0:31],Sl_Ready[0:0],Sl_Wait[0:0],Sl_UE[0:0],Sl_CE[0:0],LMB_ABus[0:31],LMB_ReadStrobe,LMB_WriteStrobe,LMB_AddrStrobe,LMB_ReadDBus[0:31],LMB_WriteDBus[0:31],LMB_Ready,LMB_Wait,LMB_UE,LMB_CE,LMB_BE[0:3]";
  attribute x_interface_info : string;
  attribute x_interface_info of LMB_Clk : signal is "xilinx.com:signal:clock:1.0 CLK.LMB_Clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of LMB_Clk : signal is "slave CLK.LMB_Clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of LMB_Clk : signal is "XIL_INTERFACENAME CLK.LMB_Clk, ASSOCIATED_BUSIF LMB_Sl_0:LMB_Sl_1:LMB_Sl_2:LMB_Sl_3:LMB_Sl_4:LMB_Sl_5:LMB_Sl_6:LMB_Sl_7:LMB_Sl_8:LMB_Sl_9:LMB_Sl_10:LMB_Sl_11:LMB_Sl_12:LMB_Sl_13:LMB_Sl_14:LMB_Sl_15:LMB_M, ASSOCIATED_RESET SYS_Rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of SYS_Rst : signal is "xilinx.com:signal:reset:1.0 RST.SYS_Rst RST";
  attribute x_interface_mode of SYS_Rst : signal is "slave RST.SYS_Rst";
  attribute x_interface_parameter of SYS_Rst : signal is "XIL_INTERFACENAME RST.SYS_Rst, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0";
  attribute x_interface_info of LMB_Rst : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 RST, xilinx.com:interface:lmb:1.0 LMB_M RST";
  attribute x_interface_mode of LMB_Rst : signal is "mirroredMaster LMB_M";
  attribute x_interface_parameter of LMB_Rst : signal is "XIL_INTERFACENAME LMB_Sl_0, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD, XIL_INTERFACENAME LMB_M, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_ONLY, PROTOCOL STANDARD";
  attribute x_interface_info of M_ABus : signal is "xilinx.com:interface:lmb:1.0 LMB_M ABUS";
  attribute x_interface_info of M_ReadStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_M READSTROBE";
  attribute x_interface_info of M_WriteStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_M WRITESTROBE";
  attribute x_interface_info of M_AddrStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_M ADDRSTROBE";
  attribute x_interface_info of M_DBus : signal is "xilinx.com:interface:lmb:1.0 LMB_M WRITEDBUS";
  attribute x_interface_info of M_BE : signal is "xilinx.com:interface:lmb:1.0 LMB_M BE";
  attribute x_interface_info of Sl_DBus : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READDBUS";
  attribute x_interface_info of Sl_Ready : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READY";
  attribute x_interface_info of Sl_Wait : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WAIT";
  attribute x_interface_info of Sl_UE : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 UE";
  attribute x_interface_info of Sl_CE : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 CE";
  attribute x_interface_info of LMB_ABus : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 ABUS";
  attribute x_interface_info of LMB_ReadStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READSTROBE";
  attribute x_interface_info of LMB_WriteStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WRITESTROBE";
  attribute x_interface_info of LMB_AddrStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 ADDRSTROBE";
  attribute x_interface_info of LMB_ReadDBus : signal is "xilinx.com:interface:lmb:1.0 LMB_M READDBUS";
  attribute x_interface_info of LMB_WriteDBus : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WRITEDBUS";
  attribute x_interface_info of LMB_Ready : signal is "xilinx.com:interface:lmb:1.0 LMB_M READY";
  attribute x_interface_info of LMB_Wait : signal is "xilinx.com:interface:lmb:1.0 LMB_M WAIT";
  attribute x_interface_info of LMB_UE : signal is "xilinx.com:interface:lmb:1.0 LMB_M UE";
  attribute x_interface_info of LMB_CE : signal is "xilinx.com:interface:lmb:1.0 LMB_M CE";
  attribute x_interface_info of LMB_BE : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 BE";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "lmb_v10,Vivado 2025.1";
begin
end;
