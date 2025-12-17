-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Dec 17 14:19:22 2025
-- Host        : DESKTOP-BEUFM6D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/CK/Desktop/Vivado/FMCW3/FMCW3.gen/sources_1/bd/microblaze/ip/microblaze_axi_intc_0_0/microblaze_axi_intc_0_0_stub.vhdl
-- Design      : microblaze_axi_intc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microblaze_axi_intc_0_0 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microblaze_axi_intc_0_0 : entity is "microblaze_axi_intc_0_0,axi_intc,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of microblaze_axi_intc_0_0 : entity is "microblaze_axi_intc_0_0,axi_intc,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_intc,x_ipVersion=4.1,x_ipCoreRevision=22,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_INSTANCE=microblaze_axi_intc_0_0,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_NUM_INTR_INPUTS=2,C_NUM_SW_INTR=0,C_KIND_OF_INTR=0xfffffffc,C_KIND_OF_EDGE=0xffffffff,C_KIND_OF_LVL=0xffffffff,C_ASYNC_INTR=0xFFFFFFFC,C_NUM_SYNC_FF=2,C_ADDR_WIDTH=32,C_IVAR_RESET_VALUE=0x0000000000000010,C_ENABLE_ASYNC=0,C_HAS_IPR=1,C_HAS_SIE=1,C_HAS_CIE=1,C_HAS_IVR=1,C_HAS_ILR=0,C_IRQ_IS_LEVEL=1,C_IRQ_ACTIVE=0x1,C_DISABLE_SYNCHRONIZERS=0,C_MB_CLK_NOT_CONNECTED=1,C_HAS_FAST=0,C_EN_CASCADE_MODE=0,C_CASCADE_MASTER=0}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microblaze_axi_intc_0_0 : entity is "yes";
end microblaze_axi_intc_0_0;

architecture stub of microblaze_axi_intc_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[8:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[8:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,intr[1:0],irq";
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s_axi_aclk : signal is "slave s_axi_aclk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_resetn RST";
  attribute x_interface_mode of s_axi_aresetn : signal is "slave s_resetn";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_mode of s_axi_awaddr : signal is "slave s_axi";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of intr : signal is "xilinx.com:signal:interrupt:1.0 interrupt_input INTERRUPT";
  attribute x_interface_mode of intr : signal is "slave interrupt_input";
  attribute x_interface_parameter of intr : signal is "XIL_INTERFACENAME interrupt_input, SENSITIVITY LEVEL_HIGH:LEVEL_HIGH, PortWidth 2";
  attribute x_interface_info of irq : signal is "xilinx.com:interface:mbinterrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_mode of irq : signal is "master interrupt";
  attribute x_interface_parameter of irq : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LOW_LATENCY 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "axi_intc,Vivado 2025.2";
begin
end;
