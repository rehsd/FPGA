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

-- IP VLNV: xilinx.com:module_ref:audio_clock:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY rehsdZynq_BD_audio_clock_0_0 IS
  PORT (
    clk_in_100m : IN STD_LOGIC;
    reset_n : IN STD_LOGIC;
    clk_out_48k : OUT STD_LOGIC
  );
END rehsdZynq_BD_audio_clock_0_0;

ARCHITECTURE rehsdZynq_BD_audio_clock_0_0_arch OF rehsdZynq_BD_audio_clock_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF rehsdZynq_BD_audio_clock_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT audio_clock IS
    PORT (
      clk_in_100m : IN STD_LOGIC;
      reset_n : IN STD_LOGIC;
      clk_out_48k : OUT STD_LOGIC
    );
  END COMPONENT audio_clock;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF reset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_n RST";
  ATTRIBUTE X_INTERFACE_MODE OF reset_n: SIGNAL IS "slave reset_n";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_n: SIGNAL IS "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
BEGIN
  U0 : audio_clock
    PORT MAP (
      clk_in_100m => clk_in_100m,
      reset_n => reset_n,
      clk_out_48k => clk_out_48k
    );
END rehsdZynq_BD_audio_clock_0_0_arch;
