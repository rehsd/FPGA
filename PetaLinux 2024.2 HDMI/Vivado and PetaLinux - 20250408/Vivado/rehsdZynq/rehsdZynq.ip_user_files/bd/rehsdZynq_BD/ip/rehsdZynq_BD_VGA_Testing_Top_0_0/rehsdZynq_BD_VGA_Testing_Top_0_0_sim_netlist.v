// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Mar 18 19:39:44 2025
// Host        : i14700f-Ubuntu running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rich/VivadoProjects/rehsdZynq/rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ip/rehsdZynq_BD_VGA_Testing_Top_0_0/rehsdZynq_BD_VGA_Testing_Top_0_0_sim_netlist.v
// Design      : rehsdZynq_BD_VGA_Testing_Top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rehsdZynq_BD_VGA_Testing_Top_0_0,VGA_Testing_Top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "VGA_Testing_Top,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module rehsdZynq_BD_VGA_Testing_Top_0_0
   (i_Clock,
    i_VGA_Clock,
    o_VGA_HSync,
    o_VGA_VSync,
    o_VGA_RGB);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_Clock CLK" *) (* x_interface_mode = "slave i_Clock" *) (* x_interface_parameter = "XIL_INTERFACENAME i_Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input i_Clock;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_VGA_Clock CLK" *) (* x_interface_mode = "slave i_VGA_Clock" *) (* x_interface_parameter = "XIL_INTERFACENAME i_VGA_Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_i_VGA_Clock_0, INSERT_VIP 0" *) input i_VGA_Clock;
  output o_VGA_HSync;
  output o_VGA_VSync;
  output [15:0]o_VGA_RGB;

  wire i_Clock;
  wire i_VGA_Clock;
  wire o_VGA_HSync;
  wire [13:2]\^o_VGA_RGB ;
  wire o_VGA_VSync;

  assign o_VGA_RGB[15] = \^o_VGA_RGB [13];
  assign o_VGA_RGB[14] = \^o_VGA_RGB [13];
  assign o_VGA_RGB[13] = \^o_VGA_RGB [13];
  assign o_VGA_RGB[12] = \^o_VGA_RGB [13];
  assign o_VGA_RGB[11] = \^o_VGA_RGB [13];
  assign o_VGA_RGB[10] = \^o_VGA_RGB [8];
  assign o_VGA_RGB[9] = \^o_VGA_RGB [8];
  assign o_VGA_RGB[8] = \^o_VGA_RGB [8];
  assign o_VGA_RGB[7] = \^o_VGA_RGB [8];
  assign o_VGA_RGB[6] = \^o_VGA_RGB [8];
  assign o_VGA_RGB[5] = \^o_VGA_RGB [8];
  assign o_VGA_RGB[4] = \^o_VGA_RGB [2];
  assign o_VGA_RGB[3] = \^o_VGA_RGB [2];
  assign o_VGA_RGB[2] = \^o_VGA_RGB [2];
  assign o_VGA_RGB[1] = \^o_VGA_RGB [2];
  assign o_VGA_RGB[0] = \^o_VGA_RGB [2];
  rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Testing_Top U0
       (.i_Clock(i_Clock),
        .i_VGA_Clock(i_VGA_Clock),
        .o_VGA_HSync(o_VGA_HSync),
        .o_VGA_RGB({\^o_VGA_RGB [13],\^o_VGA_RGB [8],\^o_VGA_RGB [2]}),
        .o_VGA_VSync(o_VGA_VSync));
endmodule

(* ORIG_REF_NAME = "VGA_Sync_Porch" *) 
module rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Porch
   (o_VGA_RGB,
    w_VSync,
    o_VGA_HSync,
    o_VGA_VSync,
    \r_TEST_PATTERN_reg[3] ,
    \r_TEST_PATTERN_reg[1] ,
    \r_TEST_PATTERN_reg[1]_0 ,
    \r_TEST_PATTERN_reg[1]_1 ,
    \r_TEST_PATTERN_reg[4] ,
    \r_TEST_PATTERN_reg[3]_0 ,
    o_HSync_reg_0,
    i_VGA_Clock,
    o_Blu_Video,
    o_Grn_Video,
    o_Red_Video,
    w_VSync_TP,
    Q,
    SR);
  output [2:0]o_VGA_RGB;
  output w_VSync;
  output o_VGA_HSync;
  output o_VGA_VSync;
  output \r_TEST_PATTERN_reg[3] ;
  output \r_TEST_PATTERN_reg[1] ;
  output \r_TEST_PATTERN_reg[1]_0 ;
  output \r_TEST_PATTERN_reg[1]_1 ;
  output \r_TEST_PATTERN_reg[4] ;
  output \r_TEST_PATTERN_reg[3]_0 ;
  input o_HSync_reg_0;
  input i_VGA_Clock;
  input [0:0]o_Blu_Video;
  input [0:0]o_Grn_Video;
  input [0:0]o_Red_Video;
  input w_VSync_TP;
  input [3:0]Q;
  input [0:0]SR;

  wire [3:0]Q;
  wire [0:0]SR;
  wire UUT_n_1;
  wire UUT_n_2;
  wire i_VGA_Clock;
  wire [0:0]o_Blu_Video;
  wire [0:0]o_Grn_Video;
  wire o_HSync_reg_0;
  wire [0:0]o_Red_Video;
  wire o_VGA_HSync;
  wire [2:0]o_VGA_RGB;
  wire o_VGA_VSync;
  wire \r_Blu_Video_reg[2]_srl2_n_0 ;
  wire \r_Grn_Video_reg[2]_srl2_n_0 ;
  wire \r_Red_Video_reg[2]_srl2_n_0 ;
  wire \r_TEST_PATTERN_reg[1] ;
  wire \r_TEST_PATTERN_reg[1]_0 ;
  wire \r_TEST_PATTERN_reg[1]_1 ;
  wire \r_TEST_PATTERN_reg[3] ;
  wire \r_TEST_PATTERN_reg[3]_0 ;
  wire \r_TEST_PATTERN_reg[4] ;
  wire w_VSync;
  wire w_VSync_TP;

  rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count_0 UUT
       (.SR(SR),
        .i_VGA_Clock(i_VGA_Clock),
        .\o_Col_Count_reg[4]_0 (UUT_n_1),
        .o_HSync_reg_0(o_HSync_reg_0),
        .\o_Row_Count_reg[7]_0 (UUT_n_2),
        .w_VSync(w_VSync),
        .w_VSync_TP(w_VSync_TP));
  FDRE #(
    .INIT(1'b0)) 
    \o_Blu_Video_reg[2] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\r_Blu_Video_reg[2]_srl2_n_0 ),
        .Q(o_VGA_RGB[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Grn_Video_reg[2] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\r_Grn_Video_reg[2]_srl2_n_0 ),
        .Q(o_VGA_RGB[1]),
        .R(1'b0));
  FDRE o_HSync_reg
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(UUT_n_1),
        .Q(o_VGA_HSync),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Red_Video_reg[2] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\r_Red_Video_reg[2]_srl2_n_0 ),
        .Q(o_VGA_RGB[2]),
        .R(1'b0));
  FDRE o_VSync_reg
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(UUT_n_2),
        .Q(o_VGA_VSync),
        .R(1'b0));
  (* srl_bus_name = "\\U0/VGA_Sync_Porch_Inst/r_Blu_Video_reg " *) 
  (* srl_name = "\\U0/VGA_Sync_Porch_Inst/r_Blu_Video_reg[2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \r_Blu_Video_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(i_VGA_Clock),
        .D(o_Blu_Video),
        .Q(\r_Blu_Video_reg[2]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8828)) 
    \r_Blu_Video_reg[2]_srl2_i_10 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\r_TEST_PATTERN_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hE968)) 
    \r_Blu_Video_reg[2]_srl2_i_4 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\r_TEST_PATTERN_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h52A8)) 
    \r_Blu_Video_reg[2]_srl2_i_6 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\r_TEST_PATTERN_reg[1]_0 ));
  (* srl_bus_name = "\\U0/VGA_Sync_Porch_Inst/r_Grn_Video_reg " *) 
  (* srl_name = "\\U0/VGA_Sync_Porch_Inst/r_Grn_Video_reg[2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \r_Grn_Video_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(i_VGA_Clock),
        .D(o_Grn_Video),
        .Q(\r_Grn_Video_reg[2]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4A54)) 
    \r_Grn_Video_reg[2]_srl2_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\r_TEST_PATTERN_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h3F41)) 
    \r_Grn_Video_reg[2]_srl2_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\r_TEST_PATTERN_reg[4] ));
  (* srl_bus_name = "\\U0/VGA_Sync_Porch_Inst/r_Red_Video_reg " *) 
  (* srl_name = "\\U0/VGA_Sync_Porch_Inst/r_Red_Video_reg[2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \r_Red_Video_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(i_VGA_Clock),
        .D(o_Red_Video),
        .Q(\r_Red_Video_reg[2]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Red_Video_reg[2]_srl2_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\r_TEST_PATTERN_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "VGA_Sync_Pulses" *) 
module rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Pulses
   (SR,
    \o_Row_Count_reg[7]_0 ,
    w_VSync_Start,
    i_HSync,
    E,
    w_VSync,
    i_VGA_Clock);
  output [0:0]SR;
  output [0:0]\o_Row_Count_reg[7]_0 ;
  output w_VSync_Start;
  output i_HSync;
  input [0:0]E;
  input w_VSync;
  input i_VGA_Clock;

  wire [0:0]E;
  wire [0:0]SR;
  wire i_HSync;
  wire i_VGA_Clock;
  wire [9:0]o_Col_Count;
  wire \o_Col_Count[9]_i_3__0_n_0 ;
  wire [9:0]o_Row_Count;
  wire \o_Row_Count[0]_i_1_n_0 ;
  wire \o_Row_Count[0]_i_2_n_0 ;
  wire \o_Row_Count[1]_i_1_n_0 ;
  wire \o_Row_Count[2]_i_1__0_n_0 ;
  wire \o_Row_Count[3]_i_1__0_n_0 ;
  wire \o_Row_Count[4]_i_1__0_n_0 ;
  wire \o_Row_Count[5]_i_1_n_0 ;
  wire \o_Row_Count[6]_i_1__0_n_0 ;
  wire \o_Row_Count[7]_i_1__0_n_0 ;
  wire \o_Row_Count[8]_i_1__0_n_0 ;
  wire \o_Row_Count[8]_i_2__0_n_0 ;
  wire \o_Row_Count[9]_i_1_n_0 ;
  wire \o_Row_Count[9]_i_2_n_0 ;
  wire \o_Row_Count[9]_i_3__0_n_0 ;
  wire \o_Row_Count[9]_i_4__1_n_0 ;
  wire o_Row_Count_0;
  wire [0:0]\o_Row_Count_reg[7]_0 ;
  wire [9:0]p_1_in;
  wire w_VSync;
  wire w_VSync_Start;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_Col_Count[0]_i_1__1 
       (.I0(o_Col_Count[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_Col_Count[1]_i_1__1 
       (.I0(o_Col_Count[0]),
        .I1(o_Col_Count[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_Col_Count[2]_i_1__1 
       (.I0(o_Col_Count[1]),
        .I1(o_Col_Count[0]),
        .I2(o_Col_Count[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \o_Col_Count[3]_i_1__1 
       (.I0(o_Col_Count[2]),
        .I1(o_Col_Count[0]),
        .I2(o_Col_Count[1]),
        .I3(o_Col_Count[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \o_Col_Count[4]_i_1__1 
       (.I0(o_Col_Count[3]),
        .I1(o_Col_Count[1]),
        .I2(o_Col_Count[0]),
        .I3(o_Col_Count[2]),
        .I4(o_Col_Count[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \o_Col_Count[5]_i_1 
       (.I0(o_Col_Count[4]),
        .I1(o_Col_Count[2]),
        .I2(o_Col_Count[0]),
        .I3(o_Col_Count[1]),
        .I4(o_Col_Count[3]),
        .I5(o_Col_Count[5]),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'hD2)) 
    \o_Col_Count[6]_i_1__0 
       (.I0(o_Col_Count[5]),
        .I1(\o_Col_Count[9]_i_3__0_n_0 ),
        .I2(o_Col_Count[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \o_Col_Count[7]_i_1__1 
       (.I0(o_Col_Count[6]),
        .I1(\o_Col_Count[9]_i_3__0_n_0 ),
        .I2(o_Col_Count[5]),
        .I3(o_Col_Count[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \o_Col_Count[8]_i_1__1 
       (.I0(o_Col_Count[7]),
        .I1(o_Col_Count[5]),
        .I2(\o_Col_Count[9]_i_3__0_n_0 ),
        .I3(o_Col_Count[6]),
        .I4(o_Col_Count[8]),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Col_Count[9]_i_1 
       (.I0(\o_Row_Count_reg[7]_0 ),
        .I1(E),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \o_Col_Count[9]_i_1__1 
       (.I0(o_Col_Count[8]),
        .I1(o_Col_Count[9]),
        .I2(o_Col_Count[7]),
        .I3(o_Col_Count[6]),
        .I4(o_Col_Count[5]),
        .I5(\o_Col_Count[9]_i_3__0_n_0 ),
        .O(o_Row_Count_0));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \o_Col_Count[9]_i_2__1 
       (.I0(o_Col_Count[8]),
        .I1(o_Col_Count[6]),
        .I2(\o_Col_Count[9]_i_3__0_n_0 ),
        .I3(o_Col_Count[5]),
        .I4(o_Col_Count[7]),
        .I5(o_Col_Count[9]),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_Col_Count[9]_i_3__0 
       (.I0(o_Col_Count[3]),
        .I1(o_Col_Count[1]),
        .I2(o_Col_Count[0]),
        .I3(o_Col_Count[2]),
        .I4(o_Col_Count[4]),
        .O(\o_Col_Count[9]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[0] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(o_Col_Count[0]),
        .R(o_Row_Count_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[1] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(o_Col_Count[1]),
        .R(o_Row_Count_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[2] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(o_Col_Count[2]),
        .R(o_Row_Count_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[3] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(o_Col_Count[3]),
        .R(o_Row_Count_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[4] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(o_Col_Count[4]),
        .R(o_Row_Count_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[5] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(o_Col_Count[5]),
        .R(o_Row_Count_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[6] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(o_Col_Count[6]),
        .R(o_Row_Count_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[7] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(o_Col_Count[7]),
        .R(o_Row_Count_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[8] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(o_Col_Count[8]),
        .R(o_Row_Count_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[9] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(o_Col_Count[9]),
        .R(o_Row_Count_0));
  LUT3 #(
    .INIT(8'h1F)) 
    o_HSync_reg_srl2_i_1
       (.I0(o_Col_Count[8]),
        .I1(o_Col_Count[7]),
        .I2(o_Col_Count[9]),
        .O(i_HSync));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \o_Row_Count[0]_i_1 
       (.I0(o_Row_Count[2]),
        .I1(\o_Row_Count[0]_i_2_n_0 ),
        .I2(o_Row_Count[0]),
        .O(\o_Row_Count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \o_Row_Count[0]_i_2 
       (.I0(o_Row_Count[1]),
        .I1(o_Row_Count[4]),
        .I2(o_Row_Count[5]),
        .I3(o_Row_Count[3]),
        .I4(\o_Row_Count[9]_i_4__1_n_0 ),
        .O(\o_Row_Count[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_Row_Count[1]_i_1 
       (.I0(o_Row_Count[0]),
        .I1(o_Row_Count[1]),
        .O(\o_Row_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \o_Row_Count[2]_i_1__0 
       (.I0(\o_Row_Count[9]_i_3__0_n_0 ),
        .I1(o_Row_Count[0]),
        .I2(o_Row_Count[1]),
        .I3(o_Row_Count[2]),
        .O(\o_Row_Count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7800F0F0)) 
    \o_Row_Count[3]_i_1__0 
       (.I0(o_Row_Count[1]),
        .I1(o_Row_Count[0]),
        .I2(o_Row_Count[3]),
        .I3(\o_Row_Count[9]_i_3__0_n_0 ),
        .I4(o_Row_Count[2]),
        .O(\o_Row_Count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \o_Row_Count[4]_i_1__0 
       (.I0(o_Row_Count[4]),
        .I1(o_Row_Count[2]),
        .I2(o_Row_Count[0]),
        .I3(o_Row_Count[1]),
        .I4(o_Row_Count[3]),
        .O(\o_Row_Count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \o_Row_Count[5]_i_1 
       (.I0(o_Row_Count[5]),
        .I1(o_Row_Count[3]),
        .I2(o_Row_Count[1]),
        .I3(o_Row_Count[0]),
        .I4(o_Row_Count[2]),
        .I5(o_Row_Count[4]),
        .O(\o_Row_Count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \o_Row_Count[6]_i_1__0 
       (.I0(o_Row_Count[6]),
        .I1(\o_Row_Count[8]_i_2__0_n_0 ),
        .I2(o_Row_Count[5]),
        .O(\o_Row_Count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \o_Row_Count[7]_i_1__0 
       (.I0(o_Row_Count[5]),
        .I1(\o_Row_Count[8]_i_2__0_n_0 ),
        .I2(o_Row_Count[6]),
        .I3(o_Row_Count[7]),
        .O(\o_Row_Count[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \o_Row_Count[8]_i_1__0 
       (.I0(o_Row_Count[8]),
        .I1(o_Row_Count[5]),
        .I2(\o_Row_Count[8]_i_2__0_n_0 ),
        .I3(o_Row_Count[6]),
        .I4(o_Row_Count[7]),
        .O(\o_Row_Count[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_Row_Count[8]_i_2__0 
       (.I0(o_Row_Count[3]),
        .I1(o_Row_Count[1]),
        .I2(o_Row_Count[0]),
        .I3(o_Row_Count[2]),
        .I4(o_Row_Count[4]),
        .O(\o_Row_Count[8]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h9909)) 
    \o_Row_Count[9]_i_1 
       (.I0(o_Row_Count[9]),
        .I1(\o_Row_Count[9]_i_2_n_0 ),
        .I2(o_Row_Count[2]),
        .I3(\o_Row_Count[9]_i_3__0_n_0 ),
        .O(\o_Row_Count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \o_Row_Count[9]_i_1__0 
       (.I0(o_Row_Count[7]),
        .I1(o_Row_Count[5]),
        .I2(o_Row_Count[8]),
        .I3(o_Row_Count[6]),
        .I4(o_Row_Count[9]),
        .I5(w_VSync),
        .O(\o_Row_Count_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \o_Row_Count[9]_i_2 
       (.I0(\o_Row_Count[8]_i_2__0_n_0 ),
        .I1(o_Row_Count[6]),
        .I2(o_Row_Count[8]),
        .I3(o_Row_Count[5]),
        .I4(o_Row_Count[7]),
        .O(\o_Row_Count[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \o_Row_Count[9]_i_3__0 
       (.I0(o_Row_Count[0]),
        .I1(\o_Row_Count[9]_i_4__1_n_0 ),
        .I2(o_Row_Count[3]),
        .I3(o_Row_Count[5]),
        .I4(o_Row_Count[4]),
        .I5(o_Row_Count[1]),
        .O(\o_Row_Count[9]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \o_Row_Count[9]_i_4__1 
       (.I0(o_Row_Count[9]),
        .I1(o_Row_Count[7]),
        .I2(o_Row_Count[8]),
        .I3(o_Row_Count[6]),
        .O(\o_Row_Count[9]_i_4__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[0] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[0]_i_1_n_0 ),
        .Q(o_Row_Count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[1] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[1]_i_1_n_0 ),
        .Q(o_Row_Count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[2] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[2]_i_1__0_n_0 ),
        .Q(o_Row_Count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[3] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[3]_i_1__0_n_0 ),
        .Q(o_Row_Count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[4] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[4]_i_1__0_n_0 ),
        .Q(o_Row_Count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[5] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[5]_i_1_n_0 ),
        .Q(o_Row_Count[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[6] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[6]_i_1__0_n_0 ),
        .Q(o_Row_Count[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[7] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[7]_i_1__0_n_0 ),
        .Q(o_Row_Count[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[8] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[8]_i_1__0_n_0 ),
        .Q(o_Row_Count[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[9] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count_0),
        .D(\o_Row_Count[9]_i_1_n_0 ),
        .Q(o_Row_Count[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    o_VSync_i_1
       (.I0(o_Row_Count[9]),
        .I1(o_Row_Count[6]),
        .I2(o_Row_Count[8]),
        .I3(o_Row_Count[5]),
        .I4(o_Row_Count[7]),
        .O(w_VSync_Start));
endmodule

(* ORIG_REF_NAME = "VGA_Sync_To_Count" *) 
module rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count
   (w_VSync,
    o_Blu_Video,
    o_Red_Video,
    o_Grn_Video,
    E,
    SR,
    w_VSync_Start,
    i_VGA_Clock,
    Q,
    \o_Blu_Video_reg[2] ,
    \o_Blu_Video_reg[2]_0 ,
    \o_Red_Video_reg[2] ,
    \o_Grn_Video_reg[2] ,
    \o_Grn_Video_reg[2]_0 ,
    w_VSync_TP,
    w_VSync_0,
    \r_Blu_Video_reg[2]_srl2_i_1_0 ,
    \o_Row_Count_reg[0]_0 ,
    \o_Col_Count_reg[0]_0 );
  output w_VSync;
  output [0:0]o_Blu_Video;
  output [0:0]o_Red_Video;
  output [0:0]o_Grn_Video;
  output [0:0]E;
  output [0:0]SR;
  input w_VSync_Start;
  input i_VGA_Clock;
  input [3:0]Q;
  input \o_Blu_Video_reg[2] ;
  input \o_Blu_Video_reg[2]_0 ;
  input \o_Red_Video_reg[2] ;
  input \o_Grn_Video_reg[2] ;
  input \o_Grn_Video_reg[2]_0 ;
  input w_VSync_TP;
  input w_VSync_0;
  input \r_Blu_Video_reg[2]_srl2_i_1_0 ;
  input [0:0]\o_Row_Count_reg[0]_0 ;
  input [0:0]\o_Col_Count_reg[0]_0 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire i_VGA_Clock;
  wire [0:0]o_Blu_Video;
  wire \o_Blu_Video_reg[2] ;
  wire \o_Blu_Video_reg[2]_0 ;
  wire \o_Col_Count[0]_i_1_n_0 ;
  wire \o_Col_Count[1]_i_1_n_0 ;
  wire \o_Col_Count[2]_i_1_n_0 ;
  wire \o_Col_Count[3]_i_1_n_0 ;
  wire \o_Col_Count[4]_i_1_n_0 ;
  wire \o_Col_Count[5]_i_1__0_n_0 ;
  wire \o_Col_Count[6]_i_1__1_n_0 ;
  wire \o_Col_Count[7]_i_1_n_0 ;
  wire \o_Col_Count[8]_i_1_n_0 ;
  wire \o_Col_Count[8]_i_2_n_0 ;
  wire \o_Col_Count[9]_i_2_n_0 ;
  wire [0:0]\o_Col_Count_reg[0]_0 ;
  wire [0:0]o_Grn_Video;
  wire \o_Grn_Video_reg[2] ;
  wire \o_Grn_Video_reg[2]_0 ;
  wire [0:0]o_Red_Video;
  wire \o_Red_Video_reg[2] ;
  wire \o_Row_Count[0]_i_1__0_n_0 ;
  wire \o_Row_Count[1]_i_1__0_n_0 ;
  wire \o_Row_Count[2]_i_1__1_n_0 ;
  wire \o_Row_Count[3]_i_1__1_n_0 ;
  wire \o_Row_Count[3]_i_2__0_n_0 ;
  wire \o_Row_Count[4]_i_1__1_n_0 ;
  wire \o_Row_Count[5]_i_1__0_n_0 ;
  wire \o_Row_Count[6]_i_1__1_n_0 ;
  wire \o_Row_Count[7]_i_1__1_n_0 ;
  wire \o_Row_Count[8]_i_1__1_n_0 ;
  wire \o_Row_Count[8]_i_2__1_n_0 ;
  wire \o_Row_Count[9]_i_10_n_0 ;
  wire \o_Row_Count[9]_i_3__1_n_0 ;
  wire \o_Row_Count[9]_i_4_n_0 ;
  wire \o_Row_Count[9]_i_5__0_n_0 ;
  wire \o_Row_Count[9]_i_6_n_0 ;
  wire \o_Row_Count[9]_i_7_n_0 ;
  wire \o_Row_Count[9]_i_8_n_0 ;
  wire \o_Row_Count[9]_i_9_n_0 ;
  wire [0:0]\o_Row_Count_reg[0]_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_11_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_12_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_13_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_14_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_15_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_16_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_17_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_18_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_19_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_1_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_20_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_21_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_22_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_23_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_24_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_25_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_26_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_2_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_3_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_5_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_7_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_8_n_0 ;
  wire \r_Blu_Video_reg[2]_srl2_i_9_n_0 ;
  wire \r_Grn_Video_reg[2]_srl2_i_10_n_0 ;
  wire \r_Grn_Video_reg[2]_srl2_i_2_n_0 ;
  wire \r_Grn_Video_reg[2]_srl2_i_5_n_0 ;
  wire \r_Grn_Video_reg[2]_srl2_i_6_n_0 ;
  wire \r_Grn_Video_reg[2]_srl2_i_7_n_0 ;
  wire \r_Grn_Video_reg[2]_srl2_i_8_n_0 ;
  wire \r_Grn_Video_reg[2]_srl2_i_9_n_0 ;
  wire \r_Red_Video_reg[2]_srl2_i_2_n_0 ;
  wire \r_Red_Video_reg[2]_srl2_i_4_n_0 ;
  wire \r_Red_Video_reg[2]_srl2_i_5_n_0 ;
  wire \r_Red_Video_reg[2]_srl2_i_6_n_0 ;
  wire [9:0]w_Col_Count;
  wire [9:0]w_Row_Count;
  wire w_VSync;
  wire w_VSync_0;
  wire w_VSync_Start;
  wire w_VSync_TP;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_Col_Count[0]_i_1 
       (.I0(w_Col_Count[0]),
        .O(\o_Col_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_Col_Count[1]_i_1 
       (.I0(w_Col_Count[0]),
        .I1(w_Col_Count[1]),
        .O(\o_Col_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \o_Col_Count[2]_i_1 
       (.I0(w_Col_Count[2]),
        .I1(w_Col_Count[1]),
        .I2(w_Col_Count[0]),
        .O(\o_Col_Count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \o_Col_Count[3]_i_1 
       (.I0(w_Col_Count[3]),
        .I1(w_Col_Count[2]),
        .I2(w_Col_Count[1]),
        .I3(w_Col_Count[0]),
        .O(\o_Col_Count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \o_Col_Count[4]_i_1 
       (.I0(w_Col_Count[4]),
        .I1(w_Col_Count[0]),
        .I2(w_Col_Count[1]),
        .I3(w_Col_Count[2]),
        .I4(w_Col_Count[3]),
        .O(\o_Col_Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \o_Col_Count[5]_i_1__0 
       (.I0(w_Col_Count[5]),
        .I1(w_Col_Count[3]),
        .I2(w_Col_Count[4]),
        .I3(w_Col_Count[2]),
        .I4(w_Col_Count[1]),
        .I5(w_Col_Count[0]),
        .O(\o_Col_Count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \o_Col_Count[6]_i_1__1 
       (.I0(w_Col_Count[6]),
        .I1(w_Col_Count[5]),
        .I2(\o_Row_Count[9]_i_4_n_0 ),
        .O(\o_Col_Count[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \o_Col_Count[7]_i_1 
       (.I0(w_Col_Count[7]),
        .I1(\o_Row_Count[9]_i_4_n_0 ),
        .I2(w_Col_Count[5]),
        .I3(w_Col_Count[6]),
        .O(\o_Col_Count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \o_Col_Count[8]_i_1 
       (.I0(w_Col_Count[8]),
        .I1(w_Col_Count[5]),
        .I2(w_Col_Count[4]),
        .I3(w_Col_Count[7]),
        .I4(w_Col_Count[6]),
        .I5(\o_Col_Count[8]_i_2_n_0 ),
        .O(\o_Col_Count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \o_Col_Count[8]_i_2 
       (.I0(w_Col_Count[0]),
        .I1(w_Col_Count[1]),
        .I2(w_Col_Count[2]),
        .I3(w_Col_Count[3]),
        .O(\o_Col_Count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \o_Col_Count[9]_i_2 
       (.I0(w_Col_Count[9]),
        .I1(\o_Row_Count[9]_i_4_n_0 ),
        .I2(w_Col_Count[8]),
        .I3(w_Col_Count[7]),
        .I4(w_Col_Count[6]),
        .I5(w_Col_Count[5]),
        .O(\o_Col_Count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[0] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[0]_i_1_n_0 ),
        .Q(w_Col_Count[0]),
        .R(\o_Col_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[1] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[1]_i_1_n_0 ),
        .Q(w_Col_Count[1]),
        .R(\o_Col_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[2] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[2]_i_1_n_0 ),
        .Q(w_Col_Count[2]),
        .R(\o_Col_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[3] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[3]_i_1_n_0 ),
        .Q(w_Col_Count[3]),
        .R(\o_Col_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[4] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[4]_i_1_n_0 ),
        .Q(w_Col_Count[4]),
        .R(\o_Col_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[5] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[5]_i_1__0_n_0 ),
        .Q(w_Col_Count[5]),
        .R(\o_Col_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[6] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[6]_i_1__1_n_0 ),
        .Q(w_Col_Count[6]),
        .R(\o_Col_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[7] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[7]_i_1_n_0 ),
        .Q(w_Col_Count[7]),
        .R(\o_Col_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[8] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[8]_i_1_n_0 ),
        .Q(w_Col_Count[8]),
        .R(\o_Col_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[9] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[9]_i_2_n_0 ),
        .Q(w_Col_Count[9]),
        .R(\o_Col_Count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    \o_Row_Count[0]_i_1__0 
       (.I0(w_Row_Count[0]),
        .I1(\o_Row_Count[3]_i_2__0_n_0 ),
        .I2(w_Row_Count[2]),
        .I3(w_Row_Count[1]),
        .O(\o_Row_Count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_Row_Count[1]_i_1__0 
       (.I0(w_Row_Count[0]),
        .I1(w_Row_Count[1]),
        .O(\o_Row_Count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7868)) 
    \o_Row_Count[2]_i_1__1 
       (.I0(w_Row_Count[0]),
        .I1(w_Row_Count[1]),
        .I2(w_Row_Count[2]),
        .I3(\o_Row_Count[3]_i_2__0_n_0 ),
        .O(\o_Row_Count[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7788FB00)) 
    \o_Row_Count[3]_i_1__1 
       (.I0(w_Row_Count[1]),
        .I1(w_Row_Count[2]),
        .I2(\o_Row_Count[3]_i_2__0_n_0 ),
        .I3(w_Row_Count[3]),
        .I4(w_Row_Count[0]),
        .O(\o_Row_Count[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \o_Row_Count[3]_i_2__0 
       (.I0(w_Row_Count[7]),
        .I1(w_Row_Count[6]),
        .I2(\o_Row_Count[9]_i_10_n_0 ),
        .I3(w_Row_Count[8]),
        .I4(w_Row_Count[3]),
        .I5(w_Row_Count[9]),
        .O(\o_Row_Count[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \o_Row_Count[4]_i_1__1 
       (.I0(w_Row_Count[4]),
        .I1(w_Row_Count[2]),
        .I2(w_Row_Count[3]),
        .I3(w_Row_Count[1]),
        .I4(w_Row_Count[0]),
        .O(\o_Row_Count[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \o_Row_Count[5]_i_1__0 
       (.I0(w_Row_Count[5]),
        .I1(w_Row_Count[0]),
        .I2(w_Row_Count[1]),
        .I3(w_Row_Count[3]),
        .I4(w_Row_Count[2]),
        .I5(w_Row_Count[4]),
        .O(\o_Row_Count[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_Row_Count[6]_i_1__1 
       (.I0(w_Row_Count[6]),
        .I1(\o_Row_Count[8]_i_2__1_n_0 ),
        .O(\o_Row_Count[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \o_Row_Count[7]_i_1__1 
       (.I0(w_Row_Count[7]),
        .I1(w_Row_Count[6]),
        .I2(\o_Row_Count[8]_i_2__1_n_0 ),
        .O(\o_Row_Count[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \o_Row_Count[8]_i_1__1 
       (.I0(w_Row_Count[8]),
        .I1(\o_Row_Count[8]_i_2__1_n_0 ),
        .I2(w_Row_Count[7]),
        .I3(w_Row_Count[6]),
        .O(\o_Row_Count[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \o_Row_Count[8]_i_2__1 
       (.I0(w_Row_Count[4]),
        .I1(w_Row_Count[2]),
        .I2(w_Row_Count[3]),
        .I3(w_Row_Count[1]),
        .I4(w_Row_Count[0]),
        .I5(w_Row_Count[5]),
        .O(\o_Row_Count[8]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_Row_Count[9]_i_10 
       (.I0(w_Row_Count[5]),
        .I1(w_Row_Count[4]),
        .O(\o_Row_Count[9]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_Row_Count[9]_i_1__1 
       (.I0(w_VSync_TP),
        .I1(w_VSync_0),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \o_Row_Count[9]_i_2__0 
       (.I0(\o_Row_Count[9]_i_4_n_0 ),
        .I1(w_Col_Count[5]),
        .I2(w_Col_Count[8]),
        .I3(w_Col_Count[9]),
        .I4(w_Col_Count[6]),
        .I5(w_Col_Count[7]),
        .O(E));
  LUT6 #(
    .INIT(64'h6666666660666666)) 
    \o_Row_Count[9]_i_3__1 
       (.I0(w_Row_Count[9]),
        .I1(\o_Row_Count[9]_i_5__0_n_0 ),
        .I2(\o_Row_Count[9]_i_6_n_0 ),
        .I3(w_Row_Count[2]),
        .I4(\o_Row_Count[9]_i_7_n_0 ),
        .I5(\o_Row_Count[9]_i_8_n_0 ),
        .O(\o_Row_Count[9]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_Row_Count[9]_i_4 
       (.I0(w_Col_Count[0]),
        .I1(w_Col_Count[1]),
        .I2(w_Col_Count[2]),
        .I3(w_Col_Count[4]),
        .I4(w_Col_Count[3]),
        .O(\o_Row_Count[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \o_Row_Count[9]_i_5__0 
       (.I0(\o_Row_Count[9]_i_9_n_0 ),
        .I1(w_Row_Count[7]),
        .I2(w_Row_Count[6]),
        .I3(w_Row_Count[5]),
        .I4(w_Row_Count[8]),
        .O(\o_Row_Count[9]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Row_Count[9]_i_6 
       (.I0(w_Row_Count[8]),
        .I1(w_Row_Count[7]),
        .O(\o_Row_Count[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o_Row_Count[9]_i_7 
       (.I0(w_Row_Count[0]),
        .I1(w_Row_Count[1]),
        .O(\o_Row_Count[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFF7FFFFFFF7)) 
    \o_Row_Count[9]_i_8 
       (.I0(w_Row_Count[9]),
        .I1(w_Row_Count[3]),
        .I2(w_Row_Count[8]),
        .I3(\o_Row_Count[9]_i_10_n_0 ),
        .I4(w_Row_Count[6]),
        .I5(w_Row_Count[7]),
        .O(\o_Row_Count[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_Row_Count[9]_i_9 
       (.I0(w_Row_Count[0]),
        .I1(w_Row_Count[1]),
        .I2(w_Row_Count[3]),
        .I3(w_Row_Count[2]),
        .I4(w_Row_Count[4]),
        .O(\o_Row_Count[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[0] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[0]_i_1__0_n_0 ),
        .Q(w_Row_Count[0]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[1] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[1]_i_1__0_n_0 ),
        .Q(w_Row_Count[1]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[2] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[2]_i_1__1_n_0 ),
        .Q(w_Row_Count[2]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[3] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[3]_i_1__1_n_0 ),
        .Q(w_Row_Count[3]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[4] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[4]_i_1__1_n_0 ),
        .Q(w_Row_Count[4]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[5] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[5]_i_1__0_n_0 ),
        .Q(w_Row_Count[5]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[6] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[6]_i_1__1_n_0 ),
        .Q(w_Row_Count[6]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[7] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[7]_i_1__1_n_0 ),
        .Q(w_Row_Count[7]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[8] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[8]_i_1__1_n_0 ),
        .Q(w_Row_Count[8]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[9] 
       (.C(i_VGA_Clock),
        .CE(E),
        .D(\o_Row_Count[9]_i_3__1_n_0 ),
        .Q(w_Row_Count[9]),
        .R(\o_Row_Count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    o_VSync_reg
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(w_VSync_Start),
        .Q(w_VSync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8888888A8A8A888A)) 
    \r_Blu_Video_reg[2]_srl2_i_1 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_2_n_0 ),
        .I1(\r_Blu_Video_reg[2]_srl2_i_3_n_0 ),
        .I2(\o_Blu_Video_reg[2] ),
        .I3(\r_Blu_Video_reg[2]_srl2_i_5_n_0 ),
        .I4(\o_Blu_Video_reg[2]_0 ),
        .I5(\r_Blu_Video_reg[2]_srl2_i_7_n_0 ),
        .O(o_Blu_Video));
  LUT6 #(
    .INIT(64'h5688FFFFFFFF5688)) 
    \r_Blu_Video_reg[2]_srl2_i_11 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(w_Row_Count[6]),
        .I5(w_Col_Count[6]),
        .O(\r_Blu_Video_reg[2]_srl2_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5688000000005688)) 
    \r_Blu_Video_reg[2]_srl2_i_12 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(w_Row_Count[3]),
        .I5(w_Col_Count[3]),
        .O(\r_Blu_Video_reg[2]_srl2_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_Blu_Video_reg[2]_srl2_i_13 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_20_n_0 ),
        .I1(w_Row_Count[9]),
        .I2(w_Row_Count[3]),
        .I3(w_Row_Count[6]),
        .I4(w_Row_Count[2]),
        .O(\r_Blu_Video_reg[2]_srl2_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_Blu_Video_reg[2]_srl2_i_14 
       (.I0(\r_Grn_Video_reg[2]_srl2_i_8_n_0 ),
        .I1(w_Col_Count[2]),
        .I2(\r_Blu_Video_reg[2]_srl2_i_21_n_0 ),
        .I3(\r_Blu_Video_reg[2]_srl2_i_22_n_0 ),
        .I4(w_Col_Count[3]),
        .I5(\r_Blu_Video_reg[2]_srl2_i_23_n_0 ),
        .O(\r_Blu_Video_reg[2]_srl2_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \r_Blu_Video_reg[2]_srl2_i_15 
       (.I0(w_Row_Count[4]),
        .I1(w_Row_Count[8]),
        .I2(w_Row_Count[7]),
        .I3(w_Row_Count[6]),
        .I4(\o_Row_Count[9]_i_7_n_0 ),
        .I5(\r_Blu_Video_reg[2]_srl2_i_24_n_0 ),
        .O(\r_Blu_Video_reg[2]_srl2_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080808000)) 
    \r_Blu_Video_reg[2]_srl2_i_16 
       (.I0(w_Col_Count[2]),
        .I1(w_Col_Count[9]),
        .I2(\r_Blu_Video_reg[2]_srl2_i_25_n_0 ),
        .I3(w_Col_Count[0]),
        .I4(w_Col_Count[1]),
        .I5(\r_Blu_Video_reg[2]_srl2_i_26_n_0 ),
        .O(\r_Blu_Video_reg[2]_srl2_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4400440204021402)) 
    \r_Blu_Video_reg[2]_srl2_i_17 
       (.I0(w_Col_Count[9]),
        .I1(w_Col_Count[6]),
        .I2(w_Col_Count[7]),
        .I3(w_Col_Count[8]),
        .I4(w_Col_Count[4]),
        .I5(w_Col_Count[5]),
        .O(\r_Blu_Video_reg[2]_srl2_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000007A001F)) 
    \r_Blu_Video_reg[2]_srl2_i_18 
       (.I0(w_Col_Count[5]),
        .I1(w_Col_Count[4]),
        .I2(w_Col_Count[6]),
        .I3(w_Col_Count[8]),
        .I4(w_Col_Count[7]),
        .I5(w_Col_Count[9]),
        .O(\r_Blu_Video_reg[2]_srl2_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_Blu_Video_reg[2]_srl2_i_19 
       (.I0(w_Row_Count[8]),
        .I1(w_Row_Count[5]),
        .I2(w_Row_Count[6]),
        .I3(w_Row_Count[7]),
        .O(\r_Blu_Video_reg[2]_srl2_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hC55CD0C4C15CD0C0)) 
    \r_Blu_Video_reg[2]_srl2_i_2 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_8_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\r_Blu_Video_reg[2]_srl2_i_9_n_0 ),
        .O(\r_Blu_Video_reg[2]_srl2_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \r_Blu_Video_reg[2]_srl2_i_20 
       (.I0(w_Row_Count[7]),
        .I1(w_Row_Count[8]),
        .I2(w_Row_Count[5]),
        .I3(w_Row_Count[4]),
        .I4(w_Row_Count[0]),
        .I5(w_Row_Count[1]),
        .O(\r_Blu_Video_reg[2]_srl2_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_Blu_Video_reg[2]_srl2_i_21 
       (.I0(w_Col_Count[6]),
        .I1(w_Col_Count[7]),
        .O(\r_Blu_Video_reg[2]_srl2_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_Blu_Video_reg[2]_srl2_i_22 
       (.I0(w_Col_Count[4]),
        .I1(w_Col_Count[5]),
        .O(\r_Blu_Video_reg[2]_srl2_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_Blu_Video_reg[2]_srl2_i_23 
       (.I0(w_Col_Count[8]),
        .I1(w_Col_Count[9]),
        .O(\r_Blu_Video_reg[2]_srl2_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_Blu_Video_reg[2]_srl2_i_24 
       (.I0(w_Row_Count[3]),
        .I1(w_Row_Count[2]),
        .O(\r_Blu_Video_reg[2]_srl2_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Blu_Video_reg[2]_srl2_i_25 
       (.I0(w_Col_Count[3]),
        .I1(w_Col_Count[4]),
        .O(\r_Blu_Video_reg[2]_srl2_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_Blu_Video_reg[2]_srl2_i_26 
       (.I0(w_Col_Count[5]),
        .I1(w_Col_Count[6]),
        .O(\r_Blu_Video_reg[2]_srl2_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h555555D5)) 
    \r_Blu_Video_reg[2]_srl2_i_3 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_1_0 ),
        .I1(\r_Blu_Video_reg[2]_srl2_i_11_n_0 ),
        .I2(\o_Blu_Video_reg[2] ),
        .I3(\r_Blu_Video_reg[2]_srl2_i_8_n_0 ),
        .I4(\r_Blu_Video_reg[2]_srl2_i_12_n_0 ),
        .O(\r_Blu_Video_reg[2]_srl2_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \r_Blu_Video_reg[2]_srl2_i_5 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_8_n_0 ),
        .I1(\r_Blu_Video_reg[2]_srl2_i_13_n_0 ),
        .I2(\r_Blu_Video_reg[2]_srl2_i_14_n_0 ),
        .I3(\r_Blu_Video_reg[2]_srl2_i_15_n_0 ),
        .I4(\r_Blu_Video_reg[2]_srl2_i_16_n_0 ),
        .O(\r_Blu_Video_reg[2]_srl2_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_Blu_Video_reg[2]_srl2_i_7 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_17_n_0 ),
        .I1(\r_Blu_Video_reg[2]_srl2_i_18_n_0 ),
        .I2(\r_Blu_Video_reg[2]_srl2_i_8_n_0 ),
        .O(\r_Blu_Video_reg[2]_srl2_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFA8FFFF)) 
    \r_Blu_Video_reg[2]_srl2_i_8 
       (.I0(w_Col_Count[9]),
        .I1(w_Col_Count[8]),
        .I2(w_Col_Count[7]),
        .I3(w_Row_Count[9]),
        .I4(\r_Blu_Video_reg[2]_srl2_i_19_n_0 ),
        .O(\r_Blu_Video_reg[2]_srl2_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_Blu_Video_reg[2]_srl2_i_9 
       (.I0(w_Col_Count[5]),
        .I1(w_Row_Count[5]),
        .O(\r_Blu_Video_reg[2]_srl2_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007F4F)) 
    \r_Grn_Video_reg[2]_srl2_i_1 
       (.I0(\r_Grn_Video_reg[2]_srl2_i_2_n_0 ),
        .I1(\o_Grn_Video_reg[2] ),
        .I2(\o_Grn_Video_reg[2]_0 ),
        .I3(\r_Grn_Video_reg[2]_srl2_i_5_n_0 ),
        .I4(\r_Grn_Video_reg[2]_srl2_i_6_n_0 ),
        .I5(\r_Grn_Video_reg[2]_srl2_i_7_n_0 ),
        .O(o_Grn_Video));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_Grn_Video_reg[2]_srl2_i_10 
       (.I0(w_Col_Count[4]),
        .I1(w_Row_Count[4]),
        .O(\r_Grn_Video_reg[2]_srl2_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h14055415)) 
    \r_Grn_Video_reg[2]_srl2_i_2 
       (.I0(w_Col_Count[9]),
        .I1(w_Col_Count[6]),
        .I2(w_Col_Count[7]),
        .I3(w_Col_Count[8]),
        .I4(w_Col_Count[5]),
        .O(\r_Grn_Video_reg[2]_srl2_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFFFFFFFFF)) 
    \r_Grn_Video_reg[2]_srl2_i_5 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_16_n_0 ),
        .I1(\r_Blu_Video_reg[2]_srl2_i_15_n_0 ),
        .I2(\r_Grn_Video_reg[2]_srl2_i_8_n_0 ),
        .I3(w_Col_Count[2]),
        .I4(\r_Grn_Video_reg[2]_srl2_i_9_n_0 ),
        .I5(\r_Blu_Video_reg[2]_srl2_i_13_n_0 ),
        .O(\r_Grn_Video_reg[2]_srl2_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \r_Grn_Video_reg[2]_srl2_i_6 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_8_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\r_Grn_Video_reg[2]_srl2_i_10_n_0 ),
        .O(\r_Grn_Video_reg[2]_srl2_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9000F909F0F0F0FF)) 
    \r_Grn_Video_reg[2]_srl2_i_7 
       (.I0(w_Row_Count[5]),
        .I1(w_Col_Count[5]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\r_Grn_Video_reg[2]_srl2_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Grn_Video_reg[2]_srl2_i_8 
       (.I0(w_Col_Count[0]),
        .I1(w_Col_Count[1]),
        .O(\r_Grn_Video_reg[2]_srl2_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_Grn_Video_reg[2]_srl2_i_9 
       (.I0(w_Col_Count[8]),
        .I1(w_Col_Count[9]),
        .I2(w_Col_Count[3]),
        .I3(w_Col_Count[4]),
        .I4(w_Col_Count[5]),
        .I5(\r_Blu_Video_reg[2]_srl2_i_21_n_0 ),
        .O(\r_Grn_Video_reg[2]_srl2_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF101F0000)) 
    \r_Red_Video_reg[2]_srl2_i_1 
       (.I0(Q[0]),
        .I1(\r_Blu_Video_reg[2]_srl2_i_5_n_0 ),
        .I2(Q[1]),
        .I3(\r_Red_Video_reg[2]_srl2_i_2_n_0 ),
        .I4(\o_Red_Video_reg[2] ),
        .I5(\r_Red_Video_reg[2]_srl2_i_4_n_0 ),
        .O(o_Red_Video));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFBEAEAFB)) 
    \r_Red_Video_reg[2]_srl2_i_2 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_8_n_0 ),
        .I1(Q[0]),
        .I2(\r_Red_Video_reg[2]_srl2_i_5_n_0 ),
        .I3(w_Row_Count[5]),
        .I4(w_Col_Count[5]),
        .O(\r_Red_Video_reg[2]_srl2_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_Red_Video_reg[2]_srl2_i_4 
       (.I0(\r_Blu_Video_reg[2]_srl2_i_8_n_0 ),
        .I1(\r_Red_Video_reg[2]_srl2_i_6_n_0 ),
        .O(\r_Red_Video_reg[2]_srl2_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \r_Red_Video_reg[2]_srl2_i_5 
       (.I0(w_Col_Count[9]),
        .I1(w_Col_Count[6]),
        .I2(w_Col_Count[7]),
        .I3(w_Col_Count[8]),
        .O(\r_Red_Video_reg[2]_srl2_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4C0CFCFF7CCCFCFF)) 
    \r_Red_Video_reg[2]_srl2_i_6 
       (.I0(\r_Grn_Video_reg[2]_srl2_i_10_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\r_Blu_Video_reg[2]_srl2_i_9_n_0 ),
        .O(\r_Red_Video_reg[2]_srl2_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "VGA_Sync_To_Count" *) 
module rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count_0
   (w_VSync,
    \o_Col_Count_reg[4]_0 ,
    \o_Row_Count_reg[7]_0 ,
    o_HSync_reg_0,
    i_VGA_Clock,
    w_VSync_TP,
    SR);
  output w_VSync;
  output \o_Col_Count_reg[4]_0 ;
  output \o_Row_Count_reg[7]_0 ;
  input o_HSync_reg_0;
  input i_VGA_Clock;
  input w_VSync_TP;
  input [0:0]SR;

  wire [0:0]SR;
  wire i_VGA_Clock;
  wire \o_Col_Count[0]_i_1__0_n_0 ;
  wire \o_Col_Count[1]_i_1__0_n_0 ;
  wire \o_Col_Count[2]_i_1__0_n_0 ;
  wire \o_Col_Count[3]_i_1__0_n_0 ;
  wire \o_Col_Count[4]_i_1__0_n_0 ;
  wire \o_Col_Count[5]_i_1__1_n_0 ;
  wire \o_Col_Count[6]_i_1_n_0 ;
  wire \o_Col_Count[7]_i_1__0_n_0 ;
  wire \o_Col_Count[8]_i_1__0_n_0 ;
  wire \o_Col_Count[8]_i_2__0_n_0 ;
  wire \o_Col_Count[9]_i_1__0_n_0 ;
  wire \o_Col_Count[9]_i_2__0_n_0 ;
  wire \o_Col_Count[9]_i_3_n_0 ;
  wire \o_Col_Count_reg[4]_0 ;
  wire o_HSync_i_2_n_0;
  wire o_HSync_reg_0;
  wire o_HSync_reg_n_0;
  wire o_Row_Count;
  wire \o_Row_Count[0]_i_1__1_n_0 ;
  wire \o_Row_Count[1]_i_1__1_n_0 ;
  wire \o_Row_Count[2]_i_1_n_0 ;
  wire \o_Row_Count[3]_i_1_n_0 ;
  wire \o_Row_Count[3]_i_2_n_0 ;
  wire \o_Row_Count[3]_i_3_n_0 ;
  wire \o_Row_Count[4]_i_1_n_0 ;
  wire \o_Row_Count[5]_i_1__1_n_0 ;
  wire \o_Row_Count[6]_i_1_n_0 ;
  wire \o_Row_Count[7]_i_1_n_0 ;
  wire \o_Row_Count[8]_i_1_n_0 ;
  wire \o_Row_Count[8]_i_2_n_0 ;
  wire \o_Row_Count[9]_i_3_n_0 ;
  wire \o_Row_Count[9]_i_4__0_n_0 ;
  wire \o_Row_Count[9]_i_5_n_0 ;
  wire \o_Row_Count[9]_i_6__0_n_0 ;
  wire \o_Row_Count[9]_i_7__0_n_0 ;
  wire \o_Row_Count_reg[7]_0 ;
  wire \o_Row_Count_reg_n_0_[0] ;
  wire \o_Row_Count_reg_n_0_[1] ;
  wire \o_Row_Count_reg_n_0_[2] ;
  wire \o_Row_Count_reg_n_0_[3] ;
  wire \o_Row_Count_reg_n_0_[4] ;
  wire \o_Row_Count_reg_n_0_[5] ;
  wire \o_Row_Count_reg_n_0_[6] ;
  wire \o_Row_Count_reg_n_0_[7] ;
  wire \o_Row_Count_reg_n_0_[8] ;
  wire \o_Row_Count_reg_n_0_[9] ;
  wire o_VSync_i_2_n_0;
  wire [9:0]w_Col_Count;
  wire w_VSync;
  wire w_VSync_TP;

  LUT1 #(
    .INIT(2'h1)) 
    \o_Col_Count[0]_i_1__0 
       (.I0(w_Col_Count[0]),
        .O(\o_Col_Count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_Col_Count[1]_i_1__0 
       (.I0(w_Col_Count[0]),
        .I1(w_Col_Count[1]),
        .O(\o_Col_Count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \o_Col_Count[2]_i_1__0 
       (.I0(w_Col_Count[2]),
        .I1(w_Col_Count[0]),
        .I2(w_Col_Count[1]),
        .O(\o_Col_Count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \o_Col_Count[3]_i_1__0 
       (.I0(w_Col_Count[1]),
        .I1(w_Col_Count[0]),
        .I2(w_Col_Count[2]),
        .I3(w_Col_Count[3]),
        .O(\o_Col_Count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \o_Col_Count[4]_i_1__0 
       (.I0(w_Col_Count[4]),
        .I1(w_Col_Count[1]),
        .I2(w_Col_Count[0]),
        .I3(w_Col_Count[2]),
        .I4(w_Col_Count[3]),
        .O(\o_Col_Count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \o_Col_Count[5]_i_1__1 
       (.I0(w_Col_Count[5]),
        .I1(w_Col_Count[3]),
        .I2(w_Col_Count[2]),
        .I3(w_Col_Count[0]),
        .I4(w_Col_Count[1]),
        .I5(w_Col_Count[4]),
        .O(\o_Col_Count[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \o_Col_Count[6]_i_1 
       (.I0(w_Col_Count[6]),
        .I1(w_Col_Count[4]),
        .I2(w_Col_Count[5]),
        .I3(\o_Col_Count[8]_i_2__0_n_0 ),
        .O(\o_Col_Count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \o_Col_Count[7]_i_1__0 
       (.I0(w_Col_Count[7]),
        .I1(w_Col_Count[6]),
        .I2(w_Col_Count[5]),
        .I3(w_Col_Count[4]),
        .I4(\o_Col_Count[8]_i_2__0_n_0 ),
        .O(\o_Col_Count[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \o_Col_Count[8]_i_1__0 
       (.I0(w_Col_Count[8]),
        .I1(\o_Col_Count[8]_i_2__0_n_0 ),
        .I2(w_Col_Count[4]),
        .I3(w_Col_Count[5]),
        .I4(w_Col_Count[6]),
        .I5(w_Col_Count[7]),
        .O(\o_Col_Count[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \o_Col_Count[8]_i_2__0 
       (.I0(w_Col_Count[3]),
        .I1(w_Col_Count[2]),
        .I2(w_Col_Count[0]),
        .I3(w_Col_Count[1]),
        .O(\o_Col_Count[8]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \o_Col_Count[9]_i_1__0 
       (.I0(w_VSync),
        .I1(w_VSync_TP),
        .I2(o_Row_Count),
        .O(\o_Col_Count[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \o_Col_Count[9]_i_2__0 
       (.I0(w_Col_Count[9]),
        .I1(\o_Col_Count[9]_i_3_n_0 ),
        .I2(w_Col_Count[8]),
        .O(\o_Col_Count[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \o_Col_Count[9]_i_3 
       (.I0(w_Col_Count[7]),
        .I1(w_Col_Count[6]),
        .I2(w_Col_Count[5]),
        .I3(w_Col_Count[4]),
        .I4(\o_Col_Count[8]_i_2__0_n_0 ),
        .O(\o_Col_Count[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[0] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[0]_i_1__0_n_0 ),
        .Q(w_Col_Count[0]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[1] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[1]_i_1__0_n_0 ),
        .Q(w_Col_Count[1]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[2] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[2]_i_1__0_n_0 ),
        .Q(w_Col_Count[2]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[3] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[3]_i_1__0_n_0 ),
        .Q(w_Col_Count[3]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[4] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[4]_i_1__0_n_0 ),
        .Q(w_Col_Count[4]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[5] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[5]_i_1__1_n_0 ),
        .Q(w_Col_Count[5]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[6] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[6]_i_1_n_0 ),
        .Q(w_Col_Count[6]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[7] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[7]_i_1__0_n_0 ),
        .Q(w_Col_Count[7]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[8] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[8]_i_1__0_n_0 ),
        .Q(w_Col_Count[8]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Col_Count_reg[9] 
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(\o_Col_Count[9]_i_2__0_n_0 ),
        .Q(w_Col_Count[9]),
        .R(\o_Col_Count[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEAAB)) 
    o_HSync_i_1
       (.I0(o_HSync_i_2_n_0),
        .I1(w_Col_Count[4]),
        .I2(w_Col_Count[5]),
        .I3(w_Col_Count[6]),
        .O(\o_Col_Count_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    o_HSync_i_2
       (.I0(w_Col_Count[9]),
        .I1(o_HSync_reg_n_0),
        .I2(w_Col_Count[7]),
        .I3(w_Col_Count[8]),
        .O(o_HSync_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_HSync_reg
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(o_HSync_reg_0),
        .Q(o_HSync_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \o_Row_Count[0]_i_1__1 
       (.I0(\o_Row_Count_reg_n_0_[0] ),
        .I1(\o_Row_Count[3]_i_2_n_0 ),
        .O(\o_Row_Count[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_Row_Count[1]_i_1__1 
       (.I0(\o_Row_Count_reg_n_0_[0] ),
        .I1(\o_Row_Count_reg_n_0_[1] ),
        .O(\o_Row_Count[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h08787878)) 
    \o_Row_Count[2]_i_1 
       (.I0(\o_Row_Count_reg_n_0_[0] ),
        .I1(\o_Row_Count_reg_n_0_[1] ),
        .I2(\o_Row_Count_reg_n_0_[2] ),
        .I3(\o_Row_Count[3]_i_3_n_0 ),
        .I4(\o_Row_Count[9]_i_7__0_n_0 ),
        .O(\o_Row_Count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1444C44414444444)) 
    \o_Row_Count[3]_i_1 
       (.I0(\o_Row_Count[3]_i_2_n_0 ),
        .I1(\o_Row_Count_reg_n_0_[3] ),
        .I2(\o_Row_Count_reg_n_0_[2] ),
        .I3(\o_Row_Count_reg_n_0_[0] ),
        .I4(\o_Row_Count_reg_n_0_[1] ),
        .I5(\o_Row_Count[3]_i_3_n_0 ),
        .O(\o_Row_Count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055040000)) 
    \o_Row_Count[3]_i_2 
       (.I0(\o_Row_Count_reg_n_0_[1] ),
        .I1(\o_Row_Count_reg_n_0_[3] ),
        .I2(\o_Row_Count_reg_n_0_[4] ),
        .I3(\o_Row_Count_reg_n_0_[5] ),
        .I4(\o_Row_Count_reg_n_0_[9] ),
        .I5(\o_Row_Count[9]_i_6__0_n_0 ),
        .O(\o_Row_Count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \o_Row_Count[3]_i_3 
       (.I0(\o_Row_Count_reg_n_0_[9] ),
        .I1(\o_Row_Count_reg_n_0_[4] ),
        .I2(\o_Row_Count_reg_n_0_[8] ),
        .I3(\o_Row_Count_reg_n_0_[5] ),
        .I4(\o_Row_Count_reg_n_0_[6] ),
        .I5(\o_Row_Count_reg_n_0_[7] ),
        .O(\o_Row_Count[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \o_Row_Count[4]_i_1 
       (.I0(\o_Row_Count_reg_n_0_[4] ),
        .I1(\o_Row_Count_reg_n_0_[3] ),
        .I2(\o_Row_Count_reg_n_0_[2] ),
        .I3(\o_Row_Count_reg_n_0_[1] ),
        .I4(\o_Row_Count_reg_n_0_[0] ),
        .O(\o_Row_Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \o_Row_Count[5]_i_1__1 
       (.I0(\o_Row_Count_reg_n_0_[5] ),
        .I1(\o_Row_Count_reg_n_0_[4] ),
        .I2(\o_Row_Count_reg_n_0_[3] ),
        .I3(\o_Row_Count_reg_n_0_[2] ),
        .I4(\o_Row_Count_reg_n_0_[1] ),
        .I5(\o_Row_Count_reg_n_0_[0] ),
        .O(\o_Row_Count[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \o_Row_Count[6]_i_1 
       (.I0(\o_Row_Count_reg_n_0_[6] ),
        .I1(\o_Row_Count[8]_i_2_n_0 ),
        .I2(\o_Row_Count_reg_n_0_[5] ),
        .O(\o_Row_Count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \o_Row_Count[7]_i_1 
       (.I0(\o_Row_Count_reg_n_0_[7] ),
        .I1(\o_Row_Count_reg_n_0_[5] ),
        .I2(\o_Row_Count[8]_i_2_n_0 ),
        .I3(\o_Row_Count_reg_n_0_[6] ),
        .O(\o_Row_Count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \o_Row_Count[8]_i_1 
       (.I0(\o_Row_Count_reg_n_0_[6] ),
        .I1(\o_Row_Count[8]_i_2_n_0 ),
        .I2(\o_Row_Count_reg_n_0_[5] ),
        .I3(\o_Row_Count_reg_n_0_[7] ),
        .I4(\o_Row_Count_reg_n_0_[8] ),
        .O(\o_Row_Count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_Row_Count[8]_i_2 
       (.I0(\o_Row_Count_reg_n_0_[0] ),
        .I1(\o_Row_Count_reg_n_0_[1] ),
        .I2(\o_Row_Count_reg_n_0_[2] ),
        .I3(\o_Row_Count_reg_n_0_[3] ),
        .I4(\o_Row_Count_reg_n_0_[4] ),
        .O(\o_Row_Count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \o_Row_Count[9]_i_2__1 
       (.I0(w_Col_Count[7]),
        .I1(w_Col_Count[9]),
        .I2(w_Col_Count[8]),
        .I3(w_Col_Count[5]),
        .I4(w_Col_Count[6]),
        .I5(\o_Row_Count[9]_i_4__0_n_0 ),
        .O(o_Row_Count));
  LUT4 #(
    .INIT(16'h6266)) 
    \o_Row_Count[9]_i_3 
       (.I0(\o_Row_Count[9]_i_5_n_0 ),
        .I1(\o_Row_Count_reg_n_0_[9] ),
        .I2(\o_Row_Count[9]_i_6__0_n_0 ),
        .I3(\o_Row_Count[9]_i_7__0_n_0 ),
        .O(\o_Row_Count[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_Row_Count[9]_i_4__0 
       (.I0(w_Col_Count[4]),
        .I1(w_Col_Count[1]),
        .I2(w_Col_Count[0]),
        .I3(w_Col_Count[2]),
        .I4(w_Col_Count[3]),
        .O(\o_Row_Count[9]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \o_Row_Count[9]_i_5 
       (.I0(\o_Row_Count_reg_n_0_[8] ),
        .I1(\o_Row_Count_reg_n_0_[7] ),
        .I2(\o_Row_Count_reg_n_0_[5] ),
        .I3(\o_Row_Count[8]_i_2_n_0 ),
        .I4(\o_Row_Count_reg_n_0_[6] ),
        .O(\o_Row_Count[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \o_Row_Count[9]_i_6__0 
       (.I0(\o_Row_Count_reg_n_0_[4] ),
        .I1(\o_Row_Count_reg_n_0_[8] ),
        .I2(\o_Row_Count_reg_n_0_[5] ),
        .I3(\o_Row_Count_reg_n_0_[6] ),
        .I4(\o_Row_Count_reg_n_0_[7] ),
        .I5(\o_Row_Count_reg_n_0_[2] ),
        .O(\o_Row_Count[9]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004544)) 
    \o_Row_Count[9]_i_7__0 
       (.I0(\o_Row_Count_reg_n_0_[0] ),
        .I1(\o_Row_Count_reg_n_0_[5] ),
        .I2(\o_Row_Count_reg_n_0_[4] ),
        .I3(\o_Row_Count_reg_n_0_[3] ),
        .I4(\o_Row_Count_reg_n_0_[1] ),
        .O(\o_Row_Count[9]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[0] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[0]_i_1__1_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[1] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[1]_i_1__1_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[2] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[2]_i_1_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[3] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[3]_i_1_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[4] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[4]_i_1_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[5] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[5]_i_1__1_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[6] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[6]_i_1_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[7] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[7]_i_1_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[8] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[8]_i_1_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \o_Row_Count_reg[9] 
       (.C(i_VGA_Clock),
        .CE(o_Row_Count),
        .D(\o_Row_Count[9]_i_3_n_0 ),
        .Q(\o_Row_Count_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    o_VSync_i_1__0
       (.I0(\o_Row_Count_reg_n_0_[7] ),
        .I1(\o_Row_Count_reg_n_0_[8] ),
        .I2(w_VSync),
        .I3(\o_Row_Count_reg_n_0_[9] ),
        .I4(o_VSync_i_2_n_0),
        .O(\o_Row_Count_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    o_VSync_i_2
       (.I0(\o_Row_Count_reg_n_0_[5] ),
        .I1(\o_Row_Count_reg_n_0_[6] ),
        .I2(\o_Row_Count_reg_n_0_[4] ),
        .I3(\o_Row_Count_reg_n_0_[2] ),
        .I4(\o_Row_Count_reg_n_0_[3] ),
        .I5(\o_Row_Count_reg_n_0_[1] ),
        .O(o_VSync_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_VSync_reg
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(w_VSync_TP),
        .Q(w_VSync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "VGA_Test_Pattern_Gen" *) 
module rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Test_Pattern_Gen
   (i_VGA_Clock_0,
    w_VSync,
    w_VSync_TP,
    o_Blu_Video,
    o_Red_Video,
    o_Grn_Video,
    E,
    SR,
    i_HSync,
    i_VGA_Clock,
    w_VSync_Start,
    Q,
    \o_Blu_Video_reg[2] ,
    \o_Blu_Video_reg[2]_0 ,
    \o_Red_Video_reg[2] ,
    \o_Grn_Video_reg[2] ,
    \o_Grn_Video_reg[2]_0 ,
    w_VSync_0,
    \r_Blu_Video_reg[2]_srl2_i_1 ,
    \o_Row_Count_reg[0] ,
    \o_Col_Count_reg[0] );
  output i_VGA_Clock_0;
  output w_VSync;
  output w_VSync_TP;
  output [0:0]o_Blu_Video;
  output [0:0]o_Red_Video;
  output [0:0]o_Grn_Video;
  output [0:0]E;
  output [0:0]SR;
  input i_HSync;
  input i_VGA_Clock;
  input w_VSync_Start;
  input [3:0]Q;
  input \o_Blu_Video_reg[2] ;
  input \o_Blu_Video_reg[2]_0 ;
  input \o_Red_Video_reg[2] ;
  input \o_Grn_Video_reg[2] ;
  input \o_Grn_Video_reg[2]_0 ;
  input w_VSync_0;
  input \r_Blu_Video_reg[2]_srl2_i_1 ;
  input [0:0]\o_Row_Count_reg[0] ;
  input [0:0]\o_Col_Count_reg[0] ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire i_HSync;
  wire i_VGA_Clock;
  wire i_VGA_Clock_0;
  wire [0:0]o_Blu_Video;
  wire \o_Blu_Video_reg[2] ;
  wire \o_Blu_Video_reg[2]_0 ;
  wire [0:0]\o_Col_Count_reg[0] ;
  wire [0:0]o_Grn_Video;
  wire \o_Grn_Video_reg[2] ;
  wire \o_Grn_Video_reg[2]_0 ;
  wire [0:0]o_Red_Video;
  wire \o_Red_Video_reg[2] ;
  wire [0:0]\o_Row_Count_reg[0] ;
  wire \r_Blu_Video_reg[2]_srl2_i_1 ;
  wire w_VSync;
  wire w_VSync_0;
  wire w_VSync_Start;
  wire w_VSync_TP;

  rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count UUT
       (.E(E),
        .Q(Q),
        .SR(SR),
        .i_VGA_Clock(i_VGA_Clock),
        .o_Blu_Video(o_Blu_Video),
        .\o_Blu_Video_reg[2] (\o_Blu_Video_reg[2] ),
        .\o_Blu_Video_reg[2]_0 (\o_Blu_Video_reg[2]_0 ),
        .\o_Col_Count_reg[0]_0 (\o_Col_Count_reg[0] ),
        .o_Grn_Video(o_Grn_Video),
        .\o_Grn_Video_reg[2] (\o_Grn_Video_reg[2] ),
        .\o_Grn_Video_reg[2]_0 (\o_Grn_Video_reg[2]_0 ),
        .o_Red_Video(o_Red_Video),
        .\o_Red_Video_reg[2] (\o_Red_Video_reg[2] ),
        .\o_Row_Count_reg[0]_0 (\o_Row_Count_reg[0] ),
        .\r_Blu_Video_reg[2]_srl2_i_1_0 (\r_Blu_Video_reg[2]_srl2_i_1 ),
        .w_VSync(w_VSync),
        .w_VSync_0(w_VSync_0),
        .w_VSync_Start(w_VSync_Start),
        .w_VSync_TP(w_VSync_TP));
  (* srl_name = "\\U0/VGA_Test_Pattern_Gen_Inst/o_HSync_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    o_HSync_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(i_VGA_Clock),
        .D(i_HSync),
        .Q(i_VGA_Clock_0));
  FDRE #(
    .INIT(1'b0)) 
    o_VSync_reg
       (.C(i_VGA_Clock),
        .CE(1'b1),
        .D(w_VSync),
        .Q(w_VSync_TP),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "VGA_Testing_Top" *) 
module rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Testing_Top
   (o_VGA_RGB,
    o_VGA_HSync,
    o_VGA_VSync,
    i_VGA_Clock,
    i_Clock);
  output [2:0]o_VGA_RGB;
  output o_VGA_HSync;
  output o_VGA_VSync;
  input i_VGA_Clock;
  input i_Clock;

  wire \UUT/o_Row_Count ;
  wire \UUT/w_Frame_Start ;
  wire \UUT/w_Frame_Start_0 ;
  wire VGA_Sync_Porch_Inst_n_10;
  wire VGA_Sync_Porch_Inst_n_11;
  wire VGA_Sync_Porch_Inst_n_6;
  wire VGA_Sync_Porch_Inst_n_7;
  wire VGA_Sync_Porch_Inst_n_8;
  wire VGA_Sync_Porch_Inst_n_9;
  wire VGA_Sync_Pulses_Inst_n_0;
  wire VGA_Test_Pattern_Gen_Inst_n_0;
  wire i_Clock;
  wire i_HSync;
  wire i_VGA_Clock;
  wire [2:2]o_Blu_Video;
  wire [2:2]o_Grn_Video;
  wire [2:2]o_Red_Video;
  wire o_VGA_HSync;
  wire [2:0]o_VGA_RGB;
  wire o_VGA_VSync;
  wire [4:0]p_0_in;
  wire [31:0]r_CNT;
  wire r_CNT0_carry__0_n_0;
  wire r_CNT0_carry__0_n_1;
  wire r_CNT0_carry__0_n_2;
  wire r_CNT0_carry__0_n_3;
  wire r_CNT0_carry__0_n_4;
  wire r_CNT0_carry__0_n_5;
  wire r_CNT0_carry__0_n_6;
  wire r_CNT0_carry__0_n_7;
  wire r_CNT0_carry__1_n_0;
  wire r_CNT0_carry__1_n_1;
  wire r_CNT0_carry__1_n_2;
  wire r_CNT0_carry__1_n_3;
  wire r_CNT0_carry__1_n_4;
  wire r_CNT0_carry__1_n_5;
  wire r_CNT0_carry__1_n_6;
  wire r_CNT0_carry__1_n_7;
  wire r_CNT0_carry__2_n_0;
  wire r_CNT0_carry__2_n_1;
  wire r_CNT0_carry__2_n_2;
  wire r_CNT0_carry__2_n_3;
  wire r_CNT0_carry__2_n_4;
  wire r_CNT0_carry__2_n_5;
  wire r_CNT0_carry__2_n_6;
  wire r_CNT0_carry__2_n_7;
  wire r_CNT0_carry__3_n_0;
  wire r_CNT0_carry__3_n_1;
  wire r_CNT0_carry__3_n_2;
  wire r_CNT0_carry__3_n_3;
  wire r_CNT0_carry__3_n_4;
  wire r_CNT0_carry__3_n_5;
  wire r_CNT0_carry__3_n_6;
  wire r_CNT0_carry__3_n_7;
  wire r_CNT0_carry__4_n_0;
  wire r_CNT0_carry__4_n_1;
  wire r_CNT0_carry__4_n_2;
  wire r_CNT0_carry__4_n_3;
  wire r_CNT0_carry__4_n_4;
  wire r_CNT0_carry__4_n_5;
  wire r_CNT0_carry__4_n_6;
  wire r_CNT0_carry__4_n_7;
  wire r_CNT0_carry__5_n_0;
  wire r_CNT0_carry__5_n_1;
  wire r_CNT0_carry__5_n_2;
  wire r_CNT0_carry__5_n_3;
  wire r_CNT0_carry__5_n_4;
  wire r_CNT0_carry__5_n_5;
  wire r_CNT0_carry__5_n_6;
  wire r_CNT0_carry__5_n_7;
  wire r_CNT0_carry__6_n_2;
  wire r_CNT0_carry__6_n_3;
  wire r_CNT0_carry__6_n_5;
  wire r_CNT0_carry__6_n_6;
  wire r_CNT0_carry__6_n_7;
  wire r_CNT0_carry_n_0;
  wire r_CNT0_carry_n_1;
  wire r_CNT0_carry_n_2;
  wire r_CNT0_carry_n_3;
  wire r_CNT0_carry_n_4;
  wire r_CNT0_carry_n_5;
  wire r_CNT0_carry_n_6;
  wire r_CNT0_carry_n_7;
  wire \r_CNT[0]_i_1_n_0 ;
  wire \r_CNT[31]_i_1_n_0 ;
  wire \r_CNT[31]_i_2_n_0 ;
  wire \r_CNT[31]_i_3_n_0 ;
  wire \r_CNT[31]_i_4_n_0 ;
  wire \r_CNT[31]_i_5_n_0 ;
  wire \r_CNT[31]_i_6_n_0 ;
  wire \r_CNT[31]_i_7_n_0 ;
  wire \r_CNT[31]_i_8_n_0 ;
  wire \r_CNT[31]_i_9_n_0 ;
  wire \r_TEST_PATTERN_reg_n_0_[0] ;
  wire [3:0]sel0;
  wire w_VSync;
  wire w_VSync_1;
  wire w_VSync_Start;
  wire w_VSync_TP;
  wire [3:2]NLW_r_CNT0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_r_CNT0_carry__6_O_UNCONNECTED;

  rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Porch VGA_Sync_Porch_Inst
       (.Q(sel0),
        .SR(\UUT/w_Frame_Start_0 ),
        .i_VGA_Clock(i_VGA_Clock),
        .o_Blu_Video(o_Blu_Video),
        .o_Grn_Video(o_Grn_Video),
        .o_HSync_reg_0(VGA_Test_Pattern_Gen_Inst_n_0),
        .o_Red_Video(o_Red_Video),
        .o_VGA_HSync(o_VGA_HSync),
        .o_VGA_RGB(o_VGA_RGB),
        .o_VGA_VSync(o_VGA_VSync),
        .\r_TEST_PATTERN_reg[1] (VGA_Sync_Porch_Inst_n_7),
        .\r_TEST_PATTERN_reg[1]_0 (VGA_Sync_Porch_Inst_n_8),
        .\r_TEST_PATTERN_reg[1]_1 (VGA_Sync_Porch_Inst_n_9),
        .\r_TEST_PATTERN_reg[3] (VGA_Sync_Porch_Inst_n_6),
        .\r_TEST_PATTERN_reg[3]_0 (VGA_Sync_Porch_Inst_n_11),
        .\r_TEST_PATTERN_reg[4] (VGA_Sync_Porch_Inst_n_10),
        .w_VSync(w_VSync),
        .w_VSync_TP(w_VSync_TP));
  rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Pulses VGA_Sync_Pulses_Inst
       (.E(\UUT/o_Row_Count ),
        .SR(VGA_Sync_Pulses_Inst_n_0),
        .i_HSync(i_HSync),
        .i_VGA_Clock(i_VGA_Clock),
        .\o_Row_Count_reg[7]_0 (\UUT/w_Frame_Start ),
        .w_VSync(w_VSync_1),
        .w_VSync_Start(w_VSync_Start));
  rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Test_Pattern_Gen VGA_Test_Pattern_Gen_Inst
       (.E(\UUT/o_Row_Count ),
        .Q(sel0),
        .SR(\UUT/w_Frame_Start_0 ),
        .i_HSync(i_HSync),
        .i_VGA_Clock(i_VGA_Clock),
        .i_VGA_Clock_0(VGA_Test_Pattern_Gen_Inst_n_0),
        .o_Blu_Video(o_Blu_Video),
        .\o_Blu_Video_reg[2] (VGA_Sync_Porch_Inst_n_7),
        .\o_Blu_Video_reg[2]_0 (VGA_Sync_Porch_Inst_n_8),
        .\o_Col_Count_reg[0] (VGA_Sync_Pulses_Inst_n_0),
        .o_Grn_Video(o_Grn_Video),
        .\o_Grn_Video_reg[2] (VGA_Sync_Porch_Inst_n_9),
        .\o_Grn_Video_reg[2]_0 (VGA_Sync_Porch_Inst_n_10),
        .o_Red_Video(o_Red_Video),
        .\o_Red_Video_reg[2] (VGA_Sync_Porch_Inst_n_11),
        .\o_Row_Count_reg[0] (\UUT/w_Frame_Start ),
        .\r_Blu_Video_reg[2]_srl2_i_1 (VGA_Sync_Porch_Inst_n_6),
        .w_VSync(w_VSync_1),
        .w_VSync_0(w_VSync),
        .w_VSync_Start(w_VSync_Start),
        .w_VSync_TP(w_VSync_TP));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_CNT0_carry
       (.CI(1'b0),
        .CO({r_CNT0_carry_n_0,r_CNT0_carry_n_1,r_CNT0_carry_n_2,r_CNT0_carry_n_3}),
        .CYINIT(r_CNT[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_CNT0_carry_n_4,r_CNT0_carry_n_5,r_CNT0_carry_n_6,r_CNT0_carry_n_7}),
        .S(r_CNT[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_CNT0_carry__0
       (.CI(r_CNT0_carry_n_0),
        .CO({r_CNT0_carry__0_n_0,r_CNT0_carry__0_n_1,r_CNT0_carry__0_n_2,r_CNT0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_CNT0_carry__0_n_4,r_CNT0_carry__0_n_5,r_CNT0_carry__0_n_6,r_CNT0_carry__0_n_7}),
        .S(r_CNT[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_CNT0_carry__1
       (.CI(r_CNT0_carry__0_n_0),
        .CO({r_CNT0_carry__1_n_0,r_CNT0_carry__1_n_1,r_CNT0_carry__1_n_2,r_CNT0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_CNT0_carry__1_n_4,r_CNT0_carry__1_n_5,r_CNT0_carry__1_n_6,r_CNT0_carry__1_n_7}),
        .S(r_CNT[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_CNT0_carry__2
       (.CI(r_CNT0_carry__1_n_0),
        .CO({r_CNT0_carry__2_n_0,r_CNT0_carry__2_n_1,r_CNT0_carry__2_n_2,r_CNT0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_CNT0_carry__2_n_4,r_CNT0_carry__2_n_5,r_CNT0_carry__2_n_6,r_CNT0_carry__2_n_7}),
        .S(r_CNT[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_CNT0_carry__3
       (.CI(r_CNT0_carry__2_n_0),
        .CO({r_CNT0_carry__3_n_0,r_CNT0_carry__3_n_1,r_CNT0_carry__3_n_2,r_CNT0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_CNT0_carry__3_n_4,r_CNT0_carry__3_n_5,r_CNT0_carry__3_n_6,r_CNT0_carry__3_n_7}),
        .S(r_CNT[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_CNT0_carry__4
       (.CI(r_CNT0_carry__3_n_0),
        .CO({r_CNT0_carry__4_n_0,r_CNT0_carry__4_n_1,r_CNT0_carry__4_n_2,r_CNT0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_CNT0_carry__4_n_4,r_CNT0_carry__4_n_5,r_CNT0_carry__4_n_6,r_CNT0_carry__4_n_7}),
        .S(r_CNT[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_CNT0_carry__5
       (.CI(r_CNT0_carry__4_n_0),
        .CO({r_CNT0_carry__5_n_0,r_CNT0_carry__5_n_1,r_CNT0_carry__5_n_2,r_CNT0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_CNT0_carry__5_n_4,r_CNT0_carry__5_n_5,r_CNT0_carry__5_n_6,r_CNT0_carry__5_n_7}),
        .S(r_CNT[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_CNT0_carry__6
       (.CI(r_CNT0_carry__5_n_0),
        .CO({NLW_r_CNT0_carry__6_CO_UNCONNECTED[3:2],r_CNT0_carry__6_n_2,r_CNT0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_CNT0_carry__6_O_UNCONNECTED[3],r_CNT0_carry__6_n_5,r_CNT0_carry__6_n_6,r_CNT0_carry__6_n_7}),
        .S({1'b0,r_CNT[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_CNT[0]_i_1 
       (.I0(r_CNT[0]),
        .O(\r_CNT[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_CNT[31]_i_1 
       (.I0(\r_CNT[31]_i_2_n_0 ),
        .I1(\r_CNT[31]_i_3_n_0 ),
        .I2(\r_CNT[31]_i_4_n_0 ),
        .I3(\r_CNT[31]_i_5_n_0 ),
        .O(\r_CNT[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \r_CNT[31]_i_2 
       (.I0(r_CNT[5]),
        .I1(r_CNT[21]),
        .I2(r_CNT[16]),
        .I3(r_CNT[19]),
        .I4(\r_CNT[31]_i_6_n_0 ),
        .O(\r_CNT[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \r_CNT[31]_i_3 
       (.I0(r_CNT[0]),
        .I1(r_CNT[3]),
        .I2(r_CNT[1]),
        .I3(r_CNT[20]),
        .I4(\r_CNT[31]_i_7_n_0 ),
        .O(\r_CNT[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \r_CNT[31]_i_4 
       (.I0(r_CNT[29]),
        .I1(r_CNT[4]),
        .I2(r_CNT[26]),
        .I3(r_CNT[31]),
        .I4(\r_CNT[31]_i_8_n_0 ),
        .O(\r_CNT[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \r_CNT[31]_i_5 
       (.I0(r_CNT[12]),
        .I1(r_CNT[6]),
        .I2(r_CNT[28]),
        .I3(r_CNT[9]),
        .I4(\r_CNT[31]_i_9_n_0 ),
        .O(\r_CNT[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \r_CNT[31]_i_6 
       (.I0(r_CNT[25]),
        .I1(r_CNT[15]),
        .I2(r_CNT[7]),
        .I3(r_CNT[8]),
        .O(\r_CNT[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \r_CNT[31]_i_7 
       (.I0(r_CNT[18]),
        .I1(r_CNT[27]),
        .I2(r_CNT[23]),
        .I3(r_CNT[22]),
        .O(\r_CNT[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \r_CNT[31]_i_8 
       (.I0(r_CNT[13]),
        .I1(r_CNT[10]),
        .I2(r_CNT[30]),
        .I3(r_CNT[11]),
        .O(\r_CNT[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \r_CNT[31]_i_9 
       (.I0(r_CNT[14]),
        .I1(r_CNT[24]),
        .I2(r_CNT[2]),
        .I3(r_CNT[17]),
        .O(\r_CNT[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[0] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(\r_CNT[0]_i_1_n_0 ),
        .Q(r_CNT[0]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[10] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__1_n_6),
        .Q(r_CNT[10]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[11] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__1_n_5),
        .Q(r_CNT[11]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[12] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__1_n_4),
        .Q(r_CNT[12]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[13] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__2_n_7),
        .Q(r_CNT[13]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[14] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__2_n_6),
        .Q(r_CNT[14]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[15] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__2_n_5),
        .Q(r_CNT[15]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[16] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__2_n_4),
        .Q(r_CNT[16]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[17] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__3_n_7),
        .Q(r_CNT[17]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[18] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__3_n_6),
        .Q(r_CNT[18]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[19] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__3_n_5),
        .Q(r_CNT[19]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[1] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry_n_7),
        .Q(r_CNT[1]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[20] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__3_n_4),
        .Q(r_CNT[20]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[21] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__4_n_7),
        .Q(r_CNT[21]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[22] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__4_n_6),
        .Q(r_CNT[22]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[23] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__4_n_5),
        .Q(r_CNT[23]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[24] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__4_n_4),
        .Q(r_CNT[24]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[25] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__5_n_7),
        .Q(r_CNT[25]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[26] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__5_n_6),
        .Q(r_CNT[26]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[27] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__5_n_5),
        .Q(r_CNT[27]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[28] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__5_n_4),
        .Q(r_CNT[28]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[29] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__6_n_7),
        .Q(r_CNT[29]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[2] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry_n_6),
        .Q(r_CNT[2]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[30] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__6_n_6),
        .Q(r_CNT[30]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[31] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__6_n_5),
        .Q(r_CNT[31]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[3] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry_n_5),
        .Q(r_CNT[3]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[4] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry_n_4),
        .Q(r_CNT[4]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[5] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__0_n_7),
        .Q(r_CNT[5]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[6] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__0_n_6),
        .Q(r_CNT[6]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[7] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__0_n_5),
        .Q(r_CNT[7]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[8] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__0_n_4),
        .Q(r_CNT[8]),
        .R(\r_CNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_CNT_reg[9] 
       (.C(i_Clock),
        .CE(1'b1),
        .D(r_CNT0_carry__1_n_7),
        .Q(r_CNT[9]),
        .R(\r_CNT[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_TEST_PATTERN[0]_i_1 
       (.I0(\r_TEST_PATTERN_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_TEST_PATTERN[1]_i_1 
       (.I0(\r_TEST_PATTERN_reg_n_0_[0] ),
        .I1(sel0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_TEST_PATTERN[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\r_TEST_PATTERN_reg_n_0_[0] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_TEST_PATTERN[3]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(\r_TEST_PATTERN_reg_n_0_[0] ),
        .I3(sel0[0]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_TEST_PATTERN[4]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\r_TEST_PATTERN_reg_n_0_[0] ),
        .I4(sel0[0]),
        .O(p_0_in[4]));
  FDRE \r_TEST_PATTERN_reg[0] 
       (.C(i_Clock),
        .CE(\r_CNT[31]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\r_TEST_PATTERN_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \r_TEST_PATTERN_reg[1] 
       (.C(i_Clock),
        .CE(\r_CNT[31]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \r_TEST_PATTERN_reg[2] 
       (.C(i_Clock),
        .CE(\r_CNT[31]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \r_TEST_PATTERN_reg[3] 
       (.C(i_Clock),
        .CE(\r_CNT[31]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \r_TEST_PATTERN_reg[4] 
       (.C(i_Clock),
        .CE(\r_CNT[31]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(sel0[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
