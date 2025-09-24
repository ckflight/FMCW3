-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Sep 13 20:48:31 2025
-- Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
-- Command     : write_vhdl -force -mode funcsim -rename_top microblaze_axi_uartlite_0_0 -prefix
--               microblaze_axi_uartlite_0_0_ microblaze_axi_uartlite_0_0_sim_netlist.vhdl
-- Design      : microblaze_axi_uartlite_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tiftg256-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_baudrate is
  port (
    en_16x_Baud : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
end microblaze_axi_uartlite_0_0_baudrate;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_baudrate is
  signal EN_16x_Baud_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair9";
begin
en_16x_baud_RnM: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(4),
      I1 => count(3),
      I2 => count(5),
      I3 => count(0),
      I4 => count(1),
      I5 => count(2),
      O => EN_16x_Baud_n_0
    );
EN_16x_Baud_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EN_16x_Baud_n_0,
      Q => en_16x_Baud,
      R => SR(0)
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFFE"
    )
        port map (
      I0 => count(2),
      I1 => count(3),
      I2 => count(4),
      I3 => count(5),
      I4 => count(1),
      I5 => count(0),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(0),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F00E"
    )
        port map (
      I0 => count(4),
      I1 => count(5),
      I2 => count(3),
      I3 => count(2),
      I4 => count(1),
      I5 => count(0),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => count(2),
      I1 => count(3),
      I2 => count(1),
      I3 => count(0),
      I4 => count(4),
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => count(2),
      I1 => count(3),
      I2 => count(1),
      I3 => count(0),
      I4 => count(4),
      I5 => count(5),
      O => \count[5]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => SR(0)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => count(1),
      R => SR(0)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => count(2),
      R => SR(0)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \count[3]_i_1_n_0\,
      Q => count(3),
      R => SR(0)
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \count[4]_i_1_n_0\,
      Q => count(4),
      R => SR(0)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \count[5]_i_1_n_0\,
      Q => count(5),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_pselect_f is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC
  );
end microblaze_axi_uartlite_0_0_pselect_f;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_pselect_f is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \microblaze_axi_uartlite_0_0_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \microblaze_axi_uartlite_0_0_pselect_f__parameterized1\ : entity is "pselect_f";
end \microblaze_axi_uartlite_0_0_pselect_f__parameterized1\;

architecture STRUCTURE of \microblaze_axi_uartlite_0_0_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\,
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_srl_fifo is
  port (
    tx_Buffer_Full : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    mux_Out : out STD_LOGIC;
    tx_Start0 : out STD_LOGIC;
    Interrupt0 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    fifo_wr : in STD_LOGIC;
    fifo_Read : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    serial_Data_reg : in STD_LOGIC;
    serial_Data_reg_0 : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    \addr_i_reg[0]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    tx_Start_reg : in STD_LOGIC;
    tx_DataBits : in STD_LOGIC;
    tx_Start : in STD_LOGIC;
    tx_Buffer_Empty_Pre : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    rx_Data_Present_Pre : in STD_LOGIC;
    Interrupt_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end microblaze_axi_uartlite_0_0_srl_fifo;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_srl_fifo is
  signal \FIFO_Full_i_3__0_n_0\ : STD_LOGIC;
  signal \FIFO_Full_i_4__0_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TX_FIFO_Reset : STD_LOGIC;
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \addr_i_p1__0\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal addr_i_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fifo_DOut : STD_LOGIC_VECTOR ( 0 to 7 );
  signal fifo_full_p1 : STD_LOGIC;
  signal mux_0123 : STD_LOGIC;
  signal mux_4567 : STD_LOGIC;
  signal \^tx_buffer_full\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_i[3]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr_i[4]_i_1__0\ : label is "soft_lutpair17";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_reg[15][0]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \data_reg[15][0]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][0]_srl16 ";
  attribute srl_bus_name of \data_reg[15][1]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][1]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][1]_srl16 ";
  attribute srl_bus_name of \data_reg[15][2]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][2]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][2]_srl16 ";
  attribute srl_bus_name of \data_reg[15][3]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][3]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][3]_srl16 ";
  attribute srl_bus_name of \data_reg[15][4]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][4]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][4]_srl16 ";
  attribute srl_bus_name of \data_reg[15][5]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][5]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][5]_srl16 ";
  attribute srl_bus_name of \data_reg[15][6]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][6]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][6]_srl16 ";
  attribute srl_bus_name of \data_reg[15][7]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][7]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][7]_srl16 ";
begin
  Q(0) <= \^q\(0);
  tx_Buffer_Full <= \^tx_buffer_full\;
\FIFO_Full_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \addr_i_reg[0]_0\,
      I1 => s_axi_aresetn,
      O => TX_FIFO_Reset
    );
\FIFO_Full_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02080820"
    )
        port map (
      I0 => \FIFO_Full_i_3__0_n_0\,
      I1 => addr_i_reg(3),
      I2 => \^q\(0),
      I3 => \FIFO_Full_i_4__0_n_0\,
      I4 => addr_i_reg(2),
      O => fifo_full_p1
    );
\FIFO_Full_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5900A20000000004"
    )
        port map (
      I0 => fifo_wr,
      I1 => fifo_Read,
      I2 => \^q\(0),
      I3 => addr_i_reg(2),
      I4 => addr_i_reg(0),
      I5 => addr_i_reg(1),
      O => \FIFO_Full_i_3__0_n_0\
    );
\FIFO_Full_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF55555555555545"
    )
        port map (
      I0 => addr_i_reg(2),
      I1 => \^q\(0),
      I2 => fifo_Read,
      I3 => fifo_wr,
      I4 => addr_i_reg(0),
      I5 => addr_i_reg(1),
      O => \FIFO_Full_i_4__0_n_0\
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^tx_buffer_full\,
      R => TX_FIFO_Reset
    );
Interrupt_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"202020F0"
    )
        port map (
      I0 => \^q\(0),
      I1 => tx_Buffer_Empty_Pre,
      I2 => enable_interrupts,
      I3 => rx_Data_Present_Pre,
      I4 => Interrupt_reg(0),
      O => Interrupt0
    );
\addr_i[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9A9A9A659A9A"
    )
        port map (
      I0 => addr_i_reg(0),
      I1 => \^q\(0),
      I2 => fifo_Read,
      I3 => \^tx_buffer_full\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => Bus_RNW_reg,
      O => addr_i_p1(0)
    );
\addr_i[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C66C9CC"
    )
        port map (
      I0 => addr_i_reg(0),
      I1 => addr_i_reg(1),
      I2 => \^q\(0),
      I3 => fifo_Read,
      I4 => fifo_wr,
      O => addr_i_p1(1)
    );
\addr_i[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78F07878F0E1F0F0"
    )
        port map (
      I0 => addr_i_reg(1),
      I1 => addr_i_reg(0),
      I2 => addr_i_reg(2),
      I3 => \^q\(0),
      I4 => fifo_Read,
      I5 => fifo_wr,
      O => addr_i_p1(2)
    );
\addr_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \FIFO_Full_i_4__0_n_0\,
      I1 => addr_i_reg(3),
      I2 => addr_i_reg(2),
      O => addr_i_p1(3)
    );
\addr_i[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => addr_i_reg(2),
      I1 => \FIFO_Full_i_4__0_n_0\,
      I2 => \^q\(0),
      I3 => addr_i_reg(3),
      O => \addr_i_p1__0\(4)
    );
\addr_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => addr_i_reg(0),
      S => TX_FIFO_Reset
    );
\addr_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => addr_i_reg(1),
      S => TX_FIFO_Reset
    );
\addr_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => addr_i_reg(2),
      S => TX_FIFO_Reset
    );
\addr_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => addr_i_reg(3),
      S => TX_FIFO_Reset
    );
\addr_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \addr_i_p1__0\(4),
      Q => \^q\(0),
      S => TX_FIFO_Reset
    );
\data_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(7),
      Q => fifo_DOut(0)
    );
\data_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(6),
      Q => fifo_DOut(1)
    );
\data_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(5),
      Q => fifo_DOut(2)
    );
\data_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(4),
      Q => fifo_DOut(3)
    );
\data_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(3),
      Q => fifo_DOut(4)
    );
\data_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(2),
      Q => fifo_DOut(5)
    );
\data_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(1),
      Q => fifo_DOut(6)
    );
\data_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(0),
      Q => fifo_DOut(7)
    );
serial_Data_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => fifo_DOut(1),
      I1 => fifo_DOut(3),
      I2 => fifo_DOut(0),
      I3 => serial_Data_reg_0,
      I4 => p_5_in,
      I5 => fifo_DOut(2),
      O => mux_0123
    );
serial_Data_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => fifo_DOut(5),
      I1 => fifo_DOut(7),
      I2 => fifo_DOut(4),
      I3 => serial_Data_reg_0,
      I4 => p_5_in,
      I5 => fifo_DOut(6),
      O => mux_4567
    );
serial_Data_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_0123,
      I1 => mux_4567,
      O => mux_Out,
      S => serial_Data_reg
    );
tx_Start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F02"
    )
        port map (
      I0 => tx_Start_reg,
      I1 => \^q\(0),
      I2 => tx_DataBits,
      I3 => tx_Start,
      O => tx_Start0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_srl_fifo_0 is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_rx : in STD_LOGIC;
    fifo_Write : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    status_reg_reg : in STD_LOGIC;
    clr_Status : in STD_LOGIC;
    \addr_i_reg[0]_0\ : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_axi_uartlite_0_0_srl_fifo_0 : entity is "srl_fifo";
end microblaze_axi_uartlite_0_0_srl_fifo_0;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_srl_fifo_0 is
  signal FIFO_Full_i_3_n_0 : STD_LOGIC;
  signal FIFO_Full_i_5_n_0 : STD_LOGIC;
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RX_FIFO_Reset : STD_LOGIC;
  signal \addr_i[4]_i_2_n_0\ : STD_LOGIC;
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal addr_i_p111_out : STD_LOGIC;
  signal addr_i_p1_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal addr_i_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fifo_full_p1 : STD_LOGIC;
  signal fifo_wr : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_i[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr_i[4]_i_1\ : label is "soft_lutpair10";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_reg[15][0]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \data_reg[15][0]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][0]_srl16 ";
  attribute srl_bus_name of \data_reg[15][1]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][1]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][1]_srl16 ";
  attribute srl_bus_name of \data_reg[15][2]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][2]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][2]_srl16 ";
  attribute srl_bus_name of \data_reg[15][3]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][3]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][3]_srl16 ";
  attribute srl_bus_name of \data_reg[15][4]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][4]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][4]_srl16 ";
  attribute srl_bus_name of \data_reg[15][5]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][5]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][5]_srl16 ";
  attribute srl_bus_name of \data_reg[15][6]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][6]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][6]_srl16 ";
  attribute srl_bus_name of \data_reg[15][7]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] ";
  attribute srl_name of \data_reg[15][7]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][7]_srl16 ";
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  Q(0) <= \^q\(0);
FIFO_Full_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \addr_i_reg[0]_0\,
      I1 => s_axi_aresetn,
      O => RX_FIFO_Reset
    );
FIFO_Full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000800200800"
    )
        port map (
      I0 => FIFO_Full_i_3_n_0,
      I1 => addr_i_reg(3),
      I2 => \^q\(0),
      I3 => addr_i_reg(2),
      I4 => addr_i_p111_out,
      I5 => FIFO_Full_i_5_n_0,
      O => fifo_full_p1
    );
FIFO_Full_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222822288881888"
    )
        port map (
      I0 => addr_i_reg(1),
      I1 => fifo_wr,
      I2 => Bus_RNW_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^q\(0),
      I5 => addr_i_reg(0),
      O => FIFO_Full_i_3_n_0
    );
FIFO_Full_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404000404040"
    )
        port map (
      I0 => \^q\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => Bus_RNW_reg,
      I3 => valid_rx,
      I4 => fifo_Write,
      I5 => \^fifo_full_reg_0\,
      O => addr_i_p111_out
    );
FIFO_Full_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808888880E000000"
    )
        port map (
      I0 => addr_i_reg(0),
      I1 => addr_i_reg(1),
      I2 => \^q\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      I5 => fifo_wr,
      O => FIFO_Full_i_5_n_0
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => RX_FIFO_Reset
    );
\addr_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65559AAA"
    )
        port map (
      I0 => addr_i_reg(0),
      I1 => \^q\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => Bus_RNW_reg,
      I4 => fifo_wr,
      O => addr_i_p1_0(0)
    );
\addr_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C666666C9CCCCCC"
    )
        port map (
      I0 => addr_i_reg(0),
      I1 => addr_i_reg(1),
      I2 => \^q\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      I5 => fifo_wr,
      O => addr_i_p1_0(1)
    );
\addr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78F07878F0E1F0F0"
    )
        port map (
      I0 => addr_i_reg(1),
      I1 => addr_i_reg(0),
      I2 => addr_i_reg(2),
      I3 => \^q\(0),
      I4 => bus2ip_rdce(0),
      I5 => fifo_wr,
      O => addr_i_p1_0(2)
    );
\addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \addr_i[4]_i_2_n_0\,
      I1 => addr_i_reg(3),
      I2 => addr_i_reg(2),
      O => addr_i_p1_0(3)
    );
\addr_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => addr_i_reg(2),
      I1 => \addr_i[4]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => addr_i_reg(3),
      O => addr_i_p1(4)
    );
\addr_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF55555555555545"
    )
        port map (
      I0 => addr_i_reg(2),
      I1 => \^q\(0),
      I2 => bus2ip_rdce(0),
      I3 => fifo_wr,
      I4 => addr_i_reg(0),
      I5 => addr_i_reg(1),
      O => \addr_i[4]_i_2_n_0\
    );
\addr_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1_0(0),
      Q => addr_i_reg(0),
      S => RX_FIFO_Reset
    );
\addr_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1_0(1),
      Q => addr_i_reg(1),
      S => RX_FIFO_Reset
    );
\addr_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1_0(2),
      Q => addr_i_reg(2),
      S => RX_FIFO_Reset
    );
\addr_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1_0(3),
      Q => addr_i_reg(3),
      S => RX_FIFO_Reset
    );
\addr_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(4),
      Q => \^q\(0),
      S => RX_FIFO_Reset
    );
\data_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(0),
      Q => \out\(7)
    );
\data_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(1),
      Q => \out\(6)
    );
\data_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(2),
      Q => \out\(5)
    );
\data_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(3),
      Q => \out\(4)
    );
\data_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(4),
      Q => \out\(3)
    );
\data_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(5),
      Q => \out\(2)
    );
\data_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(6),
      Q => \out\(1)
    );
\data_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr_i_reg(0),
      A1 => addr_i_reg(1),
      A2 => addr_i_reg(2),
      A3 => addr_i_reg(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(7),
      Q => \out\(0)
    );
\data_reg[15][7]_srl16_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => fifo_Write,
      I2 => valid_rx,
      O => fifo_wr
    );
\status_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA80"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => fifo_Write,
      I2 => \^fifo_full_reg_0\,
      I3 => status_reg_reg,
      I4 => clr_Status,
      O => s_axi_aresetn_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of microblaze_axi_uartlite_0_0_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of microblaze_axi_uartlite_0_0_xpm_cdc_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of microblaze_axi_uartlite_0_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of microblaze_axi_uartlite_0_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of microblaze_axi_uartlite_0_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of microblaze_axi_uartlite_0_0_xpm_cdc_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of microblaze_axi_uartlite_0_0_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of microblaze_axi_uartlite_0_0_xpm_cdc_single : entity is "SINGLE";
end microblaze_axi_uartlite_0_0_xpm_cdc_single;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    ip2bus_error : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : out STD_LOGIC;
    fifo_wr : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_TX_FIFO : out STD_LOGIC;
    reset_RX_FIFO : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_i_reg[4]\ : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[4]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    start2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    tx_Buffer_Empty_Pre_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state1__2\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_Buffer_Full : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    status_reg_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : in STD_LOGIC;
    bus2ip_rnw_i : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4\ : in STD_LOGIC
  );
end microblaze_axi_uartlite_0_0_address_decoder;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of clr_Status_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_reg[15][7]_srl16_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of enable_interrupts_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of reset_RX_FIFO_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of reset_TX_FIFO_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_bresp_i[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_bresp_i[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rresp_i[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair2";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\;
  \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ <= \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\;
  \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ <= \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\;
  \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ <= \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => start2,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => s_axi_rvalid_i_reg(3),
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => s_axi_rvalid_i_reg(2),
      I3 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I4 => \state1__2\,
      I5 => s_axi_rvalid_i_reg(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_rvalid_i_reg(1),
      I3 => s_axi_arvalid,
      I4 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I5 => s_axi_rvalid_i_reg(2),
      O => D(1)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I1 => s_axi_rvalid_i_reg(3),
      I2 => s_axi_arvalid,
      I3 => s_axi_rvalid_i_reg(1),
      O => D(2)
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_3,
      Q => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3\,
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_2,
      Q => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4\,
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.microblaze_axi_uartlite_0_0_pselect_f
     port map (
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3\,
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\microblaze_axi_uartlite_0_0_pselect_f__parameterized1\
     port map (
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4\,
      ce_expnd_i_1 => ce_expnd_i_1
    );
clr_Status_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2\(0)
    );
\data_reg[15][7]_srl16_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => tx_Buffer_Full,
      O => fifo_wr
    );
enable_interrupts_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => enable_interrupts,
      O => \s_axi_wdata[4]\
    );
reset_RX_FIFO_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => s_axi_wdata(1),
      O => reset_RX_FIFO
    );
reset_TX_FIFO_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => s_axi_wdata(0),
      O => reset_TX_FIFO
    );
rx_Data_Present_Pre_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => Q(0),
      I1 => s_axi_aresetn,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      O => \addr_i_reg[4]\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\
    );
\s_axi_bresp_i[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce(0)
    );
\s_axi_bresp_i[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(0)
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I1 => s_axi_rvalid_i_reg(2),
      I2 => s_axi_bready,
      I3 => s_axi_bvalid,
      O => \FSM_onehot_state_reg[2]\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5500C000"
    )
        port map (
      I0 => Q(0),
      I1 => \out\(0),
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\(0)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => rx_Buffer_Full,
      I1 => \out\(1),
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\(1)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => tx_Buffer_Empty_Pre_reg(0),
      I1 => \out\(2),
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\(2)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => tx_Buffer_Full,
      I1 => \out\(3),
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => enable_interrupts,
      I1 => \out\(4),
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => status_reg_reg,
      I1 => \out\(5),
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[6]\,
      I1 => \out\(6),
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\(6)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \out\(7),
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\(7)
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0008888"
    )
        port map (
      I0 => tx_Buffer_Full,
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => Q(0),
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^bus_rnw_reg_reg_0\,
      O => ip2bus_error
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I1 => s_axi_rvalid_i_reg(3),
      I2 => s_axi_rready,
      I3 => s_axi_rvalid,
      O => \FSM_onehot_state_reg[3]\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\
    );
tx_Buffer_Empty_Pre_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => tx_Buffer_Empty_Pre_reg(0),
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      O => s_axi_aresetn_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_uartlite_rx is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_shift_reg_r_12_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clr_Status_reg : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    en_16x_Baud : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 );
    clr_Status : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \status_reg_reg[1]\ : in STD_LOGIC;
    status_reg_reg : in STD_LOGIC;
    \addr_i_reg[0]\ : in STD_LOGIC
  );
end microblaze_axi_uartlite_0_0_uartlite_rx;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_uartlite_rx is
  signal RX_D2 : STD_LOGIC;
  signal \SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1_n_0\ : STD_LOGIC;
  signal \SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2]\ : STD_LOGIC;
  signal \SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3]\ : STD_LOGIC;
  signal \SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4]\ : STD_LOGIC;
  signal \SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5]\ : STD_LOGIC;
  signal \SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6]\ : STD_LOGIC;
  signal \SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7]\ : STD_LOGIC;
  signal \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0\ : STD_LOGIC;
  signal \SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8]\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0\ : STD_LOGIC;
  signal \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_13_n_0\ : STD_LOGIC;
  signal data_shift_reg_gate_n_0 : STD_LOGIC;
  signal data_shift_reg_r_0_n_0 : STD_LOGIC;
  signal data_shift_reg_r_10_n_0 : STD_LOGIC;
  signal data_shift_reg_r_11_n_0 : STD_LOGIC;
  signal \^data_shift_reg_r_12_0\ : STD_LOGIC;
  signal data_shift_reg_r_13_n_0 : STD_LOGIC;
  signal data_shift_reg_r_1_n_0 : STD_LOGIC;
  signal data_shift_reg_r_2_n_0 : STD_LOGIC;
  signal data_shift_reg_r_3_n_0 : STD_LOGIC;
  signal data_shift_reg_r_4_n_0 : STD_LOGIC;
  signal data_shift_reg_r_5_n_0 : STD_LOGIC;
  signal data_shift_reg_r_6_n_0 : STD_LOGIC;
  signal data_shift_reg_r_7_n_0 : STD_LOGIC;
  signal data_shift_reg_r_8_n_0 : STD_LOGIC;
  signal data_shift_reg_r_9_n_0 : STD_LOGIC;
  signal data_shift_reg_r_n_0 : STD_LOGIC;
  signal fifo_Write : STD_LOGIC;
  signal fifo_Write0 : STD_LOGIC;
  signal frame_err_ocrd : STD_LOGIC;
  signal frame_err_ocrd_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal running_i_1_n_0 : STD_LOGIC;
  signal running_reg_n_0 : STD_LOGIC;
  signal rx_1 : STD_LOGIC;
  signal rx_2 : STD_LOGIC;
  signal rx_3 : STD_LOGIC;
  signal rx_4 : STD_LOGIC;
  signal rx_5 : STD_LOGIC;
  signal rx_6 : STD_LOGIC;
  signal rx_7 : STD_LOGIC;
  signal rx_8 : STD_LOGIC;
  signal rx_9 : STD_LOGIC;
  signal rx_Frame_Error : STD_LOGIC;
  signal sample_Point : STD_LOGIC;
  signal serial_to_Par : STD_LOGIC_VECTOR ( 2 to 8 );
  signal start_Edge_Detected : STD_LOGIC;
  signal start_Edge_Detected0 : STD_LOGIC;
  signal start_Edge_Detected_i_2_n_0 : STD_LOGIC;
  signal stop_Bit_Position_i_1_n_0 : STD_LOGIC;
  signal stop_Bit_Position_reg_n_0 : STD_LOGIC;
  signal valid_rx : STD_LOGIC;
  signal valid_rx_i_1_n_0 : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of INPUT_DOUBLE_REGS3 : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of INPUT_DOUBLE_REGS3 : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of INPUT_DOUBLE_REGS3 : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of INPUT_DOUBLE_REGS3 : label is 0;
  attribute VERSION : integer;
  attribute VERSION of INPUT_DOUBLE_REGS3 : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of INPUT_DOUBLE_REGS3 : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of INPUT_DOUBLE_REGS3 : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SERIAL_TO_PARALLEL[3].fifo_din[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \SERIAL_TO_PARALLEL[4].fifo_din[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \SERIAL_TO_PARALLEL[5].fifo_din[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \SERIAL_TO_PARALLEL[6].fifo_din[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \SERIAL_TO_PARALLEL[7].fifo_din[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_2\ : label is "soft_lutpair14";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/data_shift_reg ";
  attribute srl_name : string;
  attribute srl_name of \data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12 ";
  attribute SOFT_HLUTNM of \data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of fifo_Write_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of frame_err_ocrd_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \status_reg[1]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of stop_Bit_Position_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of valid_rx_i_1 : label is "soft_lutpair12";
begin
  SR(0) <= \^sr\(0);
  data_shift_reg_r_12_0 <= \^data_shift_reg_r_12_0\;
INPUT_DOUBLE_REGS3: entity work.microblaze_axi_uartlite_0_0_xpm_cdc_single
     port map (
      dest_clk => s_axi_aclk,
      dest_out => RX_D2,
      src_clk => '0',
      src_in => rx
    );
Interrupt_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFF4000"
    )
        port map (
      I0 => stop_Bit_Position_reg_n_0,
      I1 => sample_Point,
      I2 => RX_D2,
      I3 => en_16x_Baud,
      I4 => start_Edge_Detected,
      I5 => p_1_in,
      O => \SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1_n_0\
    );
\SERIAL_TO_PARALLEL[1].fifo_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1_n_0\,
      Q => p_1_in,
      R => \^sr\(0)
    );
\SERIAL_TO_PARALLEL[2].fifo_din[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2]\,
      I1 => stop_Bit_Position_reg_n_0,
      I2 => sample_Point,
      I3 => p_1_in,
      O => serial_to_Par(2)
    );
\SERIAL_TO_PARALLEL[2].fifo_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => serial_to_Par(2),
      Q => \SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2]\,
      R => \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0\
    );
\SERIAL_TO_PARALLEL[3].fifo_din[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3]\,
      I1 => stop_Bit_Position_reg_n_0,
      I2 => sample_Point,
      I3 => \SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2]\,
      O => serial_to_Par(3)
    );
\SERIAL_TO_PARALLEL[3].fifo_din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => serial_to_Par(3),
      Q => \SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3]\,
      R => \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0\
    );
\SERIAL_TO_PARALLEL[4].fifo_din[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4]\,
      I1 => stop_Bit_Position_reg_n_0,
      I2 => sample_Point,
      I3 => \SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3]\,
      O => serial_to_Par(4)
    );
\SERIAL_TO_PARALLEL[4].fifo_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => serial_to_Par(4),
      Q => \SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4]\,
      R => \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0\
    );
\SERIAL_TO_PARALLEL[5].fifo_din[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5]\,
      I1 => stop_Bit_Position_reg_n_0,
      I2 => sample_Point,
      I3 => \SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4]\,
      O => serial_to_Par(5)
    );
\SERIAL_TO_PARALLEL[5].fifo_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => serial_to_Par(5),
      Q => \SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5]\,
      R => \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0\
    );
\SERIAL_TO_PARALLEL[6].fifo_din[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6]\,
      I1 => stop_Bit_Position_reg_n_0,
      I2 => sample_Point,
      I3 => \SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5]\,
      O => serial_to_Par(6)
    );
\SERIAL_TO_PARALLEL[6].fifo_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => serial_to_Par(6),
      Q => \SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6]\,
      R => \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0\
    );
\SERIAL_TO_PARALLEL[7].fifo_din[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7]\,
      I1 => stop_Bit_Position_reg_n_0,
      I2 => sample_Point,
      I3 => \SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6]\,
      O => serial_to_Par(7)
    );
\SERIAL_TO_PARALLEL[7].fifo_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => serial_to_Par(7),
      Q => \SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7]\,
      R => \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0\
    );
\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => start_Edge_Detected,
      I1 => s_axi_aresetn,
      O => \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0\
    );
\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8]\,
      I1 => stop_Bit_Position_reg_n_0,
      I2 => sample_Point,
      I3 => \SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7]\,
      O => serial_to_Par(8)
    );
\SERIAL_TO_PARALLEL[8].fifo_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => serial_to_Par(8),
      Q => \SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8]\,
      R => \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0\
    );
SRL_FIFO_I: entity work.microblaze_axi_uartlite_0_0_srl_fifo_0
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      Q(0) => Q(0),
      \addr_i_reg[0]_0\ => \addr_i_reg[0]\,
      bus2ip_rdce(0) => bus2ip_rdce(0),
      clr_Status => clr_Status,
      fifo_Write => fifo_Write,
      \in\(0) => p_1_in,
      \in\(1) => \SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2]\,
      \in\(2) => \SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3]\,
      \in\(3) => \SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4]\,
      \in\(4) => \SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5]\,
      \in\(5) => \SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6]\,
      \in\(6) => \SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7]\,
      \in\(7) => \SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8]\,
      \out\(7 downto 0) => \out\(7 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => s_axi_aresetn_0,
      status_reg_reg => status_reg_reg,
      valid_rx => valid_rx
    );
\data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => en_16x_Baud,
      CLK => s_axi_aclk,
      D => p_1_out(0),
      Q => \data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0\
    );
\data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => stop_Bit_Position_reg_n_0,
      I1 => valid_rx,
      I2 => sample_Point,
      I3 => start_Edge_Detected,
      O => p_1_out(0)
    );
\data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_13\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => \data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0\,
      Q => \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_13_n_0\,
      R => '0'
    );
\data_shift_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_gate_n_0,
      Q => sample_Point,
      R => \^sr\(0)
    );
data_shift_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_13_n_0\,
      I1 => data_shift_reg_r_13_n_0,
      O => data_shift_reg_gate_n_0
    );
data_shift_reg_r: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => '1',
      Q => data_shift_reg_r_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_n_0,
      Q => data_shift_reg_r_0_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_0_n_0,
      Q => data_shift_reg_r_1_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_10: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_9_n_0,
      Q => data_shift_reg_r_10_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_11: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_10_n_0,
      Q => data_shift_reg_r_11_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_12: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_11_n_0,
      Q => \^data_shift_reg_r_12_0\,
      R => \^sr\(0)
    );
data_shift_reg_r_13: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => \^data_shift_reg_r_12_0\,
      Q => data_shift_reg_r_13_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_1_n_0,
      Q => data_shift_reg_r_2_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_2_n_0,
      Q => data_shift_reg_r_3_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_3_n_0,
      Q => data_shift_reg_r_4_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_4_n_0,
      Q => data_shift_reg_r_5_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_6: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_5_n_0,
      Q => data_shift_reg_r_6_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_7: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_6_n_0,
      Q => data_shift_reg_r_7_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_8: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_7_n_0,
      Q => data_shift_reg_r_8_n_0,
      R => \^sr\(0)
    );
data_shift_reg_r_9: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_r_8_n_0,
      Q => data_shift_reg_r_9_n_0,
      R => \^sr\(0)
    );
fifo_Write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => RX_D2,
      I1 => en_16x_Baud,
      I2 => stop_Bit_Position_reg_n_0,
      I3 => sample_Point,
      O => fifo_Write0
    );
fifo_Write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_Write0,
      Q => fifo_Write,
      R => \^sr\(0)
    );
frame_err_ocrd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0080"
    )
        port map (
      I0 => sample_Point,
      I1 => stop_Bit_Position_reg_n_0,
      I2 => en_16x_Baud,
      I3 => RX_D2,
      I4 => frame_err_ocrd,
      O => frame_err_ocrd_i_1_n_0
    );
frame_err_ocrd_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => frame_err_ocrd_i_1_n_0,
      Q => frame_err_ocrd,
      R => \^sr\(0)
    );
running_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAA00"
    )
        port map (
      I0 => start_Edge_Detected,
      I1 => sample_Point,
      I2 => stop_Bit_Position_reg_n_0,
      I3 => en_16x_Baud,
      I4 => running_reg_n_0,
      O => running_i_1_n_0
    );
running_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => running_i_1_n_0,
      Q => running_reg_n_0,
      R => \^sr\(0)
    );
rx_1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => RX_D2,
      Q => rx_1,
      R => \^sr\(0)
    );
rx_2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_1,
      Q => rx_2,
      R => \^sr\(0)
    );
rx_3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_2,
      Q => rx_3,
      R => \^sr\(0)
    );
rx_4_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_3,
      Q => rx_4,
      R => \^sr\(0)
    );
rx_5_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_4,
      Q => rx_5,
      R => \^sr\(0)
    );
rx_6_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_5,
      Q => rx_6,
      R => \^sr\(0)
    );
rx_7_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_6,
      Q => rx_7,
      R => \^sr\(0)
    );
rx_8_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_7,
      Q => rx_8,
      R => \^sr\(0)
    );
rx_9_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_8,
      Q => rx_9,
      R => \^sr\(0)
    );
start_Edge_Detected_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rx_7,
      I1 => rx_5,
      I2 => start_Edge_Detected_i_2_n_0,
      I3 => rx_4,
      I4 => rx_6,
      I5 => frame_err_ocrd,
      O => start_Edge_Detected0
    );
start_Edge_Detected_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => rx_8,
      I2 => rx_2,
      I3 => rx_3,
      I4 => rx_1,
      I5 => rx_9,
      O => start_Edge_Detected_i_2_n_0
    );
start_Edge_Detected_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => start_Edge_Detected0,
      Q => start_Edge_Detected,
      R => \^sr\(0)
    );
\status_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => clr_Status,
      I1 => s_axi_aresetn,
      I2 => \status_reg_reg[1]\,
      I3 => rx_Frame_Error,
      O => clr_Status_reg
    );
\status_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => RX_D2,
      I1 => en_16x_Baud,
      I2 => stop_Bit_Position_reg_n_0,
      I3 => sample_Point,
      O => rx_Frame_Error
    );
stop_Bit_Position_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"38F0"
    )
        port map (
      I0 => \SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8]\,
      I1 => sample_Point,
      I2 => stop_Bit_Position_reg_n_0,
      I3 => en_16x_Baud,
      O => stop_Bit_Position_i_1_n_0
    );
stop_Bit_Position_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stop_Bit_Position_i_1_n_0,
      Q => stop_Bit_Position_reg_n_0,
      R => \^sr\(0)
    );
valid_rx_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => start_Edge_Detected,
      I1 => fifo_Write,
      I2 => valid_rx,
      O => valid_rx_i_1_n_0
    );
valid_rx_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => valid_rx_i_1_n_0,
      Q => valid_rx,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_uartlite_tx is
  port (
    tx_Buffer_Full : out STD_LOGIC;
    tx : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    Interrupt0 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    en_16x_Baud : in STD_LOGIC;
    \data_shift_reg[15]_0\ : in STD_LOGIC;
    fifo_wr : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \addr_i_reg[0]\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    tx_Buffer_Empty_Pre : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    rx_Data_Present_Pre : in STD_LOGIC;
    Interrupt_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end microblaze_axi_uartlite_0_0_uartlite_tx;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_uartlite_tx is
  signal TX0 : STD_LOGIC;
  signal \data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11_n_0\ : STD_LOGIC;
  signal \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0\ : STD_LOGIC;
  signal data_shift_reg_gate_n_0 : STD_LOGIC;
  signal \data_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal div16 : STD_LOGIC;
  signal fifo_Read : STD_LOGIC;
  signal fifo_Read0 : STD_LOGIC;
  signal mux_Out : STD_LOGIC;
  signal \mux_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \mux_sel_reg_n_0_[2]\ : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal serial_Data : STD_LOGIC;
  signal tx_DataBits : STD_LOGIC;
  signal tx_DataBits0 : STD_LOGIC;
  signal tx_Data_Enable_i_1_n_0 : STD_LOGIC;
  signal tx_Data_Enable_reg_n_0 : STD_LOGIC;
  signal tx_Start : STD_LOGIC;
  signal tx_Start0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/data_shift_reg ";
  attribute srl_name : string;
  attribute srl_name of \data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mux_sel[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mux_sel[1]_i_1\ : label is "soft_lutpair18";
begin
SRL_FIFO_I: entity work.microblaze_axi_uartlite_0_0_srl_fifo
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      Interrupt0 => Interrupt0,
      Interrupt_reg(0) => Interrupt_reg(0),
      Q(0) => Q(0),
      \addr_i_reg[0]_0\ => \addr_i_reg[0]\,
      enable_interrupts => enable_interrupts,
      fifo_Read => fifo_Read,
      fifo_wr => fifo_wr,
      mux_Out => mux_Out,
      p_5_in => p_5_in,
      rx_Data_Present_Pre => rx_Data_Present_Pre,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      serial_Data_reg => \mux_sel_reg_n_0_[0]\,
      serial_Data_reg_0 => \mux_sel_reg_n_0_[2]\,
      tx_Buffer_Empty_Pre => tx_Buffer_Empty_Pre,
      tx_Buffer_Full => tx_Buffer_Full,
      tx_DataBits => tx_DataBits,
      tx_Start => tx_Start,
      tx_Start0 => tx_Start0,
      tx_Start_reg => tx_Data_Enable_reg_n_0
    );
TX_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => serial_Data,
      I1 => tx_DataBits,
      I2 => tx_Start,
      O => TX0
    );
TX_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TX0,
      Q => tx,
      S => SR(0)
    );
\data_shift_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => div16,
      Q => \data_shift_reg_n_0_[0]\,
      S => SR(0)
    );
\data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => en_16x_Baud,
      CLK => s_axi_aclk,
      D => \data_shift_reg_n_0_[0]\,
      Q => \data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11_n_0\
    );
\data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => \data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11_n_0\,
      Q => \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0\,
      R => '0'
    );
\data_shift_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => data_shift_reg_gate_n_0,
      Q => div16,
      R => SR(0)
    );
data_shift_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0\,
      I1 => \data_shift_reg[15]_0\,
      O => data_shift_reg_gate_n_0
    );
fifo_Read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => tx_Data_Enable_reg_n_0,
      I1 => \mux_sel_reg_n_0_[0]\,
      I2 => p_5_in,
      I3 => \mux_sel_reg_n_0_[2]\,
      O => fifo_Read0
    );
fifo_Read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_Read0,
      Q => fifo_Read,
      R => SR(0)
    );
\mux_sel[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1F1F0F0"
    )
        port map (
      I0 => \mux_sel_reg_n_0_[2]\,
      I1 => p_5_in,
      I2 => \mux_sel_reg_n_0_[0]\,
      I3 => tx_DataBits,
      I4 => tx_Data_Enable_reg_n_0,
      O => \mux_sel[0]_i_1_n_0\
    );
\mux_sel[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99CDCCCC"
    )
        port map (
      I0 => \mux_sel_reg_n_0_[2]\,
      I1 => p_5_in,
      I2 => \mux_sel_reg_n_0_[0]\,
      I3 => tx_DataBits,
      I4 => tx_Data_Enable_reg_n_0,
      O => \mux_sel[1]_i_1_n_0\
    );
\mux_sel[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55ABAAAA"
    )
        port map (
      I0 => \mux_sel_reg_n_0_[2]\,
      I1 => p_5_in,
      I2 => \mux_sel_reg_n_0_[0]\,
      I3 => tx_DataBits,
      I4 => tx_Data_Enable_reg_n_0,
      O => \mux_sel[2]_i_1_n_0\
    );
\mux_sel_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mux_sel[0]_i_1_n_0\,
      Q => \mux_sel_reg_n_0_[0]\,
      S => SR(0)
    );
\mux_sel_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mux_sel[1]_i_1_n_0\,
      Q => p_5_in,
      S => SR(0)
    );
\mux_sel_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mux_sel[2]_i_1_n_0\,
      Q => \mux_sel_reg_n_0_[2]\,
      S => SR(0)
    );
serial_Data_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mux_Out,
      Q => serial_Data,
      R => SR(0)
    );
tx_DataBits_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => tx_Start,
      I1 => tx_Data_Enable_reg_n_0,
      I2 => fifo_Read,
      I3 => tx_DataBits,
      O => tx_DataBits0
    );
tx_DataBits_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_DataBits0,
      Q => tx_DataBits,
      R => SR(0)
    );
tx_Data_Enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => div16,
      I1 => tx_Data_Enable_reg_n_0,
      I2 => en_16x_Baud,
      O => tx_Data_Enable_i_1_n_0
    );
tx_Data_Enable_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_Data_Enable_i_1_n_0,
      Q => tx_Data_Enable_reg_n_0,
      R => SR(0)
    );
tx_Start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_Start0,
      Q => tx_Start,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_slave_attachment is
  port (
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    fifo_wr : out STD_LOGIC;
    reset_TX_FIFO : out STD_LOGIC;
    reset_RX_FIFO : out STD_LOGIC;
    \addr_i_reg[4]\ : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[4]\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    tx_Buffer_Empty_Pre_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_Buffer_Full : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    status_reg_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end microblaze_axi_uartlite_0_0_slave_attachment;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_slave_attachment is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_DECODER_n_26 : STD_LOGIC;
  signal I_DECODER_n_27 : STD_LOGIC;
  signal I_DECODER_n_5 : STD_LOGIC;
  signal I_DECODER_n_6 : STD_LOGIC;
  signal I_DECODER_n_7 : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \^bus2ip_rdce\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bus2ip_rnw_i : STD_LOGIC;
  signal bus2ip_rnw_i_i_1_n_0 : STD_LOGIC;
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 2 to 2 );
  signal ip2bus_error : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair8";
begin
  bus2ip_rdce(0) <= \^bus2ip_rdce\(0);
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF007000700070"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => s_axi_arvalid,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_7,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      S => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_6,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_5,
      Q => s_axi_rresp_i,
      R => rst
    );
I_DECODER: entity work.microblaze_axi_uartlite_0_0_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      D(2) => I_DECODER_n_5,
      D(1) => I_DECODER_n_6,
      D(0) => I_DECODER_n_7,
      \FSM_onehot_state_reg[2]\ => I_DECODER_n_27,
      \FSM_onehot_state_reg[3]\ => I_DECODER_n_26,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1\(7 downto 0) => IP2Bus_Data(7 downto 0),
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2\(0) => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\(0),
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3\ => \bus2ip_addr_i_reg_n_0_[3]\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4\ => \bus2ip_addr_i_reg_n_0_[2]\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      Q(0) => Q(0),
      \addr_i_reg[4]\ => \addr_i_reg[4]\,
      bus2ip_rdce(0) => \^bus2ip_rdce\(0),
      bus2ip_rnw_i => bus2ip_rnw_i,
      bus2ip_wrce(0) => bus2ip_wrce(2),
      enable_interrupts => enable_interrupts,
      fifo_wr => fifo_wr,
      ip2bus_error => ip2bus_error,
      \out\(7 downto 0) => \out\(7 downto 0),
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Buffer_Full => rx_Buffer_Full,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => s_axi_aresetn_0,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => \^s_axi_bvalid\,
      \s_axi_rdata_i_reg[6]\ => \s_axi_rdata_i_reg[6]_0\,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => \^s_axi_rvalid\,
      s_axi_rvalid_i_reg(3) => s_axi_rresp_i,
      s_axi_rvalid_i_reg(2) => s_axi_bresp_i,
      s_axi_rvalid_i_reg(1) => \FSM_onehot_state_reg_n_0_[1]\,
      s_axi_rvalid_i_reg(0) => \FSM_onehot_state_reg_n_0_[0]\,
      s_axi_wdata(2 downto 0) => s_axi_wdata(2 downto 0),
      \s_axi_wdata[4]\ => \s_axi_wdata[4]\,
      s_axi_wvalid => s_axi_wvalid,
      start2 => start2,
      \state1__2\ => \state1__2\,
      status_reg_reg => status_reg_reg,
      tx_Buffer_Empty_Pre_reg(0) => tx_Buffer_Empty_Pre_reg(0),
      tx_Buffer_Full => tx_Buffer_Full
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FFFFBF800000"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => s_axi_arvalid,
      I3 => s_axi_awaddr(0),
      I4 => start2_i_1_n_0,
      I5 => \bus2ip_addr_i_reg_n_0_[2]\,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FFFFBF800000"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => s_axi_arvalid,
      I3 => s_axi_awaddr(1),
      I4 => start2_i_1_n_0,
      I5 => \bus2ip_addr_i_reg_n_0_[3]\,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFF000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => bus2ip_rnw_i,
      O => bus2ip_rnw_i_i_1_n_0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_i_1_n_0,
      Q => bus2ip_rnw_i,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_reset,
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => tx_Buffer_Full,
      I1 => bus2ip_wrce(2),
      I2 => Q(0),
      I3 => \^bus2ip_rdce\(0),
      I4 => s_axi_bresp_i,
      I5 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_27,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(6),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(7),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => ip2bus_error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_26,
      Q => \^s_axi_rvalid\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_uartlite_core is
  port (
    rx_Buffer_Full : out STD_LOGIC;
    tx_Buffer_Full : out STD_LOGIC;
    bus2ip_reset : out STD_LOGIC;
    tx : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    enable_interrupts : out STD_LOGIC;
    status_reg_reg : out STD_LOGIC;
    \status_reg_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \addr_i_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    clr_Status_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_TX_FIFO : in STD_LOGIC;
    reset_RX_FIFO : in STD_LOGIC;
    enable_interrupts_reg_0 : in STD_LOGIC;
    tx_Buffer_Empty_Pre_reg_0 : in STD_LOGIC;
    rx_Data_Present_Pre_reg_0 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    fifo_wr : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end microblaze_axi_uartlite_0_0_uartlite_core;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_uartlite_core is
  signal Interrupt0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UARTLITE_RX_I_n_2 : STD_LOGIC;
  signal UARTLITE_RX_I_n_4 : STD_LOGIC;
  signal UARTLITE_RX_I_n_5 : STD_LOGIC;
  signal \^bus2ip_reset\ : STD_LOGIC;
  signal clr_Status : STD_LOGIC;
  signal en_16x_Baud : STD_LOGIC;
  signal \^enable_interrupts\ : STD_LOGIC;
  signal reset_RX_FIFO_reg_n_0 : STD_LOGIC;
  signal reset_TX_FIFO_reg_n_0 : STD_LOGIC;
  signal rx_Data_Present_Pre : STD_LOGIC;
  signal \^status_reg_reg\ : STD_LOGIC;
  signal \^status_reg_reg[1]_0\ : STD_LOGIC;
  signal tx_Buffer_Empty_Pre : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
  bus2ip_reset <= \^bus2ip_reset\;
  enable_interrupts <= \^enable_interrupts\;
  status_reg_reg <= \^status_reg_reg\;
  \status_reg_reg[1]_0\ <= \^status_reg_reg[1]_0\;
BAUD_RATE_I: entity work.microblaze_axi_uartlite_0_0_baudrate
     port map (
      SR(0) => \^bus2ip_reset\,
      en_16x_Baud => en_16x_Baud,
      s_axi_aclk => s_axi_aclk
    );
Interrupt_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Interrupt0,
      Q => interrupt,
      R => \^bus2ip_reset\
    );
UARTLITE_RX_I: entity work.microblaze_axi_uartlite_0_0_uartlite_rx
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      FIFO_Full_reg => rx_Buffer_Full,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      Q(0) => \^q\(0),
      SR(0) => \^bus2ip_reset\,
      \addr_i_reg[0]\ => reset_RX_FIFO_reg_n_0,
      bus2ip_rdce(0) => bus2ip_rdce(0),
      clr_Status => clr_Status,
      clr_Status_reg => UARTLITE_RX_I_n_4,
      data_shift_reg_r_12_0 => UARTLITE_RX_I_n_2,
      en_16x_Baud => en_16x_Baud,
      \out\(7 downto 0) => \out\(7 downto 0),
      rx => rx,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => UARTLITE_RX_I_n_5,
      status_reg_reg => \^status_reg_reg\,
      \status_reg_reg[1]\ => \^status_reg_reg[1]_0\
    );
UARTLITE_TX_I: entity work.microblaze_axi_uartlite_0_0_uartlite_tx
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      Interrupt0 => Interrupt0,
      Interrupt_reg(0) => \^q\(0),
      Q(0) => \addr_i_reg[4]\(0),
      SR(0) => \^bus2ip_reset\,
      \addr_i_reg[0]\ => reset_TX_FIFO_reg_n_0,
      \data_shift_reg[15]_0\ => UARTLITE_RX_I_n_2,
      en_16x_Baud => en_16x_Baud,
      enable_interrupts => \^enable_interrupts\,
      fifo_wr => fifo_wr,
      rx_Data_Present_Pre => rx_Data_Present_Pre,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      tx => tx,
      tx_Buffer_Empty_Pre => tx_Buffer_Empty_Pre,
      tx_Buffer_Full => tx_Buffer_Full
    );
clr_Status_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clr_Status_reg_0(0),
      Q => clr_Status,
      R => \^bus2ip_reset\
    );
enable_interrupts_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => enable_interrupts_reg_0,
      Q => \^enable_interrupts\,
      R => \^bus2ip_reset\
    );
reset_RX_FIFO_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_RX_FIFO,
      Q => reset_RX_FIFO_reg_n_0,
      S => \^bus2ip_reset\
    );
reset_TX_FIFO_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_TX_FIFO,
      Q => reset_TX_FIFO_reg_n_0,
      S => \^bus2ip_reset\
    );
rx_Data_Present_Pre_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rx_Data_Present_Pre_reg_0,
      Q => rx_Data_Present_Pre,
      R => '0'
    );
\status_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => UARTLITE_RX_I_n_4,
      Q => \^status_reg_reg[1]_0\,
      R => '0'
    );
\status_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => UARTLITE_RX_I_n_5,
      Q => \^status_reg_reg\,
      R => '0'
    );
tx_Buffer_Empty_Pre_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_Buffer_Empty_Pre_reg_0,
      Q => tx_Buffer_Empty_Pre,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_axi_lite_ipif is
  port (
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    fifo_wr : out STD_LOGIC;
    reset_TX_FIFO : out STD_LOGIC;
    reset_RX_FIFO : out STD_LOGIC;
    \addr_i_reg[4]\ : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[4]\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    tx_Buffer_Empty_Pre_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_Buffer_Full : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    status_reg_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end microblaze_axi_uartlite_0_0_axi_lite_ipif;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.microblaze_axi_uartlite_0_0_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\(0) => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\(0),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      Q(0) => Q(0),
      \addr_i_reg[4]\ => \addr_i_reg[4]\,
      bus2ip_rdce(0) => bus2ip_rdce(0),
      bus2ip_reset => bus2ip_reset,
      enable_interrupts => enable_interrupts,
      fifo_wr => fifo_wr,
      \out\(7 downto 0) => \out\(7 downto 0),
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Buffer_Full => rx_Buffer_Full,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => s_axi_aresetn_0,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(7 downto 0) => s_axi_rdata(7 downto 0),
      \s_axi_rdata_i_reg[6]_0\ => \s_axi_rdata_i_reg[6]\,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(2 downto 0) => s_axi_wdata(2 downto 0),
      \s_axi_wdata[4]\ => \s_axi_wdata[4]\,
      s_axi_wvalid => s_axi_wvalid,
      status_reg_reg => status_reg_reg,
      tx_Buffer_Empty_Pre_reg(0) => tx_Buffer_Empty_Pre_reg(0),
      tx_Buffer_Full => tx_Buffer_Full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0_axi_uartlite is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  attribute C_BAUDRATE : integer;
  attribute C_BAUDRATE of microblaze_axi_uartlite_0_0_axi_uartlite : entity is 115200;
  attribute C_DATA_BITS : integer;
  attribute C_DATA_BITS of microblaze_axi_uartlite_0_0_axi_uartlite : entity is 8;
  attribute C_FAMILY : string;
  attribute C_FAMILY of microblaze_axi_uartlite_0_0_axi_uartlite : entity is "artix7";
  attribute C_ODD_PARITY : integer;
  attribute C_ODD_PARITY of microblaze_axi_uartlite_0_0_axi_uartlite : entity is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of microblaze_axi_uartlite_0_0_axi_uartlite : entity is 100000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of microblaze_axi_uartlite_0_0_axi_uartlite : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of microblaze_axi_uartlite_0_0_axi_uartlite : entity is 32;
  attribute C_USE_PARITY : integer;
  attribute C_USE_PARITY of microblaze_axi_uartlite_0_0_axi_uartlite : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microblaze_axi_uartlite_0_0_axi_uartlite : entity is "yes";
end microblaze_axi_uartlite_0_0_axi_uartlite;

architecture STRUCTURE of microblaze_axi_uartlite_0_0_axi_uartlite is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_6 : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal UARTLITE_CORE_I_n_7 : STD_LOGIC;
  signal \UARTLITE_RX_I/SRL_FIFO_I/addr_i_reg__0\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \UARTLITE_TX_I/fifo_wr\ : STD_LOGIC;
  signal bus2ip_rdce : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \bus2ip_rdce__0\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal bus2ip_reset : STD_LOGIC;
  signal enable_interrupts : STD_LOGIC;
  signal reset_RX_FIFO : STD_LOGIC;
  signal reset_TX_FIFO : STD_LOGIC;
  signal rx_Buffer_Full : STD_LOGIC;
  signal rx_Data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal status_reg_reg : STD_LOGIC;
  signal tx_Buffer_Empty : STD_LOGIC;
  signal tx_Buffer_Full : STD_LOGIC;
begin
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7 downto 0) <= \^s_axi_rdata\(7 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
AXI_LITE_IPIF_I: entity work.microblaze_axi_uartlite_0_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \^s_axi_wready\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\(0) => bus2ip_rdce(1),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => s_axi_arready,
      Q(0) => \UARTLITE_RX_I/SRL_FIFO_I/addr_i_reg__0\(4),
      \addr_i_reg[4]\ => AXI_LITE_IPIF_I_n_12,
      bus2ip_rdce(0) => \bus2ip_rdce__0\(3),
      bus2ip_reset => bus2ip_reset,
      enable_interrupts => enable_interrupts,
      fifo_wr => \UARTLITE_TX_I/fifo_wr\,
      \out\(7) => rx_Data(0),
      \out\(6) => rx_Data(1),
      \out\(5) => rx_Data(2),
      \out\(4) => rx_Data(3),
      \out\(3) => rx_Data(4),
      \out\(2) => rx_Data(5),
      \out\(1) => rx_Data(6),
      \out\(0) => rx_Data(7),
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Buffer_Full => rx_Buffer_Full,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => AXI_LITE_IPIF_I_n_6,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(7 downto 0) => \^s_axi_rdata\(7 downto 0),
      \s_axi_rdata_i_reg[6]\ => UARTLITE_CORE_I_n_7,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(2) => s_axi_wdata(4),
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      \s_axi_wdata[4]\ => AXI_LITE_IPIF_I_n_15,
      s_axi_wvalid => s_axi_wvalid,
      status_reg_reg => status_reg_reg,
      tx_Buffer_Empty_Pre_reg(0) => tx_Buffer_Empty,
      tx_Buffer_Full => tx_Buffer_Full
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
UARTLITE_CORE_I: entity work.microblaze_axi_uartlite_0_0_uartlite_core
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      Q(0) => \UARTLITE_RX_I/SRL_FIFO_I/addr_i_reg__0\(4),
      \addr_i_reg[4]\(0) => tx_Buffer_Empty,
      bus2ip_rdce(0) => \bus2ip_rdce__0\(3),
      bus2ip_reset => bus2ip_reset,
      clr_Status_reg_0(0) => bus2ip_rdce(1),
      enable_interrupts => enable_interrupts,
      enable_interrupts_reg_0 => AXI_LITE_IPIF_I_n_15,
      fifo_wr => \UARTLITE_TX_I/fifo_wr\,
      interrupt => interrupt,
      \out\(7) => rx_Data(0),
      \out\(6) => rx_Data(1),
      \out\(5) => rx_Data(2),
      \out\(4) => rx_Data(3),
      \out\(3) => rx_Data(4),
      \out\(2) => rx_Data(5),
      \out\(1) => rx_Data(6),
      \out\(0) => rx_Data(7),
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx => rx,
      rx_Buffer_Full => rx_Buffer_Full,
      rx_Data_Present_Pre_reg_0 => AXI_LITE_IPIF_I_n_12,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      status_reg_reg => status_reg_reg,
      \status_reg_reg[1]_0\ => UARTLITE_CORE_I_n_7,
      tx => tx,
      tx_Buffer_Empty_Pre_reg_0 => AXI_LITE_IPIF_I_n_6,
      tx_Buffer_Full => tx_Buffer_Full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of microblaze_axi_uartlite_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microblaze_axi_uartlite_0_0 : entity is "microblaze_axi_uartlite_0_0,axi_uartlite,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microblaze_axi_uartlite_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of microblaze_axi_uartlite_0_0 : entity is "axi_uartlite,Vivado 2025.1";
end microblaze_axi_uartlite_0_0;

architecture STRUCTURE of microblaze_axi_uartlite_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BAUDRATE : integer;
  attribute C_BAUDRATE of U0 : label is 115200;
  attribute C_DATA_BITS : integer;
  attribute C_DATA_BITS of U0 : label is 8;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_ODD_PARITY : integer;
  attribute C_ODD_PARITY of U0 : label is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of U0 : label is 100000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_USE_PARITY : integer;
  attribute C_USE_PARITY of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT";
  attribute x_interface_mode : string;
  attribute x_interface_mode of interrupt : signal is "master INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of interrupt : signal is "XIL_INTERFACENAME INTERRUPT, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute x_interface_info of rx : signal is "xilinx.com:interface:uart:1.0 UART RxD";
  attribute x_interface_mode of rx : signal is "master UART";
  attribute x_interface_parameter of rx : signal is "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UARTLITE_BOARD_INTERFACE";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute x_interface_mode of s_axi_aclk : signal is "slave ACLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 ARESETN RST";
  attribute x_interface_mode of s_axi_aresetn : signal is "slave ARESETN";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
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
  attribute x_interface_info of tx : signal is "xilinx.com:interface:uart:1.0 UART TxD";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_mode of s_axi_awaddr : signal is "slave S_AXI";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7 downto 0) <= \^s_axi_rdata\(7 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.microblaze_axi_uartlite_0_0_axi_uartlite
     port map (
      interrupt => interrupt,
      rx => rx,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 2) => s_axi_araddr(3 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 2) => s_axi_awaddr(3 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1) => \^s_axi_bresp\(1),
      s_axi_bresp(0) => NLW_U0_s_axi_bresp_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 8) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 8),
      s_axi_rdata(7 downto 0) => \^s_axi_rdata\(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1) => \^s_axi_rresp\(1),
      s_axi_rresp(0) => NLW_U0_s_axi_rresp_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 8) => B"000000000000000000000000",
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid,
      tx => tx
    );
end STRUCTURE;
