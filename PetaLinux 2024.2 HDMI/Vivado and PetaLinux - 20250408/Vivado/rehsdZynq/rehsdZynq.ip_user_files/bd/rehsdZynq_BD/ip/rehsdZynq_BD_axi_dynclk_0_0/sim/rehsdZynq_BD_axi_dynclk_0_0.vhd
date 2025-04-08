-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
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

-- IP VLNV: digilentinc.com:ip:axi_dynclk:1.2
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY rehsdZynq_BD_axi_dynclk_0_0 IS
  PORT (
    REF_CLK_I : IN STD_LOGIC;
    PXL_CLK_O : OUT STD_LOGIC;
    PXL_CLK_5X_O : OUT STD_LOGIC;
    LOCKED_O : OUT STD_LOGIC;
    s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_awvalid : IN STD_LOGIC;
    s_axi_lite_awready : OUT STD_LOGIC;
    s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_lite_wvalid : IN STD_LOGIC;
    s_axi_lite_wready : OUT STD_LOGIC;
    s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_bvalid : OUT STD_LOGIC;
    s_axi_lite_bready : IN STD_LOGIC;
    s_axi_lite_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_arvalid : IN STD_LOGIC;
    s_axi_lite_arready : OUT STD_LOGIC;
    s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_rvalid : OUT STD_LOGIC;
    s_axi_lite_rready : IN STD_LOGIC;
    s_axi_lite_aclk : IN STD_LOGIC;
    s_axi_lite_aresetn : IN STD_LOGIC
  );
END rehsdZynq_BD_axi_dynclk_0_0;

ARCHITECTURE rehsdZynq_BD_axi_dynclk_0_0_arch OF rehsdZynq_BD_axi_dynclk_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF rehsdZynq_BD_axi_dynclk_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_dynclk IS
    GENERIC (
      C_S_AXI_LITE_DATA_WIDTH : INTEGER;
      C_S_AXI_LITE_ADDR_WIDTH : INTEGER;
      kRefClkFreqHz : INTEGER;
      kVersionMajor : INTEGER;
      kVersionMinor : INTEGER;
      kAddBUFMR : BOOLEAN
    );
    PORT (
      REF_CLK_I : IN STD_LOGIC;
      PXL_CLK_O : OUT STD_LOGIC;
      PXL_CLK_5X_O : OUT STD_LOGIC;
      LOCKED_O : OUT STD_LOGIC;
      s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lite_awvalid : IN STD_LOGIC;
      s_axi_lite_awready : OUT STD_LOGIC;
      s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lite_wvalid : IN STD_LOGIC;
      s_axi_lite_wready : OUT STD_LOGIC;
      s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_bvalid : OUT STD_LOGIC;
      s_axi_lite_bready : IN STD_LOGIC;
      s_axi_lite_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lite_arvalid : IN STD_LOGIC;
      s_axi_lite_arready : OUT STD_LOGIC;
      s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_rvalid : OUT STD_LOGIC;
      s_axi_lite_rready : IN STD_LOGIC;
      s_axi_lite_aclk : IN STD_LOGIC;
      s_axi_lite_aresetn : IN STD_LOGIC
    );
  END COMPONENT axi_dynclk;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF PXL_CLK_5X_O: SIGNAL IS "xilinx.com:signal:clock:1.0 PXL_CLK_5X_O CLK";
  ATTRIBUTE X_INTERFACE_MODE OF PXL_CLK_5X_O: SIGNAL IS "master PXL_CLK_5X_O";
  ATTRIBUTE X_INTERFACE_PARAMETER OF PXL_CLK_5X_O: SIGNAL IS "XIL_INTERFACENAME PXL_CLK_5X_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_axi_dynclk_0_0_PXL_CLK_5X_O, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF PXL_CLK_O: SIGNAL IS "xilinx.com:signal:clock:1.0 PXL_CLK_O CLK";
  ATTRIBUTE X_INTERFACE_MODE OF PXL_CLK_O: SIGNAL IS "master PXL_CLK_O";
  ATTRIBUTE X_INTERFACE_PARAMETER OF PXL_CLK_O: SIGNAL IS "XIL_INTERFACENAME PXL_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_axi_dynclk_0_0_PXL_CLK_O, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF REF_CLK_I: SIGNAL IS "xilinx.com:signal:clock:1.0 REF_CLK_I CLK";
  ATTRIBUTE X_INTERFACE_MODE OF REF_CLK_I: SIGNAL IS "slave REF_CLK_I";
  ATTRIBUTE X_INTERFACE_PARAMETER OF REF_CLK_I: SIGNAL IS "XIL_INTERFACENAME REF_CLK_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_LITE_CLK CLK, xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK";
  ATTRIBUTE X_INTERFACE_MODE OF s_axi_lite_aclk: SIGNAL IS "slave s_axi_lite_aclk";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aclk: SIGNAL IS "XIL_INTERFACENAME S_AXI_LITE_CLK, ASSOCIATED_BUSIF S_AXI_LITE, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0, XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI_LITE, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S_AXI_LITE_RST RST, xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  ATTRIBUTE X_INTERFACE_MODE OF s_axi_lite_aresetn: SIGNAL IS "slave s_axi_lite_aresetn";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aresetn: SIGNAL IS "XIL_INTERFACENAME S_AXI_LITE_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  ATTRIBUTE X_INTERFACE_MODE OF s_axi_lite_awaddr: SIGNAL IS "slave S_AXI_LITE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_awaddr: SIGNAL IS "XIL_INTERFACENAME S_AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 9, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_processin" & 
"g_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
BEGIN
  U0 : axi_dynclk
    GENERIC MAP (
      C_S_AXI_LITE_DATA_WIDTH => 32,
      C_S_AXI_LITE_ADDR_WIDTH => 6,
      kRefClkFreqHz => 100000000,
      kVersionMajor => 1,
      kVersionMinor => 2,
      kAddBUFMR => false
    )
    PORT MAP (
      REF_CLK_I => REF_CLK_I,
      PXL_CLK_O => PXL_CLK_O,
      PXL_CLK_5X_O => PXL_CLK_5X_O,
      LOCKED_O => LOCKED_O,
      s_axi_lite_awaddr => s_axi_lite_awaddr,
      s_axi_lite_awprot => s_axi_lite_awprot,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_wdata => s_axi_lite_wdata,
      s_axi_lite_wstrb => s_axi_lite_wstrb,
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_bresp => s_axi_lite_bresp,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_araddr => s_axi_lite_araddr,
      s_axi_lite_arprot => s_axi_lite_arprot,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_rdata => s_axi_lite_rdata,
      s_axi_lite_rresp => s_axi_lite_rresp,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_aresetn => s_axi_lite_aresetn
    );
END rehsdZynq_BD_axi_dynclk_0_0_arch;
