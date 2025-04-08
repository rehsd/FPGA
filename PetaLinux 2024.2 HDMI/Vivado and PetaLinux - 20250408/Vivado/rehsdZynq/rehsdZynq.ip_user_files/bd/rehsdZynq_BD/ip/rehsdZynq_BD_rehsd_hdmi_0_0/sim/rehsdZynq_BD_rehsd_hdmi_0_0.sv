// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: rehsd:user:rehsd_hdmi:1.03
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module rehsdZynq_BD_rehsd_hdmi_0_0 (
  clk_pixel,
  clk_pixel_x5,
  clk_audio,
  rgb,
  video_enable,
  aresetn,
  TMDS2_clk_p,
  TMDS2_clk_n,
  TMDS2_data_p,
  TMDS2_data_n
);

input wire clk_pixel;
input wire clk_pixel_x5;
input wire clk_audio;
input wire [31 : 0] rgb;
input wire video_enable;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 TMDS2_clk_p CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME TMDS2_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_rehsd_hdmi_0_0_TMDS2_clk_p, INSERT_VIP 0" *)
output wire TMDS2_clk_p;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 TMDS2_clk_n CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME TMDS2_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_rehsd_hdmi_0_0_TMDS2_clk_n, INSERT_VIP 0" *)
output wire TMDS2_clk_n;
output wire [2 : 0] TMDS2_data_p;
output wire [2 : 0] TMDS2_data_n;

  hdmi_wrapper inst (
    .clk_pixel(clk_pixel),
    .clk_pixel_x5(clk_pixel_x5),
    .clk_audio(clk_audio),
    .rgb(rgb),
    .video_enable(video_enable),
    .aresetn(aresetn),
    .TMDS2_clk_p(TMDS2_clk_p),
    .TMDS2_clk_n(TMDS2_clk_n),
    .TMDS2_data_p(TMDS2_data_p),
    .TMDS2_data_n(TMDS2_data_n)
  );
endmodule
