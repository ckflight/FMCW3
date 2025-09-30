-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Sep 30 14:35:17 2025
-- Host        : DESKTOP-BEUFM6D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fir_compiler_0_stub.vhdl
-- Design      : fir_compiler_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tiftg256-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fir_compiler_0,fir_compiler_v7_2_24,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fir_compiler_0,fir_compiler_v7_2_24,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=fir_compiler,x_ipVersion=7.2,x_ipCoreRevision=24,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=artix7,C_ELABORATION_DIR=./,C_COMPONENT_NAME=fir_compiler_0,C_COEF_FILE=fir_compiler_0.mif,C_COEF_FILE_LINES=60,C_FILTER_TYPE=1,C_INTERP_RATE=1,C_DECIM_RATE=20,C_ZERO_PACKING_FACTOR=1,C_SYMMETRY=1,C_NUM_FILTS=1,C_NUM_TAPS=120,C_NUM_CHANNELS=2,C_CHANNEL_PATTERN=fixed,C_ROUND_MODE=4,C_COEF_RELOAD=0,C_NUM_RELOAD_SLOTS=1,C_COL_MODE=1,C_COL_PIPE_LEN=4,C_COL_CONFIG=3,C_OPTIMIZATION=0,C_DATA_PATH_WIDTHS=16_16,C_DATA_IP_PATH_WIDTHS=32,C_DATA_PX_PATH_WIDTHS=32,C_DATA_WIDTH=32,C_COEF_PATH_WIDTHS=16_16,C_COEF_WIDTH=16,C_DATA_PATH_SRC=0_1,C_COEF_PATH_SRC=0_0,C_PX_PATH_SRC=0_1,C_DATA_PATH_SIGN=1_1,C_COEF_PATH_SIGN=0_0,C_ACCUM_PATH_WIDTHS=37_37,C_OUTPUT_WIDTH=32,C_OUTPUT_PATH_WIDTHS=32,C_ACCUM_OP_PATH_WIDTHS=53,C_EXT_MULT_CNFG=0_1_0_16,C_DATA_PATH_PSAMP_SRC=0,C_OP_PATH_PSAMP_SRC=0,C_NUM_MADDS=3,C_OPT_MADDS=none,C_OVERSAMPLING_RATE=1,C_INPUT_RATE=1,C_OUTPUT_RATE=20,C_DATA_MEMTYPE=0,C_COEF_MEMTYPE=2,C_IPBUFF_MEMTYPE=2,C_OPBUFF_MEMTYPE=0,C_DATAPATH_MEMTYPE=2,C_MEM_ARRANGEMENT=1,C_DATA_MEM_PACKING=0,C_COEF_MEM_PACKING=0,C_FILTS_PACKED=0,C_LATENCY=12,C_HAS_ARESETn=0,C_HAS_ACLKEN=0,C_DATA_HAS_TLAST=0,C_S_DATA_HAS_FIFO=1,C_S_DATA_HAS_TUSER=0,C_S_DATA_TDATA_WIDTH=32,C_S_DATA_TUSER_WIDTH=1,C_M_DATA_HAS_TREADY=0,C_M_DATA_HAS_TUSER=0,C_M_DATA_TDATA_WIDTH=32,C_M_DATA_TUSER_WIDTH=1,C_HAS_CONFIG_CHANNEL=0,C_CONFIG_SYNC_MODE=0,C_CONFIG_PACKET_SIZE=0,C_CONFIG_TDATA_WIDTH=1,C_RELOAD_TDATA_WIDTH=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_data_tvalid,s_axis_data_tready,s_axis_data_tdata[31:0],m_axis_data_tvalid,m_axis_data_tdata[31:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of aclk : signal is "slave aclk_intf";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of s_axis_data_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID";
  attribute x_interface_mode of s_axis_data_tvalid : signal is "slave S_AXIS_DATA";
  attribute x_interface_parameter of s_axis_data_tvalid : signal is "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_data_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY";
  attribute x_interface_info of s_axis_data_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA";
  attribute x_interface_info of m_axis_data_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID";
  attribute x_interface_mode of m_axis_data_tvalid : signal is "master M_AXIS_DATA";
  attribute x_interface_parameter of m_axis_data_tvalid : signal is "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_data_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "fir_compiler_v7_2_24,Vivado 2025.1";
begin
end;
