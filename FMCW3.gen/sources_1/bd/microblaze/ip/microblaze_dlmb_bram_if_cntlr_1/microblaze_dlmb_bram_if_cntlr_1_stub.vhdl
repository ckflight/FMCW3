-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Sep 13 20:48:31 2025
-- Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
-- Command     : write_vhdl -force -mode synth_stub -rename_top microblaze_dlmb_bram_if_cntlr_1 -prefix
--               microblaze_dlmb_bram_if_cntlr_1_ microblaze_dlmb_bram_if_cntlr_1_stub.vhdl
-- Design      : microblaze_dlmb_bram_if_cntlr_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tiftg256-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microblaze_dlmb_bram_if_cntlr_1 is
  Port ( 
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microblaze_dlmb_bram_if_cntlr_1 : entity is "microblaze_dlmb_bram_if_cntlr_1,lmb_bram_if_cntlr,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of microblaze_dlmb_bram_if_cntlr_1 : entity is "microblaze_dlmb_bram_if_cntlr_1,lmb_bram_if_cntlr,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=lmb_bram_if_cntlr,x_ipVersion=4.0,x_ipCoreRevision=26,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_HIGHADDR=0x0000000000007FFF,C_BASEADDR=0x0000000000000000,C_NUM_LMB=1,C_MASK=0x0000000040000000,C_MASK1=0x0000000000800000,C_MASK2=0x0000000000800000,C_MASK3=0x0000000000800000,C_MASK4=0x0000000000800000,C_MASK5=0x0000000000800000,C_MASK6=0x0000000000800000,C_MASK7=0x0000000000800000,C_LMB_AWIDTH=32,C_LMB_DWIDTH=32,C_LMB_PROTOCOL=0,C_ARBITRATION=0,C_ECC=0,C_INTERCONNECT=0,C_FAULT_INJECT=0,C_CE_FAILING_REGISTERS=0,C_UE_FAILING_REGISTERS=0,C_ECC_STATUS_REGISTERS=0,C_ECC_ONOFF_REGISTER=0,C_ECC_ONOFF_RESET_VALUE=1,C_CE_COUNTER_WIDTH=0,C_WRITE_ACCESS=2,C_BRAM_AWIDTH=32,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microblaze_dlmb_bram_if_cntlr_1 : entity is "yes";
end microblaze_dlmb_bram_if_cntlr_1;

architecture stub of microblaze_dlmb_bram_if_cntlr_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "LMB_Clk,LMB_Rst,LMB_ABus[0:31],LMB_WriteDBus[0:31],LMB_AddrStrobe,LMB_ReadStrobe,LMB_WriteStrobe,LMB_BE[0:3],Sl_DBus[0:31],Sl_Ready,Sl_Wait,Sl_UE,Sl_CE,BRAM_Rst_A,BRAM_Clk_A,BRAM_Addr_A[0:31],BRAM_EN_A,BRAM_WEN_A[0:3],BRAM_Dout_A[0:31],BRAM_Din_A[0:31]";
  attribute x_interface_info : string;
  attribute x_interface_info of LMB_Clk : signal is "xilinx.com:signal:clock:1.0 CLK.LMB_Clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of LMB_Clk : signal is "slave CLK.LMB_Clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of LMB_Clk : signal is "XIL_INTERFACENAME CLK.LMB_Clk, ASSOCIATED_BUSIF SLMB:SLMB1:SLMB2:SLMB3:SLMB4:SLMB5:SLMB6:SLMB7, ASSOCIATED_RESET LMB_Rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of LMB_Rst : signal is "xilinx.com:signal:reset:1.0 RST.LMB_Rst RST";
  attribute x_interface_mode of LMB_Rst : signal is "slave RST.LMB_Rst";
  attribute x_interface_parameter of LMB_Rst : signal is "XIL_INTERFACENAME RST.LMB_Rst, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0";
  attribute x_interface_info of LMB_ABus : signal is "xilinx.com:interface:lmb:1.0 SLMB ABUS";
  attribute x_interface_mode of LMB_ABus : signal is "slave SLMB";
  attribute x_interface_parameter of LMB_ABus : signal is "XIL_INTERFACENAME SLMB, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD";
  attribute x_interface_info of LMB_WriteDBus : signal is "xilinx.com:interface:lmb:1.0 SLMB WRITEDBUS";
  attribute x_interface_info of LMB_AddrStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB ADDRSTROBE";
  attribute x_interface_info of LMB_ReadStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB READSTROBE";
  attribute x_interface_info of LMB_WriteStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB WRITESTROBE";
  attribute x_interface_info of LMB_BE : signal is "xilinx.com:interface:lmb:1.0 SLMB BE";
  attribute x_interface_info of Sl_DBus : signal is "xilinx.com:interface:lmb:1.0 SLMB READDBUS";
  attribute x_interface_info of Sl_Ready : signal is "xilinx.com:interface:lmb:1.0 SLMB READY";
  attribute x_interface_info of Sl_Wait : signal is "xilinx.com:interface:lmb:1.0 SLMB WAIT";
  attribute x_interface_info of Sl_UE : signal is "xilinx.com:interface:lmb:1.0 SLMB UE";
  attribute x_interface_info of Sl_CE : signal is "xilinx.com:interface:lmb:1.0 SLMB CE";
  attribute x_interface_info of BRAM_Rst_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT RST";
  attribute x_interface_mode of BRAM_Rst_A : signal is "master BRAM_PORT";
  attribute x_interface_parameter of BRAM_Rst_A : signal is "XIL_INTERFACENAME BRAM_PORT, MEM_SIZE 32768, MASTER_TYPE BRAM_CTRL, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of BRAM_Clk_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT CLK";
  attribute x_interface_info of BRAM_Addr_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_info of BRAM_EN_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT EN";
  attribute x_interface_info of BRAM_WEN_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT WE";
  attribute x_interface_info of BRAM_Dout_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DIN";
  attribute x_interface_info of BRAM_Din_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "lmb_bram_if_cntlr,Vivado 2025.1";
begin
end;
