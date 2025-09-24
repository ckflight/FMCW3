--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
--Date        : Sat Sep 13 20:48:09 2025
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
    clk_100MHz : in STD_LOGIC;
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_rtl_0 : in STD_LOGIC;
    spi0_cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi0_miso : in STD_LOGIC;
    spi0_mosi : out STD_LOGIC;
    spi0_sck : out STD_LOGIC;
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC
  );
end microblaze_wrapper;

architecture STRUCTURE of microblaze_wrapper is
  component microblaze is
  port (
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    spi0_mosi : out STD_LOGIC;
    spi0_miso : in STD_LOGIC;
    spi0_sck : out STD_LOGIC;
    spi0_cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_100MHz : in STD_LOGIC
  );
  end component microblaze;
begin
microblaze_i: component microblaze
     port map (
      clk_100MHz => clk_100MHz,
      gpio_rtl_0_tri_o(15 downto 0) => gpio_rtl_0_tri_o(15 downto 0),
      reset_rtl_0 => reset_rtl_0,
      spi0_cs(0) => spi0_cs(0),
      spi0_miso => spi0_miso,
      spi0_mosi => spi0_mosi,
      spi0_sck => spi0_sck,
      uart_rtl_0_rxd => uart_rtl_0_rxd,
      uart_rtl_0_txd => uart_rtl_0_txd
    );
end STRUCTURE;
