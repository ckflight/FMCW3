--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Wed Mar 25 09:37:13 2026
--Host        : DESKTOP-BEUFM6D running 64-bit major release  (build 9200)
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
    AXI_STR_RXD_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXD_0_tlast : in STD_LOGIC;
    AXI_STR_RXD_0_tready : out STD_LOGIC;
    AXI_STR_RXD_0_tvalid : in STD_LOGIC;
    AXI_STR_TXD_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXD_0_tlast : out STD_LOGIC;
    AXI_STR_TXD_0_tready : in STD_LOGIC;
    AXI_STR_TXD_0_tvalid : out STD_LOGIC;
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
      AXI_STR_RXD_0_tdata(31 downto 0) => AXI_STR_RXD_0_tdata(31 downto 0),
      AXI_STR_RXD_0_tlast => AXI_STR_RXD_0_tlast,
      AXI_STR_RXD_0_tready => AXI_STR_RXD_0_tready,
      AXI_STR_RXD_0_tvalid => AXI_STR_RXD_0_tvalid,
      AXI_STR_TXD_0_tdata(31 downto 0) => AXI_STR_TXD_0_tdata(31 downto 0),
      AXI_STR_TXD_0_tlast => AXI_STR_TXD_0_tlast,
      AXI_STR_TXD_0_tready => AXI_STR_TXD_0_tready,
      AXI_STR_TXD_0_tvalid => AXI_STR_TXD_0_tvalid,
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
