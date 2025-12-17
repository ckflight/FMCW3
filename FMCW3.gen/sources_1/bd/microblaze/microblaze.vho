-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- -------------------------------------------------------------------------------
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-- DO NOT MODIFY THIS FILE.

-- MODULE VLNV: amd.com:blockdesign:microblaze:1.0

-- The following code must appear in the VHDL architecture header.

-- COMP_TAG     ------ Begin cut for COMPONENT Declaration ------
COMPONENT microblaze
  PORT (
    gpio_rtl_0_tri_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    uart_rtl_0_rxd : IN STD_LOGIC;
    uart_rtl_0_txd : OUT STD_LOGIC;
    AXI_STR_RXD_0_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    AXI_STR_RXD_0_tlast : IN STD_LOGIC;
    AXI_STR_RXD_0_tready : OUT STD_LOGIC;
    AXI_STR_RXD_0_tvalid : IN STD_LOGIC;
    AXI_STR_TXD_0_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    AXI_STR_TXD_0_tlast : OUT STD_LOGIC;
    AXI_STR_TXD_0_tready : IN STD_LOGIC;
    AXI_STR_TXD_0_tvalid : OUT STD_LOGIC;
    reset_rtl_0 : IN STD_LOGIC;
    spi0_mosi : OUT STD_LOGIC;
    spi0_miso : IN STD_LOGIC;
    spi0_sck : OUT STD_LOGIC;
    spi0_cs : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    clk_100MHz : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------  End cut for COMPONENT Declaration  ------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

-- INST_TAG     ------ Begin cut for INSTANTIATION Template ------
your_instance_name : microblaze
  PORT MAP (
    gpio_rtl_0_tri_o => gpio_rtl_0_tri_o,
    uart_rtl_0_rxd => uart_rtl_0_rxd,
    uart_rtl_0_txd => uart_rtl_0_txd,
    AXI_STR_RXD_0_tdata => AXI_STR_RXD_0_tdata,
    AXI_STR_RXD_0_tlast => AXI_STR_RXD_0_tlast,
    AXI_STR_RXD_0_tready => AXI_STR_RXD_0_tready,
    AXI_STR_RXD_0_tvalid => AXI_STR_RXD_0_tvalid,
    AXI_STR_TXD_0_tdata => AXI_STR_TXD_0_tdata,
    AXI_STR_TXD_0_tlast => AXI_STR_TXD_0_tlast,
    AXI_STR_TXD_0_tready => AXI_STR_TXD_0_tready,
    AXI_STR_TXD_0_tvalid => AXI_STR_TXD_0_tvalid,
    reset_rtl_0 => reset_rtl_0,
    spi0_mosi => spi0_mosi,
    spi0_miso => spi0_miso,
    spi0_sck => spi0_sck,
    spi0_cs => spi0_cs,
    clk_100MHz => clk_100MHz
  );
-- INST_TAG_END ------  End cut for INSTANTIATION Template  ------

-- You must compile the wrapper file microblaze.vhd when simulating
-- the module, microblaze. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.
