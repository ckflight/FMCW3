-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Sep 13 20:48:39 2025
-- Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
-- Command     : write_vhdl -force -mode synth_stub -rename_top microblaze_microblaze_0_1 -prefix
--               microblaze_microblaze_0_1_ microblaze_microblaze_0_1_stub.vhdl
-- Design      : microblaze_microblaze_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tiftg256-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microblaze_microblaze_0_1 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microblaze_microblaze_0_1 : entity is "microblaze_microblaze_0_1,MicroBlaze,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of microblaze_microblaze_0_1 : entity is "microblaze_microblaze_0_1,MicroBlaze,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=microblaze,x_ipVersion=11.0,x_ipCoreRevision=15,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_SCO=0,C_FREQ=100000000,C_USE_CONFIG_RESET=0,C_NUM_SYNC_FF_CLK=2,C_NUM_SYNC_FF_CLK_IRQ=1,C_NUM_SYNC_FF_CLK_DEBUG=2,C_NUM_SYNC_FF_DBG_CLK=1,C_NUM_SYNC_FF_DBG_TRACE_CLK=2,C_FAULT_TOLERANT=0,C_ECC_USE_CE_EXCEPTION=0,C_LOCKSTEP_SLAVE=0,C_LOCKSTEP_MASTER=0,C_TEMPORAL_DEPTH=0,C_ENDIANNESS=1,C_FAMILY=artix7,C_PART=xc7a15tiftg256-1l,C_DATA_SIZE=32,C_LMB_DATA_SIZE=32,C_INSTR_SIZE=32,C_IADDR_SIZE=32,C_PIADDR_SIZE=32,C_DADDR_SIZE=32,C_INSTANCE=microblaze_microblaze_0_1,C_AVOID_PRIMITIVES=0,C_AREA_OPTIMIZED=1,C_OPTIMIZATION=0,C_INTERCONNECT=2,C_BASE_VECTORS=0x0000000000000000,C_M_AXI_DP_THREAD_ID_WIDTH=1,C_M_AXI_DP_DATA_WIDTH=32,C_M_AXI_DP_ADDR_WIDTH=32,C_M_AXI_DP_EXCLUSIVE_ACCESS=0,C_M_AXI_D_BUS_EXCEPTION=0,C_M_AXI_IP_THREAD_ID_WIDTH=1,C_M_AXI_IP_DATA_WIDTH=32,C_M_AXI_IP_ADDR_WIDTH=32,C_M_AXI_I_BUS_EXCEPTION=0,C_D_LMB=1,C_D_LMB_PROTOCOL=0,C_D_AXI=1,C_I_LMB=1,C_I_LMB_PROTOCOL=0,C_I_AXI=0,G_TEMPLATE_LIST=8,C_USE_MSR_INSTR=1,C_USE_PCMP_INSTR=1,C_USE_BARREL=1,C_USE_DIV=0,C_USE_HW_MUL=1,C_USE_FPU=0,C_USE_REORDER_INSTR=0,C_UNALIGNED_EXCEPTIONS=0,C_ILL_OPCODE_EXCEPTION=0,C_DIV_ZERO_EXCEPTION=0,C_FPU_EXCEPTION=0,C_FSL_LINKS=0,C_USE_EXTENDED_FSL_INSTR=0,C_FSL_EXCEPTION=0,C_USE_STACK_PROTECTION=0,C_IMPRECISE_EXCEPTIONS=0,C_USE_INTERRUPT=0,C_USE_EXT_BRK=0,C_USE_EXT_NM_BRK=0,C_USE_NON_SECURE=0,C_USE_MMU=0,C_MMU_DTLB_SIZE=2,C_MMU_ITLB_SIZE=1,C_MMU_TLB_ACCESS=3,C_MMU_ZONES=2,C_MMU_PRIVILEGED_INSTR=0,C_USE_BRANCH_TARGET_CACHE=0,C_BRANCH_TARGET_CACHE_SIZE=0,C_PC_WIDTH=32,C_PVR=0,C_PVR_USER1=0x00,C_PVR_USER2=0x00000000,C_DYNAMIC_BUS_SIZING=0,C_RESET_MSR=0x00000000,C_OPCODE_0x0_ILLEGAL=0,C_DEBUG_ENABLED=1,C_DEBUG_INTERFACE=0,C_NUMBER_OF_PC_BRK=1,C_NUMBER_OF_RD_ADDR_BRK=0,C_NUMBER_OF_WR_ADDR_BRK=0,C_DEBUG_EVENT_COUNTERS=5,C_DEBUG_LATENCY_COUNTERS=1,C_DEBUG_COUNTER_WIDTH=32,C_DEBUG_TRACE_SIZE=8192,C_DEBUG_EXTERNAL_TRACE=0,C_DEBUG_TRACE_ASYNC_RESET=0,C_DEBUG_PROFILE_SIZE=0,C_INTERRUPT_IS_EDGE=0,C_EDGE_IS_POSITIVE=1,C_ASYNC_INTERRUPT=1,C_ASYNC_WAKEUP=3,C_M0_AXIS_DATA_WIDTH=32,C_S0_AXIS_DATA_WIDTH=32,C_M1_AXIS_DATA_WIDTH=32,C_S1_AXIS_DATA_WIDTH=32,C_M2_AXIS_DATA_WIDTH=32,C_S2_AXIS_DATA_WIDTH=32,C_M3_AXIS_DATA_WIDTH=32,C_S3_AXIS_DATA_WIDTH=32,C_M4_AXIS_DATA_WIDTH=32,C_S4_AXIS_DATA_WIDTH=32,C_M5_AXIS_DATA_WIDTH=32,C_S5_AXIS_DATA_WIDTH=32,C_M6_AXIS_DATA_WIDTH=32,C_S6_AXIS_DATA_WIDTH=32,C_M7_AXIS_DATA_WIDTH=32,C_S7_AXIS_DATA_WIDTH=32,C_M8_AXIS_DATA_WIDTH=32,C_S8_AXIS_DATA_WIDTH=32,C_M9_AXIS_DATA_WIDTH=32,C_S9_AXIS_DATA_WIDTH=32,C_M10_AXIS_DATA_WIDTH=32,C_S10_AXIS_DATA_WIDTH=32,C_M11_AXIS_DATA_WIDTH=32,C_S11_AXIS_DATA_WIDTH=32,C_M12_AXIS_DATA_WIDTH=32,C_S12_AXIS_DATA_WIDTH=32,C_M13_AXIS_DATA_WIDTH=32,C_S13_AXIS_DATA_WIDTH=32,C_M14_AXIS_DATA_WIDTH=32,C_S14_AXIS_DATA_WIDTH=32,C_M15_AXIS_DATA_WIDTH=32,C_S15_AXIS_DATA_WIDTH=32,C_ICACHE_BASEADDR=0x0000000000000000,C_ICACHE_HIGHADDR=0x000000003fffffff,C_USE_ICACHE=0,C_ALLOW_ICACHE_WR=1,C_ADDR_TAG_BITS=0,C_CACHE_BYTE_SIZE=4096,C_ICACHE_LINE_LEN=4,C_ICACHE_ALWAYS_USED=1,C_ICACHE_STREAMS=0,C_ICACHE_VICTIMS=0,C_ICACHE_FORCE_TAG_LUTRAM=0,C_ICACHE_DATA_WIDTH=0,C_M_AXI_IC_THREAD_ID_WIDTH=1,C_M_AXI_IC_DATA_WIDTH=32,C_M_AXI_IC_ADDR_WIDTH=32,C_M_AXI_IC_USER_VALUE=31,C_M_AXI_IC_AWUSER_WIDTH=5,C_M_AXI_IC_ARUSER_WIDTH=5,C_M_AXI_IC_WUSER_WIDTH=1,C_M_AXI_IC_RUSER_WIDTH=1,C_M_AXI_IC_BUSER_WIDTH=1,C_DCACHE_BASEADDR=0x0000000000000000,C_DCACHE_HIGHADDR=0x000000003fffffff,C_USE_DCACHE=0,C_ALLOW_DCACHE_WR=1,C_DCACHE_ADDR_TAG=0,C_DCACHE_BYTE_SIZE=4096,C_DCACHE_LINE_LEN=4,C_DCACHE_ALWAYS_USED=1,C_DCACHE_USE_WRITEBACK=0,C_DCACHE_VICTIMS=0,C_DCACHE_FORCE_TAG_LUTRAM=0,C_DCACHE_DATA_WIDTH=0,C_M_AXI_DC_THREAD_ID_WIDTH=1,C_M_AXI_DC_DATA_WIDTH=32,C_M_AXI_DC_ADDR_WIDTH=32,C_M_AXI_DC_EXCLUSIVE_ACCESS=0,C_M_AXI_DC_USER_VALUE=31,C_M_AXI_DC_AWUSER_WIDTH=5,C_M_AXI_DC_ARUSER_WIDTH=5,C_M_AXI_DC_WUSER_WIDTH=1,C_M_AXI_DC_RUSER_WIDTH=1,C_M_AXI_DC_BUSER_WIDTH=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microblaze_microblaze_0_1 : entity is "yes";
end microblaze_microblaze_0_1;

architecture stub of microblaze_microblaze_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Clk,Reset,Interrupt,Interrupt_Address[0:31],Interrupt_Ack[0:1],Instr_Addr[0:31],Instr[0:31],IFetch,I_AS,IReady,IWAIT,ICE,IUE,Data_Addr[0:31],Data_Read[0:31],Data_Write[0:31],D_AS,Read_Strobe,Write_Strobe,DReady,DWait,DCE,DUE,Byte_Enable[0:3],M_AXI_DP_AWADDR[31:0],M_AXI_DP_AWPROT[2:0],M_AXI_DP_AWVALID,M_AXI_DP_AWREADY,M_AXI_DP_WDATA[31:0],M_AXI_DP_WSTRB[3:0],M_AXI_DP_WVALID,M_AXI_DP_WREADY,M_AXI_DP_BRESP[1:0],M_AXI_DP_BVALID,M_AXI_DP_BREADY,M_AXI_DP_ARADDR[31:0],M_AXI_DP_ARPROT[2:0],M_AXI_DP_ARVALID,M_AXI_DP_ARREADY,M_AXI_DP_RDATA[31:0],M_AXI_DP_RRESP[1:0],M_AXI_DP_RVALID,M_AXI_DP_RREADY,Dbg_Clk,Dbg_TDI,Dbg_TDO,Dbg_Reg_En[0:7],Dbg_Shift,Dbg_Capture,Dbg_Update,Debug_Rst,Dbg_Disable";
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of Clk : signal is "slave CLK.CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF M0_AXIS:S0_AXIS:M1_AXIS:S1_AXIS:M2_AXIS:S2_AXIS:M3_AXIS:S3_AXIS:M4_AXIS:S4_AXIS:M5_AXIS:S5_AXIS:M6_AXIS:S6_AXIS:M7_AXIS:S7_AXIS:M8_AXIS:S8_AXIS:M9_AXIS:S9_AXIS:M10_AXIS:S10_AXIS:M11_AXIS:S11_AXIS:M12_AXIS:S12_AXIS:M13_AXIS:S13_AXIS:M14_AXIS:S14_AXIS:M15_AXIS:S15_AXIS:DLMB:ILMB:M_AXI_DP:M_AXI_IP:M_AXI_DC:M_AXI_IC:M_ACE_DC:M_ACE_IC:MON_DLMB:MON_ILMB:MON_AXI_DP:MON_AXI_IP:MON_AXI_DC:MON_AXI_IC:MON_ACE_DC:MON_ACE_IC, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute x_interface_mode of Reset : signal is "slave RST.RESET";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0";
  attribute x_interface_info of Interrupt : signal is "xilinx.com:interface:mbinterrupt:1.0 INTERRUPT INTERRUPT";
  attribute x_interface_mode of Interrupt : signal is "slave INTERRUPT";
  attribute x_interface_parameter of Interrupt : signal is "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, LOW_LATENCY 0";
  attribute x_interface_info of Interrupt_Address : signal is "xilinx.com:interface:mbinterrupt:1.0 INTERRUPT ADDRESS";
  attribute x_interface_info of Interrupt_Ack : signal is "xilinx.com:interface:mbinterrupt:1.0 INTERRUPT ACK";
  attribute x_interface_info of Instr_Addr : signal is "xilinx.com:interface:lmb:1.0 ILMB ABUS";
  attribute x_interface_mode of Instr_Addr : signal is "master ILMB";
  attribute x_interface_parameter of Instr_Addr : signal is "XIL_INTERFACENAME ILMB, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL STANDARD, READ_WRITE_MODE READ_ONLY";
  attribute x_interface_info of Instr : signal is "xilinx.com:interface:lmb:1.0 ILMB READDBUS";
  attribute x_interface_info of IFetch : signal is "xilinx.com:interface:lmb:1.0 ILMB READSTROBE";
  attribute x_interface_info of I_AS : signal is "xilinx.com:interface:lmb:1.0 ILMB ADDRSTROBE";
  attribute x_interface_info of IReady : signal is "xilinx.com:interface:lmb:1.0 ILMB READY";
  attribute x_interface_info of IWAIT : signal is "xilinx.com:interface:lmb:1.0 ILMB WAIT";
  attribute x_interface_info of ICE : signal is "xilinx.com:interface:lmb:1.0 ILMB CE";
  attribute x_interface_info of IUE : signal is "xilinx.com:interface:lmb:1.0 ILMB UE";
  attribute x_interface_info of Data_Addr : signal is "xilinx.com:interface:lmb:1.0 DLMB ABUS";
  attribute x_interface_mode of Data_Addr : signal is "master DLMB";
  attribute x_interface_parameter of Data_Addr : signal is "XIL_INTERFACENAME DLMB, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL STANDARD, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of Data_Read : signal is "xilinx.com:interface:lmb:1.0 DLMB READDBUS";
  attribute x_interface_info of Data_Write : signal is "xilinx.com:interface:lmb:1.0 DLMB WRITEDBUS";
  attribute x_interface_info of D_AS : signal is "xilinx.com:interface:lmb:1.0 DLMB ADDRSTROBE";
  attribute x_interface_info of Read_Strobe : signal is "xilinx.com:interface:lmb:1.0 DLMB READSTROBE";
  attribute x_interface_info of Write_Strobe : signal is "xilinx.com:interface:lmb:1.0 DLMB WRITESTROBE";
  attribute x_interface_info of DReady : signal is "xilinx.com:interface:lmb:1.0 DLMB READY";
  attribute x_interface_info of DWait : signal is "xilinx.com:interface:lmb:1.0 DLMB WAIT";
  attribute x_interface_info of DCE : signal is "xilinx.com:interface:lmb:1.0 DLMB CE";
  attribute x_interface_info of DUE : signal is "xilinx.com:interface:lmb:1.0 DLMB UE";
  attribute x_interface_info of Byte_Enable : signal is "xilinx.com:interface:lmb:1.0 DLMB BE";
  attribute x_interface_info of M_AXI_DP_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP AWADDR";
  attribute x_interface_mode of M_AXI_DP_AWADDR : signal is "master M_AXI_DP";
  attribute x_interface_parameter of M_AXI_DP_AWADDR : signal is "XIL_INTERFACENAME M_AXI_DP, ID_WIDTH 0, READ_WRITE_MODE READ_WRITE, SUPPORTS_NARROW_BURST 0, HAS_BURST 0, HAS_LOCK 0, DATA_WIDTH 32, ADDR_WIDTH 32, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, MAX_BURST_LENGTH 1, PROTOCOL AXI4LITE, FREQ_HZ 100000000, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_DP_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP AWPROT";
  attribute x_interface_info of M_AXI_DP_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP AWVALID";
  attribute x_interface_info of M_AXI_DP_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP AWREADY";
  attribute x_interface_info of M_AXI_DP_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP WDATA";
  attribute x_interface_info of M_AXI_DP_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP WSTRB";
  attribute x_interface_info of M_AXI_DP_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP WVALID";
  attribute x_interface_info of M_AXI_DP_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP WREADY";
  attribute x_interface_info of M_AXI_DP_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP BRESP";
  attribute x_interface_info of M_AXI_DP_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP BVALID";
  attribute x_interface_info of M_AXI_DP_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP BREADY";
  attribute x_interface_info of M_AXI_DP_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP ARADDR";
  attribute x_interface_info of M_AXI_DP_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP ARPROT";
  attribute x_interface_info of M_AXI_DP_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP ARVALID";
  attribute x_interface_info of M_AXI_DP_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP ARREADY";
  attribute x_interface_info of M_AXI_DP_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP RDATA";
  attribute x_interface_info of M_AXI_DP_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP RRESP";
  attribute x_interface_info of M_AXI_DP_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP RVALID";
  attribute x_interface_info of M_AXI_DP_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_DP RREADY";
  attribute x_interface_info of Dbg_Clk : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG CLK";
  attribute x_interface_mode of Dbg_Clk : signal is "slave DEBUG";
  attribute x_interface_info of Dbg_TDI : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG TDI";
  attribute x_interface_info of Dbg_TDO : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG TDO";
  attribute x_interface_info of Dbg_Reg_En : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG REG_EN";
  attribute x_interface_info of Dbg_Shift : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG SHIFT";
  attribute x_interface_info of Dbg_Capture : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG CAPTURE";
  attribute x_interface_info of Dbg_Update : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG UPDATE";
  attribute x_interface_info of Debug_Rst : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG RST";
  attribute x_interface_info of Dbg_Disable : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG DISABLE";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "MicroBlaze,Vivado 2025.1";
begin
end;
