--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
--Date        : Sun Aug  2 15:08:35 2026
--Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
--Command     : generate_target microblaze_wrapper.bd
--Design      : microblaze_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_wrapper is
  port (
    AXI_STR_RXD_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXD_0_tlast : in STD_LOGIC;
    AXI_STR_RXD_0_tready : out STD_LOGIC;
    AXI_STR_RXD_0_tvalid : in STD_LOGIC;
    AXI_STR_TXD_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXD_0_tlast : out STD_LOGIC;
    AXI_STR_TXD_0_tready : in STD_LOGIC;
    AXI_STR_TXD_0_tvalid : out STD_LOGIC;
    Clk : in STD_LOGIC;
    SPI0_CLK : out STD_LOGIC;
    SPI0_CS : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI0_MISO : in STD_LOGIC;
    SPI0_MOSI : out STD_LOGIC;
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_rtl_0 : in STD_LOGIC
  );
end microblaze_wrapper;

architecture STRUCTURE of microblaze_wrapper is
  component microblaze is
  port (
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI_STR_TXD_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXD_0_tlast : out STD_LOGIC;
    AXI_STR_TXD_0_tready : in STD_LOGIC;
    AXI_STR_TXD_0_tvalid : out STD_LOGIC;
    AXI_STR_RXD_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXD_0_tlast : in STD_LOGIC;
    AXI_STR_RXD_0_tready : out STD_LOGIC;
    AXI_STR_RXD_0_tvalid : in STD_LOGIC;
    Clk : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    SPI0_MOSI : out STD_LOGIC;
    SPI0_MISO : in STD_LOGIC;
    SPI0_CLK : out STD_LOGIC;
    SPI0_CS : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component microblaze;
begin
microblaze_i: component microblaze
     port map (
      AXI_STR_RXD_0_tdata(31 downto 0) => AXI_STR_RXD_0_tdata(31 downto 0),
      AXI_STR_RXD_0_tlast => AXI_STR_RXD_0_tlast,
      AXI_STR_RXD_0_tready => AXI_STR_RXD_0_tready,
      AXI_STR_RXD_0_tvalid => AXI_STR_RXD_0_tvalid,
      AXI_STR_TXD_0_tdata(31 downto 0) => AXI_STR_TXD_0_tdata(31 downto 0),
      AXI_STR_TXD_0_tlast => AXI_STR_TXD_0_tlast,
      AXI_STR_TXD_0_tready => AXI_STR_TXD_0_tready,
      AXI_STR_TXD_0_tvalid => AXI_STR_TXD_0_tvalid,
      Clk => Clk,
      SPI0_CLK => SPI0_CLK,
      SPI0_CS(0) => SPI0_CS(0),
      SPI0_MISO => SPI0_MISO,
      SPI0_MOSI => SPI0_MOSI,
      gpio_rtl_0_tri_o(15 downto 0) => gpio_rtl_0_tri_o(15 downto 0),
      reset_rtl_0 => reset_rtl_0
    );
end STRUCTURE;
