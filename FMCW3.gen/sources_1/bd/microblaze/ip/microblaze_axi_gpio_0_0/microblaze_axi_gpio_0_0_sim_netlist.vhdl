-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Sep 13 20:48:31 2025
-- Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
-- Command     : write_vhdl -force -mode funcsim -rename_top microblaze_axi_gpio_0_0 -prefix
--               microblaze_axi_gpio_0_0_ microblaze_axi_gpio_0_0_sim_netlist.vhdl
-- Design      : microblaze_axi_gpio_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tiftg256-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_gpio_0_0_address_decoder is
  port (
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    \s_axi_wdata[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_rd_ce_or_reduce : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    intr_wr_ce_or_reduce : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack_d1_reg : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_wdata_31_sp_1 : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_rdack_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\ : in STD_LOGIC;
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    s_axi_arready_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC
  );
end microblaze_axi_gpio_0_0_address_decoder;

architecture STRUCTURE of microblaze_axi_gpio_0_0_address_decoder is
  signal Bus_RNW_reg : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_13 : STD_LOGIC;
  signal ce_expnd_i_14 : STD_LOGIC;
  signal ce_expnd_i_15 : STD_LOGIC;
  signal ce_expnd_i_16 : STD_LOGIC;
  signal ce_expnd_i_17 : STD_LOGIC;
  signal ce_expnd_i_18 : STD_LOGIC;
  signal ce_expnd_i_19 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \ip2bus_data_i_D1[31]_i_2_n_0\ : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in_1 : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal pselect_hit_i_1 : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_31_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of intr2bus_rdack_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of intr2bus_wrack_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of irpt_rdack_d1_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair0";
begin
  D(17 downto 0) <= \^d\(17 downto 0);
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_31_sp_1 <= s_axi_wdata_31_sn_1;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Bus_RNW_reg_reg_0,
      I1 => Q,
      I2 => Bus_RNW_reg,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => Bus_RNW_reg,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pselect_hit_i_1,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => ce_expnd_i_19
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_19,
      Q => p_19_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_9,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => ce_expnd_i_8
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_8,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1_n_0\,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1_n_0\,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0\,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => p_3_in_1,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\,
      Q => p_1_in_0,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => \^ip2bus_rdack_i_d1_reg\,
      I2 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2_n_0\,
      Q => \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => pselect_hit_i_1,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => ce_expnd_i_18
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_18,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => pselect_hit_i_1,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => ce_expnd_i_17
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_17,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => pselect_hit_i_1,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => ce_expnd_i_16
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_16,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      O => ce_expnd_i_15
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_15,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      O => ce_expnd_i_14
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_14,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => ce_expnd_i_13
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_13,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      O => ce_expnd_i_12
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_12,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => ce_expnd_i_11
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_11,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => ce_expnd_i_10
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_10,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg,
      I2 => p_7_in,
      O => irpt_wrack_d1_reg
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\,
      I2 => p_15_in,
      I3 => p_2_in,
      I4 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I5 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      O => intr_rd_ce_or_reduce
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD00"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0\,
      I3 => Bus_RNW_reg,
      I4 => ip2Bus_RdAck_intr_reg_hole_d1,
      O => ip2Bus_RdAck_intr_reg_hole0
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555455555555"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\,
      I2 => p_15_in,
      I3 => p_2_in,
      I4 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I5 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      O => intr_wr_ce_or_reduce
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_12_in,
      I1 => p_6_in,
      I2 => p_4_in,
      I3 => p_1_in_0,
      O => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_14_in,
      I1 => p_9_in,
      I2 => p_3_in_1,
      I3 => p_11_in,
      I4 => p_10_in,
      I5 => p_13_in,
      O => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FD"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0\,
      I3 => Bus_RNW_reg,
      I4 => ip2Bus_WrAck_intr_reg_hole_d1,
      O => ip2Bus_WrAck_intr_reg_hole0
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_2_in,
      I1 => p_15_in,
      I2 => \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\,
      O => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(5),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(4),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I3 => Q,
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I5 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      O => pselect_hit_i_1
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => pselect_hit_i_1,
      Q => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      R => cs_ce_clr
    );
\Not_Dual.gpio_Data_Out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => Bus_RNW_reg_reg_0,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => E(0)
    );
\Not_Dual.gpio_Data_Out[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(31),
      O => \s_axi_wdata[15]\(15)
    );
\Not_Dual.gpio_Data_Out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(21),
      O => \s_axi_wdata[15]\(5)
    );
\Not_Dual.gpio_Data_Out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(20),
      O => \s_axi_wdata[15]\(4)
    );
\Not_Dual.gpio_Data_Out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(19),
      O => \s_axi_wdata[15]\(3)
    );
\Not_Dual.gpio_Data_Out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(18),
      O => \s_axi_wdata[15]\(2)
    );
\Not_Dual.gpio_Data_Out[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(17),
      O => \s_axi_wdata[15]\(1)
    );
\Not_Dual.gpio_Data_Out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(16),
      O => \s_axi_wdata[15]\(0)
    );
\Not_Dual.gpio_Data_Out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(30),
      O => \s_axi_wdata[15]\(14)
    );
\Not_Dual.gpio_Data_Out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(29),
      O => \s_axi_wdata[15]\(13)
    );
\Not_Dual.gpio_Data_Out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(28),
      O => \s_axi_wdata[15]\(12)
    );
\Not_Dual.gpio_Data_Out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(27),
      O => \s_axi_wdata[15]\(11)
    );
\Not_Dual.gpio_Data_Out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(26),
      O => \s_axi_wdata[15]\(10)
    );
\Not_Dual.gpio_Data_Out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(25),
      O => \s_axi_wdata[15]\(9)
    );
\Not_Dual.gpio_Data_Out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(24),
      O => \s_axi_wdata[15]\(8)
    );
\Not_Dual.gpio_Data_Out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(23),
      O => \s_axi_wdata[15]\(7)
    );
\Not_Dual.gpio_Data_Out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => s_axi_wdata(22),
      O => \s_axi_wdata[15]\(6)
    );
intr2bus_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E0"
    )
        port map (
      I0 => p_7_in,
      I1 => p_5_in,
      I2 => Bus_RNW_reg,
      I3 => p_8_in,
      I4 => irpt_rdack_d1,
      O => intr2bus_rdack0
    );
intr2bus_wrack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F0E"
    )
        port map (
      I0 => p_8_in,
      I1 => p_7_in,
      I2 => Bus_RNW_reg,
      I3 => p_5_in,
      I4 => irpt_wrack_d1,
      O => interrupt_wrce_strb
    );
\ip2bus_data_i_D1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEAAA"
    )
        port map (
      I0 => \^d\(16),
      I1 => p_8_in,
      I2 => Bus_RNW_reg,
      I3 => p_0_in(0),
      I4 => p_7_in,
      I5 => p_5_in,
      O => \^d\(17)
    );
\ip2bus_data_i_D1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005000405000"
    )
        port map (
      I0 => p_17_in,
      I1 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\,
      I2 => Bus_RNW_reg,
      I3 => p_18_in,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(15)
    );
\ip2bus_data_i_D1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005000405000"
    )
        port map (
      I0 => p_17_in,
      I1 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\,
      I2 => Bus_RNW_reg,
      I3 => p_18_in,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(14)
    );
\ip2bus_data_i_D1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(13)
    );
\ip2bus_data_i_D1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(12)
    );
\ip2bus_data_i_D1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101000"
    )
        port map (
      I0 => p_17_in,
      I1 => p_19_in,
      I2 => Bus_RNW_reg,
      I3 => p_18_in,
      I4 => p_16_in,
      O => \^d\(16)
    );
\ip2bus_data_i_D1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(11)
    );
\ip2bus_data_i_D1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(10)
    );
\ip2bus_data_i_D1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(9)
    );
\ip2bus_data_i_D1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(8)
    );
\ip2bus_data_i_D1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(7)
    );
\ip2bus_data_i_D1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(6)
    );
\ip2bus_data_i_D1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(5)
    );
\ip2bus_data_i_D1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(4)
    );
\ip2bus_data_i_D1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(3)
    );
\ip2bus_data_i_D1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(2)
    );
\ip2bus_data_i_D1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \^d\(1)
    );
\ip2bus_data_i_D1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEAAAEAAAEAAA"
    )
        port map (
      I0 => \ip2bus_data_i_D1[31]_i_2_n_0\,
      I1 => p_3_in(0),
      I2 => p_7_in,
      I3 => Bus_RNW_reg,
      I4 => p_5_in,
      I5 => p_1_in(0),
      O => \^d\(0)
    );
\ip2bus_data_i_D1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040404004040"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\,
      I4 => p_19_in,
      I5 => p_16_in,
      O => \ip2bus_data_i_D1[31]_i_2_n_0\
    );
\ip_irpt_enable_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_5_in,
      I2 => Bus_RNW_reg,
      I3 => p_1_in(0),
      O => s_axi_wdata_0_sn_1
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => p_8_in,
      I2 => Bus_RNW_reg,
      I3 => p_0_in(0),
      O => s_axi_wdata_31_sn_1
    );
irpt_rdack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC8"
    )
        port map (
      I0 => p_8_in,
      I1 => Bus_RNW_reg,
      I2 => p_5_in,
      I3 => p_7_in,
      O => irpt_rdack
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3332"
    )
        port map (
      I0 => p_5_in,
      I1 => Bus_RNW_reg,
      I2 => p_7_in,
      I3 => p_8_in,
      O => irpt_wrack
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_rdack_i_D1,
      I1 => s_axi_arready,
      I2 => s_axi_arready_0(2),
      I3 => s_axi_arready_0(1),
      I4 => s_axi_arready_0(3),
      I5 => s_axi_arready_0(0),
      O => \^ip2bus_rdack_i_d1_reg\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_wrack_i_D1,
      I1 => s_axi_awready,
      I2 => s_axi_arready_0(2),
      I3 => s_axi_arready_0(1),
      I4 => s_axi_arready_0(3),
      I5 => s_axi_arready_0(0),
      O => \^ip2bus_wrack_i_d1_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_gpio_0_0_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    p_3_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    intr2bus_wrack : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    intr2bus_rdack : out STD_LOGIC;
    p_1_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    IP2INTC_Irpt_i : out STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    GPIO_intr : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[0]_0\ : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end microblaze_axi_gpio_0_0_interrupt_control;

architecture STRUCTURE of microblaze_axi_gpio_0_0_interrupt_control is
  signal \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_1_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_3_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  p_0_in(0) <= \^p_0_in\(0);
  p_1_in(0) <= \^p_1_in\(0);
  p_3_in(0) <= \^p_3_in\(0);
\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GPIO_intr,
      Q => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1\,
      S => bus2ip_reset
    );
\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1\,
      Q => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2\,
      S => bus2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFF7530"
    )
        port map (
      I0 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      I1 => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2\,
      I2 => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1\,
      I3 => s_axi_wdata(0),
      I4 => \^p_3_in\(0),
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\,
      Q => \^p_3_in\(0),
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2intc_irpt_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_1_in\(0),
      I2 => \^p_3_in\(0),
      O => IP2INTC_Irpt_i
    );
intr2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr2bus_rdack0,
      Q => intr2bus_rdack,
      R => bus2ip_reset
    );
intr2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => interrupt_wrce_strb,
      Q => intr2bus_wrack,
      R => bus2ip_reset
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ip_irpt_enable_reg_reg[0]_0\,
      Q => \^p_1_in\(0),
      R => bus2ip_reset
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ipif_glbl_irpt_enable_reg_reg_0,
      Q => \^p_0_in\(0),
      R => bus2ip_reset
    );
irpt_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_rdack,
      Q => irpt_rdack_d1,
      R => bus2ip_reset
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_gpio_0_0_xpm_cdc_array_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of microblaze_axi_gpio_0_0_xpm_cdc_array_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of microblaze_axi_gpio_0_0_xpm_cdc_array_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of microblaze_axi_gpio_0_0_xpm_cdc_array_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of microblaze_axi_gpio_0_0_xpm_cdc_array_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of microblaze_axi_gpio_0_0_xpm_cdc_array_single : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of microblaze_axi_gpio_0_0_xpm_cdc_array_single : entity is 16;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of microblaze_axi_gpio_0_0_xpm_cdc_array_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of microblaze_axi_gpio_0_0_xpm_cdc_array_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of microblaze_axi_gpio_0_0_xpm_cdc_array_single : entity is "ARRAY_SINGLE";
end microblaze_axi_gpio_0_0_xpm_cdc_array_single;

architecture STRUCTURE of microblaze_axi_gpio_0_0_xpm_cdc_array_single is
  signal async_path_bit : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][9]\ : label is "ARRAY_SINGLE";
begin
  dest_out(15 downto 0) <= \syncstages_ff[3]\(15 downto 0);
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(15)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(14)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(5)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(4)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(3)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(2)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(13)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(12)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(11)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(10)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(9)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(8)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(7)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(6)
    );
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(10),
      Q => \syncstages_ff[0]\(10),
      R => '0'
    );
\syncstages_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(11),
      Q => \syncstages_ff[0]\(11),
      R => '0'
    );
\syncstages_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(12),
      Q => \syncstages_ff[0]\(12),
      R => '0'
    );
\syncstages_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(13),
      Q => \syncstages_ff[0]\(13),
      R => '0'
    );
\syncstages_ff_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(14),
      Q => \syncstages_ff[0]\(14),
      R => '0'
    );
\syncstages_ff_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(15),
      Q => \syncstages_ff[0]\(15),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(4),
      Q => \syncstages_ff[0]\(4),
      R => '0'
    );
\syncstages_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(5),
      Q => \syncstages_ff[0]\(5),
      R => '0'
    );
\syncstages_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(6),
      Q => \syncstages_ff[0]\(6),
      R => '0'
    );
\syncstages_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(7),
      Q => \syncstages_ff[0]\(7),
      R => '0'
    );
\syncstages_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(8),
      Q => \syncstages_ff[0]\(8),
      R => '0'
    );
\syncstages_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(9),
      Q => \syncstages_ff[0]\(9),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(10),
      Q => \syncstages_ff[1]\(10),
      R => '0'
    );
\syncstages_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(11),
      Q => \syncstages_ff[1]\(11),
      R => '0'
    );
\syncstages_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(12),
      Q => \syncstages_ff[1]\(12),
      R => '0'
    );
\syncstages_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(13),
      Q => \syncstages_ff[1]\(13),
      R => '0'
    );
\syncstages_ff_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(14),
      Q => \syncstages_ff[1]\(14),
      R => '0'
    );
\syncstages_ff_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(15),
      Q => \syncstages_ff[1]\(15),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(4),
      Q => \syncstages_ff[1]\(4),
      R => '0'
    );
\syncstages_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(5),
      Q => \syncstages_ff[1]\(5),
      R => '0'
    );
\syncstages_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(6),
      Q => \syncstages_ff[1]\(6),
      R => '0'
    );
\syncstages_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(7),
      Q => \syncstages_ff[1]\(7),
      R => '0'
    );
\syncstages_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(8),
      Q => \syncstages_ff[1]\(8),
      R => '0'
    );
\syncstages_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(9),
      Q => \syncstages_ff[1]\(9),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(10),
      Q => \syncstages_ff[2]\(10),
      R => '0'
    );
\syncstages_ff_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(11),
      Q => \syncstages_ff[2]\(11),
      R => '0'
    );
\syncstages_ff_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(12),
      Q => \syncstages_ff[2]\(12),
      R => '0'
    );
\syncstages_ff_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(13),
      Q => \syncstages_ff[2]\(13),
      R => '0'
    );
\syncstages_ff_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(14),
      Q => \syncstages_ff[2]\(14),
      R => '0'
    );
\syncstages_ff_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(15),
      Q => \syncstages_ff[2]\(15),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(3),
      Q => \syncstages_ff[2]\(3),
      R => '0'
    );
\syncstages_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(4),
      Q => \syncstages_ff[2]\(4),
      R => '0'
    );
\syncstages_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(5),
      Q => \syncstages_ff[2]\(5),
      R => '0'
    );
\syncstages_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(6),
      Q => \syncstages_ff[2]\(6),
      R => '0'
    );
\syncstages_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(7),
      Q => \syncstages_ff[2]\(7),
      R => '0'
    );
\syncstages_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(8),
      Q => \syncstages_ff[2]\(8),
      R => '0'
    );
\syncstages_ff_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(9),
      Q => \syncstages_ff[2]\(9),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(10),
      Q => \syncstages_ff[3]\(10),
      R => '0'
    );
\syncstages_ff_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(11),
      Q => \syncstages_ff[3]\(11),
      R => '0'
    );
\syncstages_ff_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(12),
      Q => \syncstages_ff[3]\(12),
      R => '0'
    );
\syncstages_ff_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(13),
      Q => \syncstages_ff[3]\(13),
      R => '0'
    );
\syncstages_ff_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(14),
      Q => \syncstages_ff[3]\(14),
      R => '0'
    );
\syncstages_ff_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(15),
      Q => \syncstages_ff[3]\(15),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(3),
      Q => \syncstages_ff[3]\(3),
      R => '0'
    );
\syncstages_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(4),
      Q => \syncstages_ff[3]\(4),
      R => '0'
    );
\syncstages_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(5),
      Q => \syncstages_ff[3]\(5),
      R => '0'
    );
\syncstages_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(6),
      Q => \syncstages_ff[3]\(6),
      R => '0'
    );
\syncstages_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(7),
      Q => \syncstages_ff[3]\(7),
      R => '0'
    );
\syncstages_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(8),
      Q => \syncstages_ff[3]\(8),
      R => '0'
    );
\syncstages_ff_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(9),
      Q => \syncstages_ff[3]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_gpio_0_0_GPIO_Core is
  port (
    GPIO_intr : out STD_LOGIC;
    GPIO_xferAck_i : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\ : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\ : out STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\ : out STD_LOGIC;
    ip2bus_rdack_i : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    bus2ip_cs : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw : in STD_LOGIC;
    intr2bus_rdack : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end microblaze_axi_gpio_0_0_GPIO_Core;

architecture STRUCTURE of microblaze_axi_gpio_0_0_GPIO_Core is
  signal \^gpio_xferack_i\ : STD_LOGIC;
  signal \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_2_n_0\ : STD_LOGIC;
  signal \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_3_n_0\ : STD_LOGIC;
  signal \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal gpio_Data_In : STD_LOGIC_VECTOR ( 0 to 15 );
  signal gpio_data_in_xor : STD_LOGIC_VECTOR ( 0 to 15 );
  signal gpio_io_i_d2 : STD_LOGIC_VECTOR ( 0 to 15 );
  signal \^gpio_io_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gpio_xferAck_Reg : STD_LOGIC;
  signal iGPIO_xferAck : STD_LOGIC;
  signal or_reduce : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 31 to 31 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Not_Dual.INPUT_DOUBLE_REGS3\ : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Not_Dual.INPUT_DOUBLE_REGS3\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Not_Dual.INPUT_DOUBLE_REGS3\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \Not_Dual.INPUT_DOUBLE_REGS3\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \Not_Dual.INPUT_DOUBLE_REGS3\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \Not_Dual.INPUT_DOUBLE_REGS3\ : label is 16;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \Not_Dual.INPUT_DOUBLE_REGS3\ : label is "ARRAY_SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Not_Dual.INPUT_DOUBLE_REGS3\ : label is "TRUE";
begin
  GPIO_xferAck_i <= \^gpio_xferack_i\;
  gpio_io_o(15 downto 0) <= \^gpio_io_o\(15 downto 0);
\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(15),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(5),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(4),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(3),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(2),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(1),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => gpio_xferAck_Reg,
      I1 => bus2ip_cs(0),
      I2 => \^gpio_xferack_i\,
      I3 => bus2ip_rnw,
      O => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(0),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(14),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(13),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(12),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(11),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(10),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(9),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(8),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(7),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_io_o\(6),
      Q => \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\,
      R => reg1(31)
    );
\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_12_in,
      I1 => p_11_in,
      I2 => \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[15]\,
      I3 => p_13_in,
      I4 => \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_2_n_0\,
      I5 => \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_3_n_0\,
      O => or_reduce
    );
\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in,
      I1 => \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[0]\,
      I2 => p_2_in,
      I3 => p_1_in,
      I4 => \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[4]\,
      I5 => p_4_in,
      O => \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_2_n_0\
    );
\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_6_in,
      I1 => \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[6]\,
      I2 => p_8_in,
      I3 => p_7_in,
      I4 => p_9_in,
      I5 => p_10_in,
      O => \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_3_n_0\
    );
\Not_Dual.GEN_INTERRUPT.GPIO_intr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => or_reduce,
      Q => GPIO_intr,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(0),
      I1 => gpio_Data_In(0),
      O => gpio_data_in_xor(0)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(10),
      I1 => gpio_Data_In(10),
      O => gpio_data_in_xor(10)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(11),
      I1 => gpio_Data_In(11),
      O => gpio_data_in_xor(11)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(12),
      I1 => gpio_Data_In(12),
      O => gpio_data_in_xor(12)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(13),
      I1 => gpio_Data_In(13),
      O => gpio_data_in_xor(13)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(14),
      I1 => gpio_Data_In(14),
      O => gpio_data_in_xor(14)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(15),
      I1 => gpio_Data_In(15),
      O => gpio_data_in_xor(15)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(1),
      I1 => gpio_Data_In(1),
      O => gpio_data_in_xor(1)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(2),
      I1 => gpio_Data_In(2),
      O => gpio_data_in_xor(2)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(3),
      I1 => gpio_Data_In(3),
      O => gpio_data_in_xor(3)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(4),
      I1 => gpio_Data_In(4),
      O => gpio_data_in_xor(4)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(5),
      I1 => gpio_Data_In(5),
      O => gpio_data_in_xor(5)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(6),
      I1 => gpio_Data_In(6),
      O => gpio_data_in_xor(6)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(7),
      I1 => gpio_Data_In(7),
      O => gpio_data_in_xor(7)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(8),
      I1 => gpio_Data_In(8),
      O => gpio_data_in_xor(8)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(9),
      I1 => gpio_Data_In(9),
      O => gpio_data_in_xor(9)
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(0),
      Q => \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[0]\,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(10),
      Q => p_9_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(11),
      Q => p_10_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(12),
      Q => p_11_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(13),
      Q => p_12_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(14),
      Q => p_13_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(15),
      Q => \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[15]\,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(1),
      Q => p_0_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(2),
      Q => p_1_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(3),
      Q => p_2_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(4),
      Q => \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[4]\,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(5),
      Q => p_4_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(6),
      Q => \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[6]\,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(7),
      Q => p_6_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(8),
      Q => p_7_in,
      R => bus2ip_reset
    );
\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(9),
      Q => p_8_in,
      R => bus2ip_reset
    );
\Not_Dual.INPUT_DOUBLE_REGS3\: entity work.microblaze_axi_gpio_0_0_xpm_cdc_array_single
     port map (
      dest_clk => s_axi_aclk,
      dest_out(15) => gpio_io_i_d2(0),
      dest_out(14) => gpio_io_i_d2(1),
      dest_out(13) => gpio_io_i_d2(2),
      dest_out(12) => gpio_io_i_d2(3),
      dest_out(11) => gpio_io_i_d2(4),
      dest_out(10) => gpio_io_i_d2(5),
      dest_out(9) => gpio_io_i_d2(6),
      dest_out(8) => gpio_io_i_d2(7),
      dest_out(7) => gpio_io_i_d2(8),
      dest_out(6) => gpio_io_i_d2(9),
      dest_out(5) => gpio_io_i_d2(10),
      dest_out(4) => gpio_io_i_d2(11),
      dest_out(3) => gpio_io_i_d2(12),
      dest_out(2) => gpio_io_i_d2(13),
      dest_out(1) => gpio_io_i_d2(14),
      dest_out(0) => gpio_io_i_d2(15),
      src_clk => '0',
      src_in(15 downto 0) => B"0000000000000000"
    );
\Not_Dual.gpio_Data_In_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(0),
      Q => gpio_Data_In(0),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(10),
      Q => gpio_Data_In(10),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(11),
      Q => gpio_Data_In(11),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(12),
      Q => gpio_Data_In(12),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(13),
      Q => gpio_Data_In(13),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(14),
      Q => gpio_Data_In(14),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(15),
      Q => gpio_Data_In(15),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(1),
      Q => gpio_Data_In(1),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(2),
      Q => gpio_Data_In(2),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(3),
      Q => gpio_Data_In(3),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(4),
      Q => gpio_Data_In(4),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(5),
      Q => gpio_Data_In(5),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(6),
      Q => gpio_Data_In(6),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(7),
      Q => gpio_Data_In(7),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(8),
      Q => gpio_Data_In(8),
      R => '0'
    );
\Not_Dual.gpio_Data_In_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(9),
      Q => gpio_Data_In(9),
      R => '0'
    );
\Not_Dual.gpio_Data_Out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(15),
      Q => \^gpio_io_o\(15),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(5),
      Q => \^gpio_io_o\(5),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(4),
      Q => \^gpio_io_o\(4),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => \^gpio_io_o\(3),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => \^gpio_io_o\(2),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \^gpio_io_o\(1),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \^gpio_io_o\(0),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(14),
      Q => \^gpio_io_o\(14),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(13),
      Q => \^gpio_io_o\(13),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(12),
      Q => \^gpio_io_o\(12),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(11),
      Q => \^gpio_io_o\(11),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(10),
      Q => \^gpio_io_o\(10),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(9),
      Q => \^gpio_io_o\(9),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(8),
      Q => \^gpio_io_o\(8),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(7),
      Q => \^gpio_io_o\(7),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(6),
      Q => \^gpio_io_o\(6),
      R => bus2ip_reset
    );
gpio_xferAck_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_xferack_i\,
      Q => gpio_xferAck_Reg,
      R => bus2ip_reset
    );
iGPIO_xferAck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => gpio_xferAck_Reg,
      I1 => bus2ip_cs(0),
      I2 => \^gpio_xferack_i\,
      O => iGPIO_xferAck
    );
iGPIO_xferAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => iGPIO_xferAck,
      Q => \^gpio_xferack_i\,
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \^gpio_xferack_i\,
      I1 => bus2ip_rnw,
      I2 => intr2bus_rdack,
      I3 => ip2Bus_RdAck_intr_reg_hole,
      O => ip2bus_rdack_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_gpio_0_0_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_0 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    \s_axi_wdata[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_rd_ce_or_reduce : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    intr_wr_ce_or_reduce : out STD_LOGIC;
    ip2bus_wrack_i : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack_d1_reg : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_wdata_31_sp_1 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_rdack_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\ : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    intr2bus_wrack : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end microblaze_axi_gpio_0_0_slave_attachment;

architecture STRUCTURE of microblaze_axi_gpio_0_0_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \^bus2ip_rnw_i_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_i_1_n_0 : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_31_sn_1 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair13";
begin
  SR(0) <= \^sr\(0);
  bus2ip_rnw_i_reg_0 <= \^bus2ip_rnw_i_reg_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_31_sp_1 <= s_axi_wdata_31_sn_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF150015001500"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^ip2bus_rdack_i_d1_reg\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^ip2bus_wrack_i_d1_reg\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_rresp_i,
      I3 => \^ip2bus_rdack_i_d1_reg\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \state1__2\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
I_DECODER: entity work.microblaze_axi_gpio_0_0_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => \^bus2ip_rnw_i_reg_0\,
      D(17 downto 0) => D(17 downto 0),
      E(0) => E(0),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6) => bus2ip_addr(0),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(5) => bus2ip_addr(1),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(4) => bus2ip_addr(2),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3) => bus2ip_addr(3),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2) => bus2ip_addr(4),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1) => bus2ip_addr(5),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0) => bus2ip_addr(6),
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\,
      Q => start2,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_rd_ce_or_reduce => intr_rd_ce_or_reduce,
      intr_wr_ce_or_reduce => intr_wr_ce_or_reduce,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => \^ip2bus_rdack_i_d1_reg\,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^ip2bus_wrack_i_d1_reg\,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => irpt_wrack_d1_reg,
      p_0_in(0) => p_0_in(0),
      p_1_in(0) => p_1_in(0),
      p_3_in(0) => p_3_in(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => is_read_reg_n_0,
      s_axi_arready_0(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3 downto 0),
      s_axi_awready => is_write_reg_n_0,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      \s_axi_wdata[15]\(15 downto 0) => \s_axi_wdata[15]\(15 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wdata_31_sp_1 => s_axi_wdata_31_sn_1
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(2)
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(3)
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(4)
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(5)
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_awaddr(4),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(6)
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(7)
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_awaddr(6),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(8)
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(2),
      Q => bus2ip_addr(6),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(3),
      Q => bus2ip_addr(5),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(4),
      Q => bus2ip_addr(4),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(5),
      Q => bus2ip_addr(3),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(6),
      Q => bus2ip_addr(2),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(7),
      Q => bus2ip_addr(1),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(8),
      Q => bus2ip_addr(0),
      R => \^sr\(0)
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => \^bus2ip_rnw_i_reg_0\,
      R => \^sr\(0)
    );
ip2bus_wrack_i_D1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \^bus2ip_rnw_i_reg_0\,
      I1 => GPIO_xferAck_i,
      I2 => intr2bus_wrack,
      I3 => ip2Bus_WrAck_intr_reg_hole,
      O => ip2bus_wrack_i
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \state1__2\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => \^sr\(0)
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => \^sr\(0)
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => rst_i_1_n_0
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_i_1_n_0,
      Q => \^sr\(0),
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(10),
      Q => s_axi_rdata(10),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(11),
      Q => s_axi_rdata(11),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(12),
      Q => s_axi_rdata(12),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(13),
      Q => s_axi_rdata(13),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(14),
      Q => s_axi_rdata(14),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(15),
      Q => s_axi_rdata(15),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(16),
      Q => s_axi_rdata(16),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(17),
      Q => s_axi_rdata(17),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(4),
      Q => s_axi_rdata(4),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(5),
      Q => s_axi_rdata(5),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(6),
      Q => s_axi_rdata(6),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(7),
      Q => s_axi_rdata(7),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(8),
      Q => s_axi_rdata(8),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Q(9),
      Q => s_axi_rdata(9),
      R => \^sr\(0)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_rdack_i_d1_reg\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => \^sr\(0)
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCAFFCA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^ip2bus_wrack_i_d1_reg\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state1__2\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state1__2\,
      I1 => p_5_in,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \^ip2bus_rdack_i_d1_reg\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_gpio_0_0_axi_lite_ipif is
  port (
    bus2ip_reset : out STD_LOGIC;
    bus2ip_rnw : out STD_LOGIC;
    bus2ip_cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    \s_axi_wdata[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_rd_ce_or_reduce : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    intr_wr_ce_or_reduce : out STD_LOGIC;
    ip2bus_wrack_i : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack_d1_reg : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_wdata_31_sp_1 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_rdack_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\ : in STD_LOGIC;
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\ : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    intr2bus_wrack : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end microblaze_axi_gpio_0_0_axi_lite_ipif;

architecture STRUCTURE of microblaze_axi_gpio_0_0_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_31_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_31_sp_1 <= s_axi_wdata_31_sn_1;
I_SLAVE_ATTACHMENT: entity work.microblaze_axi_gpio_0_0_slave_attachment
     port map (
      D(17 downto 0) => D(17 downto 0),
      E(0) => E(0),
      GPIO_xferAck_i => GPIO_xferAck_i,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => bus2ip_cs(0),
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\,
      Q(17 downto 0) => Q(17 downto 0),
      SR(0) => bus2ip_reset,
      bus2ip_rnw_i_reg_0 => bus2ip_rnw,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr2bus_wrack => intr2bus_wrack,
      intr_rd_ce_or_reduce => intr_rd_ce_or_reduce,
      intr_wr_ce_or_reduce => intr_wr_ce_or_reduce,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole => ip2Bus_WrAck_intr_reg_hole,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => ip2bus_rdack_i_D1_reg,
      ip2bus_wrack_i => ip2bus_wrack_i,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => ip2bus_wrack_i_D1_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => irpt_wrack_d1_reg,
      p_0_in(0) => p_0_in(0),
      p_1_in(0) => p_1_in(0),
      p_3_in(0) => p_3_in(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(17 downto 0) => s_axi_rdata(17 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      \s_axi_wdata[15]\(15 downto 0) => \s_axi_wdata[15]\(15 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wdata_31_sp_1 => s_axi_wdata_31_sn_1,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_gpio_0_0_axi_gpio is
  port (
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
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of microblaze_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of microblaze_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of microblaze_axi_gpio_0_0_axi_gpio : entity is 1;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of microblaze_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT : string;
  attribute C_DOUT_DEFAULT of microblaze_axi_gpio_0_0_axi_gpio : entity is "32'b00000000000000000000000000000000";
  attribute C_DOUT_DEFAULT_2 : string;
  attribute C_DOUT_DEFAULT_2 of microblaze_axi_gpio_0_0_axi_gpio : entity is "32'b00000000000000000000000000000000";
  attribute C_FAMILY : string;
  attribute C_FAMILY of microblaze_axi_gpio_0_0_axi_gpio : entity is "artix7";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of microblaze_axi_gpio_0_0_axi_gpio : entity is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of microblaze_axi_gpio_0_0_axi_gpio : entity is 16;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of microblaze_axi_gpio_0_0_axi_gpio : entity is 1;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of microblaze_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of microblaze_axi_gpio_0_0_axi_gpio : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of microblaze_axi_gpio_0_0_axi_gpio : entity is 32;
  attribute C_TRI_DEFAULT : string;
  attribute C_TRI_DEFAULT of microblaze_axi_gpio_0_0_axi_gpio : entity is "32'b11111111111111111111111111111111";
  attribute C_TRI_DEFAULT_2 : string;
  attribute C_TRI_DEFAULT_2 of microblaze_axi_gpio_0_0_axi_gpio : entity is "32'b11111111111111111111111111111111";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microblaze_axi_gpio_0_0_axi_gpio : entity is "yes";
  attribute ip_group : string;
  attribute ip_group of microblaze_axi_gpio_0_0_axi_gpio : entity is "LOGICORE";
end microblaze_axi_gpio_0_0_axi_gpio;

architecture STRUCTURE of microblaze_axi_gpio_0_0_axi_gpio is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_48 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_49 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_52 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_53 : STD_LOGIC;
  signal DBus_Reg : STD_LOGIC_VECTOR ( 0 to 15 );
  signal GPIO_intr : STD_LOGIC;
  signal GPIO_xferAck_i : STD_LOGIC;
  signal IP2INTC_Irpt_i : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\ : STD_LOGIC;
  signal bus2ip_cs : STD_LOGIC_VECTOR ( 1 to 1 );
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_rnw : STD_LOGIC;
  signal interrupt_wrce_strb : STD_LOGIC;
  signal intr2bus_rdack : STD_LOGIC;
  signal intr2bus_rdack0 : STD_LOGIC;
  signal intr2bus_wrack : STD_LOGIC;
  signal intr_rd_ce_or_reduce : STD_LOGIC;
  signal intr_wr_ce_or_reduce : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 0 to 30 );
  signal ip2bus_data_i : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_data_i_D1 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_rdack_i : STD_LOGIC;
  signal ip2bus_rdack_i_D1 : STD_LOGIC;
  signal ip2bus_wrack_i : STD_LOGIC;
  signal ip2bus_wrack_i_D1 : STD_LOGIC;
  signal irpt_rdack : STD_LOGIC;
  signal irpt_rdack_d1 : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 to 31 );
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_3_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute sigis : string;
  attribute sigis of \INTR_CTRLR_GEN.ip2intc_irpt_reg\ : label is "INTR_LEVEL_HIGH";
  attribute sigis of ip2intc_irpt : signal is "INTR_LEVEL_HIGH";
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute sigis of s_axi_aresetn : signal is "Rst";
begin
  gpio2_io_o(31) <= \<const0>\;
  gpio2_io_o(30) <= \<const0>\;
  gpio2_io_o(29) <= \<const0>\;
  gpio2_io_o(28) <= \<const0>\;
  gpio2_io_o(27) <= \<const0>\;
  gpio2_io_o(26) <= \<const0>\;
  gpio2_io_o(25) <= \<const0>\;
  gpio2_io_o(24) <= \<const0>\;
  gpio2_io_o(23) <= \<const0>\;
  gpio2_io_o(22) <= \<const0>\;
  gpio2_io_o(21) <= \<const0>\;
  gpio2_io_o(20) <= \<const0>\;
  gpio2_io_o(19) <= \<const0>\;
  gpio2_io_o(18) <= \<const0>\;
  gpio2_io_o(17) <= \<const0>\;
  gpio2_io_o(16) <= \<const0>\;
  gpio2_io_o(15) <= \<const0>\;
  gpio2_io_o(14) <= \<const0>\;
  gpio2_io_o(13) <= \<const0>\;
  gpio2_io_o(12) <= \<const0>\;
  gpio2_io_o(11) <= \<const0>\;
  gpio2_io_o(10) <= \<const0>\;
  gpio2_io_o(9) <= \<const0>\;
  gpio2_io_o(8) <= \<const0>\;
  gpio2_io_o(7) <= \<const0>\;
  gpio2_io_o(6) <= \<const0>\;
  gpio2_io_o(5) <= \<const0>\;
  gpio2_io_o(4) <= \<const0>\;
  gpio2_io_o(3) <= \<const0>\;
  gpio2_io_o(2) <= \<const0>\;
  gpio2_io_o(1) <= \<const0>\;
  gpio2_io_o(0) <= \<const0>\;
  gpio2_io_t(31) <= \<const0>\;
  gpio2_io_t(30) <= \<const0>\;
  gpio2_io_t(29) <= \<const0>\;
  gpio2_io_t(28) <= \<const0>\;
  gpio2_io_t(27) <= \<const0>\;
  gpio2_io_t(26) <= \<const0>\;
  gpio2_io_t(25) <= \<const0>\;
  gpio2_io_t(24) <= \<const0>\;
  gpio2_io_t(23) <= \<const0>\;
  gpio2_io_t(22) <= \<const0>\;
  gpio2_io_t(21) <= \<const0>\;
  gpio2_io_t(20) <= \<const0>\;
  gpio2_io_t(19) <= \<const0>\;
  gpio2_io_t(18) <= \<const0>\;
  gpio2_io_t(17) <= \<const0>\;
  gpio2_io_t(16) <= \<const0>\;
  gpio2_io_t(15) <= \<const0>\;
  gpio2_io_t(14) <= \<const0>\;
  gpio2_io_t(13) <= \<const0>\;
  gpio2_io_t(12) <= \<const0>\;
  gpio2_io_t(11) <= \<const0>\;
  gpio2_io_t(10) <= \<const0>\;
  gpio2_io_t(9) <= \<const0>\;
  gpio2_io_t(8) <= \<const0>\;
  gpio2_io_t(7) <= \<const0>\;
  gpio2_io_t(6) <= \<const0>\;
  gpio2_io_t(5) <= \<const0>\;
  gpio2_io_t(4) <= \<const0>\;
  gpio2_io_t(3) <= \<const0>\;
  gpio2_io_t(2) <= \<const0>\;
  gpio2_io_t(1) <= \<const0>\;
  gpio2_io_t(0) <= \<const0>\;
  gpio_io_t(15) <= \<const0>\;
  gpio_io_t(14) <= \<const0>\;
  gpio_io_t(13) <= \<const0>\;
  gpio_io_t(12) <= \<const0>\;
  gpio_io_t(11) <= \<const0>\;
  gpio_io_t(10) <= \<const0>\;
  gpio_io_t(9) <= \<const0>\;
  gpio_io_t(8) <= \<const0>\;
  gpio_io_t(7) <= \<const0>\;
  gpio_io_t(6) <= \<const0>\;
  gpio_io_t(5) <= \<const0>\;
  gpio_io_t(4) <= \<const0>\;
  gpio_io_t(3) <= \<const0>\;
  gpio_io_t(2) <= \<const0>\;
  gpio_io_t(1) <= \<const0>\;
  gpio_io_t(0) <= \<const0>\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \^s_axi_rdata\(29);
  s_axi_rdata(29) <= \^s_axi_rdata\(29);
  s_axi_rdata(28) <= \^s_axi_rdata\(29);
  s_axi_rdata(27) <= \^s_axi_rdata\(29);
  s_axi_rdata(26) <= \^s_axi_rdata\(29);
  s_axi_rdata(25) <= \^s_axi_rdata\(29);
  s_axi_rdata(24) <= \^s_axi_rdata\(29);
  s_axi_rdata(23) <= \^s_axi_rdata\(29);
  s_axi_rdata(22) <= \^s_axi_rdata\(29);
  s_axi_rdata(21) <= \^s_axi_rdata\(29);
  s_axi_rdata(20) <= \^s_axi_rdata\(29);
  s_axi_rdata(19) <= \^s_axi_rdata\(29);
  s_axi_rdata(18) <= \^s_axi_rdata\(29);
  s_axi_rdata(17) <= \^s_axi_rdata\(29);
  s_axi_rdata(16) <= \^s_axi_rdata\(29);
  s_axi_rdata(15 downto 0) <= \^s_axi_rdata\(15 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
AXI_LITE_IPIF_I: entity work.microblaze_axi_gpio_0_0_axi_lite_ipif
     port map (
      D(17) => ip2bus_data_i(0),
      D(16) => ip2bus_data(0),
      D(15) => ip2bus_data(16),
      D(14) => ip2bus_data(17),
      D(13) => ip2bus_data(18),
      D(12) => ip2bus_data(19),
      D(11) => ip2bus_data(20),
      D(10) => ip2bus_data(21),
      D(9) => ip2bus_data(22),
      D(8) => ip2bus_data(23),
      D(7) => ip2bus_data(24),
      D(6) => ip2bus_data(25),
      D(5) => ip2bus_data(26),
      D(4) => ip2bus_data(27),
      D(3) => ip2bus_data(28),
      D(2) => ip2bus_data(29),
      D(1) => ip2bus_data(30),
      D(0) => ip2bus_data_i(31),
      E(0) => AXI_LITE_IPIF_I_n_48,
      GPIO_xferAck_i => GPIO_xferAck_i,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\,
      Q(17) => ip2bus_data_i_D1(0),
      Q(16) => ip2bus_data_i_D1(1),
      Q(15) => ip2bus_data_i_D1(16),
      Q(14) => ip2bus_data_i_D1(17),
      Q(13) => ip2bus_data_i_D1(18),
      Q(12) => ip2bus_data_i_D1(19),
      Q(11) => ip2bus_data_i_D1(20),
      Q(10) => ip2bus_data_i_D1(21),
      Q(9) => ip2bus_data_i_D1(22),
      Q(8) => ip2bus_data_i_D1(23),
      Q(7) => ip2bus_data_i_D1(24),
      Q(6) => ip2bus_data_i_D1(25),
      Q(5) => ip2bus_data_i_D1(26),
      Q(4) => ip2bus_data_i_D1(27),
      Q(3) => ip2bus_data_i_D1(28),
      Q(2) => ip2bus_data_i_D1(29),
      Q(1) => ip2bus_data_i_D1(30),
      Q(0) => ip2bus_data_i_D1(31),
      bus2ip_cs(0) => bus2ip_cs(1),
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr2bus_wrack => intr2bus_wrack,
      intr_rd_ce_or_reduce => intr_rd_ce_or_reduce,
      intr_wr_ce_or_reduce => intr_wr_ce_or_reduce,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole => ip2Bus_WrAck_intr_reg_hole,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => s_axi_arready,
      ip2bus_wrack_i => ip2bus_wrack_i,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^s_axi_awready\,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => AXI_LITE_IPIF_I_n_49,
      p_0_in(0) => p_0_in(31),
      p_1_in(0) => p_1_in(0),
      p_3_in(0) => p_3_in(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(8 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(8 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(17) => \^s_axi_rdata\(31),
      s_axi_rdata(16) => \^s_axi_rdata\(29),
      s_axi_rdata(15 downto 0) => \^s_axi_rdata\(15 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      \s_axi_wdata[15]\(15) => DBus_Reg(0),
      \s_axi_wdata[15]\(14) => DBus_Reg(1),
      \s_axi_wdata[15]\(13) => DBus_Reg(2),
      \s_axi_wdata[15]\(12) => DBus_Reg(3),
      \s_axi_wdata[15]\(11) => DBus_Reg(4),
      \s_axi_wdata[15]\(10) => DBus_Reg(5),
      \s_axi_wdata[15]\(9) => DBus_Reg(6),
      \s_axi_wdata[15]\(8) => DBus_Reg(7),
      \s_axi_wdata[15]\(7) => DBus_Reg(8),
      \s_axi_wdata[15]\(6) => DBus_Reg(9),
      \s_axi_wdata[15]\(5) => DBus_Reg(10),
      \s_axi_wdata[15]\(4) => DBus_Reg(11),
      \s_axi_wdata[15]\(3) => DBus_Reg(12),
      \s_axi_wdata[15]\(2) => DBus_Reg(13),
      \s_axi_wdata[15]\(1) => DBus_Reg(14),
      \s_axi_wdata[15]\(0) => DBus_Reg(15),
      s_axi_wdata_0_sp_1 => AXI_LITE_IPIF_I_n_52,
      s_axi_wdata_31_sp_1 => AXI_LITE_IPIF_I_n_53,
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I\: entity work.microblaze_axi_gpio_0_0_interrupt_control
     port map (
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => AXI_LITE_IPIF_I_n_49,
      GPIO_intr => GPIO_intr,
      IP2INTC_Irpt_i => IP2INTC_Irpt_i,
      bus2ip_reset => bus2ip_reset,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack => intr2bus_rdack,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr2bus_wrack => intr2bus_wrack,
      \ip_irpt_enable_reg_reg[0]_0\ => AXI_LITE_IPIF_I_n_52,
      ipif_glbl_irpt_enable_reg_reg_0 => AXI_LITE_IPIF_I_n_53,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_0_in(0) => p_0_in(31),
      p_1_in(0) => p_1_in(0),
      p_3_in(0) => p_3_in(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0)
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_rd_ce_or_reduce,
      Q => ip2Bus_RdAck_intr_reg_hole_d1,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_RdAck_intr_reg_hole0,
      Q => ip2Bus_RdAck_intr_reg_hole,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_wr_ce_or_reduce,
      Q => ip2Bus_WrAck_intr_reg_hole_d1,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole0,
      Q => ip2Bus_WrAck_intr_reg_hole,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2intc_irpt_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2INTC_Irpt_i,
      Q => ip2intc_irpt,
      R => bus2ip_reset
    );
gpio_core_1: entity work.microblaze_axi_gpio_0_0_GPIO_Core
     port map (
      D(15) => DBus_Reg(0),
      D(14) => DBus_Reg(1),
      D(13) => DBus_Reg(2),
      D(12) => DBus_Reg(3),
      D(11) => DBus_Reg(4),
      D(10) => DBus_Reg(5),
      D(9) => DBus_Reg(6),
      D(8) => DBus_Reg(7),
      D(7) => DBus_Reg(8),
      D(6) => DBus_Reg(9),
      D(5) => DBus_Reg(10),
      D(4) => DBus_Reg(11),
      D(3) => DBus_Reg(12),
      D(2) => DBus_Reg(13),
      D(1) => DBus_Reg(14),
      D(0) => DBus_Reg(15),
      E(0) => AXI_LITE_IPIF_I_n_48,
      GPIO_intr => GPIO_intr,
      GPIO_xferAck_i => GPIO_xferAck_i,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg\,
      \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\ => \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg\,
      bus2ip_cs(0) => bus2ip_cs(1),
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      gpio_io_o(15 downto 0) => gpio_io_o(15 downto 0),
      intr2bus_rdack => intr2bus_rdack,
      ip2Bus_RdAck_intr_reg_hole => ip2Bus_RdAck_intr_reg_hole,
      ip2bus_rdack_i => ip2bus_rdack_i,
      s_axi_aclk => s_axi_aclk
    );
\ip2bus_data_i_D1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_i(0),
      Q => ip2bus_data_i_D1(0),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(16),
      Q => ip2bus_data_i_D1(16),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(17),
      Q => ip2bus_data_i_D1(17),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(18),
      Q => ip2bus_data_i_D1(18),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(19),
      Q => ip2bus_data_i_D1(19),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(0),
      Q => ip2bus_data_i_D1(1),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(20),
      Q => ip2bus_data_i_D1(20),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(21),
      Q => ip2bus_data_i_D1(21),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(22),
      Q => ip2bus_data_i_D1(22),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(23),
      Q => ip2bus_data_i_D1(23),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(24),
      Q => ip2bus_data_i_D1(24),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(25),
      Q => ip2bus_data_i_D1(25),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(26),
      Q => ip2bus_data_i_D1(26),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(27),
      Q => ip2bus_data_i_D1(27),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(28),
      Q => ip2bus_data_i_D1(28),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(29),
      Q => ip2bus_data_i_D1(29),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(30),
      Q => ip2bus_data_i_D1(30),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_i(31),
      Q => ip2bus_data_i_D1(31),
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_i,
      Q => ip2bus_rdack_i_D1,
      R => bus2ip_reset
    );
ip2bus_wrack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_i,
      Q => ip2bus_wrack_i_D1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_gpio_0_0 is
  port (
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
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of microblaze_axi_gpio_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microblaze_axi_gpio_0_0 : entity is "microblaze_axi_gpio_0_0,axi_gpio,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microblaze_axi_gpio_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of microblaze_axi_gpio_0_0 : entity is "axi_gpio,Vivado 2025.1";
end microblaze_axi_gpio_0_0;

architecture STRUCTURE of microblaze_axi_gpio_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_gpio2_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of U0 : label is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of U0 : label is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of U0 : label is 1;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of U0 : label is 0;
  attribute C_DOUT_DEFAULT : string;
  attribute C_DOUT_DEFAULT of U0 : label is "32'b00000000000000000000000000000000";
  attribute C_DOUT_DEFAULT_2 : string;
  attribute C_DOUT_DEFAULT_2 of U0 : label is "32'b00000000000000000000000000000000";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of U0 : label is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of U0 : label is 16;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of U0 : label is 1;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of U0 : label is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TRI_DEFAULT : string;
  attribute C_TRI_DEFAULT of U0 : label is "32'b11111111111111111111111111111111";
  attribute C_TRI_DEFAULT_2 : string;
  attribute C_TRI_DEFAULT_2 of U0 : label is "32'b11111111111111111111111111111111";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute x_interface_info : string;
  attribute x_interface_info of ip2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 IP2INTC_IRQ INTERRUPT";
  attribute x_interface_mode : string;
  attribute x_interface_mode of ip2intc_irpt : signal is "master IP2INTC_IRQ";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ip2intc_irpt : signal is "XIL_INTERFACENAME IP2INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_mode of s_axi_aclk : signal is "slave S_AXI_ACLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_mode of s_axi_aresetn : signal is "slave S_AXI_ARESETN";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of gpio_io_o : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_O";
  attribute x_interface_mode of gpio_io_o : signal is "master GPIO";
  attribute x_interface_parameter of gpio_io_o : signal is "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_mode of s_axi_awaddr : signal is "slave S_AXI";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.microblaze_axi_gpio_0_0_axi_gpio
     port map (
      gpio2_io_i(31 downto 0) => B"00000000000000000000000000000000",
      gpio2_io_o(31 downto 0) => NLW_U0_gpio2_io_o_UNCONNECTED(31 downto 0),
      gpio2_io_t(31 downto 0) => NLW_U0_gpio2_io_t_UNCONNECTED(31 downto 0),
      gpio_io_i(15 downto 0) => B"0000000000000000",
      gpio_io_o(15 downto 0) => gpio_io_o(15 downto 0),
      gpio_io_t(15 downto 0) => NLW_U0_gpio_io_t_UNCONNECTED(15 downto 0),
      ip2intc_irpt => ip2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 2) => s_axi_araddr(8 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 2) => s_axi_awaddr(8 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
