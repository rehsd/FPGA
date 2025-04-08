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

-- IP VLNV: xilinx.com:module_ref:VGA_Testing_Top:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY rehsdZynq_BD_VGA_Testing_Top_0_0 IS
  PORT (
    i_Clock : IN STD_LOGIC;
    i_VGA_Clock : IN STD_LOGIC;
    o_VGA_HSync : OUT STD_LOGIC;
    o_VGA_VSync : OUT STD_LOGIC;
    o_VGA_RGB : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END rehsdZynq_BD_VGA_Testing_Top_0_0;

ARCHITECTURE rehsdZynq_BD_VGA_Testing_Top_0_0_arch OF rehsdZynq_BD_VGA_Testing_Top_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF rehsdZynq_BD_VGA_Testing_Top_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT VGA_Testing_Top IS
    GENERIC (
      c_VIDEO_WIDTH : INTEGER;
      c_TOTAL_COLS : INTEGER;
      c_TOTAL_ROWS : INTEGER;
      c_ACTIVE_COLS : INTEGER;
      c_ACTIVE_ROWS : INTEGER;
      c_CNT : INTEGER
    );
    PORT (
      i_Clock : IN STD_LOGIC;
      i_VGA_Clock : IN STD_LOGIC;
      o_VGA_HSync : OUT STD_LOGIC;
      o_VGA_VSync : OUT STD_LOGIC;
      o_VGA_RGB : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT VGA_Testing_Top;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF i_Clock: SIGNAL IS "xilinx.com:signal:clock:1.0 i_Clock CLK";
  ATTRIBUTE X_INTERFACE_MODE OF i_Clock: SIGNAL IS "slave i_Clock";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_Clock: SIGNAL IS "XIL_INTERFACENAME i_Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_VGA_Clock: SIGNAL IS "xilinx.com:signal:clock:1.0 i_VGA_Clock CLK";
  ATTRIBUTE X_INTERFACE_MODE OF i_VGA_Clock: SIGNAL IS "slave i_VGA_Clock";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_VGA_Clock: SIGNAL IS "XIL_INTERFACENAME i_VGA_Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_i_VGA_Clock_0, INSERT_VIP 0";
BEGIN
  U0 : VGA_Testing_Top
    GENERIC MAP (
      c_VIDEO_WIDTH => 3,
      c_TOTAL_COLS => 800,
      c_TOTAL_ROWS => 525,
      c_ACTIVE_COLS => 640,
      c_ACTIVE_ROWS => 480,
      c_CNT => 50000000
    )
    PORT MAP (
      i_Clock => i_Clock,
      i_VGA_Clock => i_VGA_Clock,
      o_VGA_HSync => o_VGA_HSync,
      o_VGA_VSync => o_VGA_VSync,
      o_VGA_RGB => o_VGA_RGB
    );
END rehsdZynq_BD_VGA_Testing_Top_0_0_arch;
