// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Apr  3 19:35:03 2025
// Host        : i14700f-Ubuntu running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rich/VivadoProjects/rehsdZynq/rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ip/rehsdZynq_BD_audio_clock_0_0/rehsdZynq_BD_audio_clock_0_0_sim_netlist.v
// Design      : rehsdZynq_BD_audio_clock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rehsdZynq_BD_audio_clock_0_0,audio_clock,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "audio_clock,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module rehsdZynq_BD_audio_clock_0_0
   (clk_in_100m,
    reset_n,
    clk_out_48k);
  input clk_in_100m;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output clk_out_48k;

  wire clk_in_100m;
  wire clk_out_48k;
  wire reset_n;

  rehsdZynq_BD_audio_clock_0_0_audio_clock U0
       (.clk_in_100m(clk_in_100m),
        .clk_out_48k(clk_out_48k),
        .reset_n(reset_n));
endmodule

(* ORIG_REF_NAME = "audio_clock" *) 
module rehsdZynq_BD_audio_clock_0_0_audio_clock
   (clk_out_48k,
    reset_n,
    clk_in_100m);
  output clk_out_48k;
  input reset_n;
  input clk_in_100m;

  wire clk_in_100m;
  wire clk_out_48k;
  wire clk_out_48k_i_1_n_0;
  wire clk_out_48k_i_2_n_0;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_i_5_n_0;
  wire counter1_carry__0_i_6_n_0;
  wire counter1_carry__0_i_7_n_0;
  wire counter1_carry__0_i_8_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry__1_i_1_n_0;
  wire counter1_carry__1_i_2_n_0;
  wire counter1_carry__1_i_3_n_0;
  wire counter1_carry__1_i_4_n_0;
  wire counter1_carry__1_i_5_n_0;
  wire counter1_carry__1_i_6_n_0;
  wire counter1_carry__1_i_7_n_0;
  wire counter1_carry__1_i_8_n_0;
  wire counter1_carry__1_n_0;
  wire counter1_carry__1_n_1;
  wire counter1_carry__1_n_2;
  wire counter1_carry__1_n_3;
  wire counter1_carry__2_i_1_n_0;
  wire counter1_carry__2_i_2_n_0;
  wire counter1_carry__2_i_3_n_0;
  wire counter1_carry__2_i_4_n_0;
  wire counter1_carry__2_i_5_n_0;
  wire counter1_carry__2_i_6_n_0;
  wire counter1_carry__2_n_2;
  wire counter1_carry__2_n_3;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_i_5_n_0;
  wire counter1_carry_i_6_n_0;
  wire counter1_carry_i_7_n_0;
  wire counter1_carry_i_8_n_0;
  wire counter1_carry_i_9_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[24]_i_5_n_0 ;
  wire \counter[28]_i_2_n_0 ;
  wire \counter[28]_i_3_n_0 ;
  wire \counter[28]_i_4_n_0 ;
  wire \counter[28]_i_5_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire load;
  wire reset_n;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_counter1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    clk_out_48k_i_1
       (.I0(load),
        .I1(clk_out_48k),
        .O(clk_out_48k_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_out_48k_i_2
       (.I0(reset_n),
        .O(clk_out_48k_i_2_n_0));
  FDCE clk_out_48k_reg
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(clk_out_48k_i_1_n_0),
        .Q(clk_out_48k));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(counter1_carry_i_1_n_0),
        .DI({counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0,counter1_carry_i_5_n_0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_6_n_0,counter1_carry_i_7_n_0,counter1_carry_i_8_n_0,counter1_carry_i_9_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_5_n_0,counter1_carry__0_i_6_n_0,counter1_carry__0_i_7_n_0,counter1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__0_i_1
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .O(counter1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__0_i_2
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(counter1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__0_i_3
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(counter1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter1_carry__0_i_4
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(counter1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__0_i_5
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .O(counter1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__0_i_6
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(counter1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__0_i_7
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(counter1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry__0_i_8
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .O(counter1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({counter1_carry__1_n_0,counter1_carry__1_n_1,counter1_carry__1_n_2,counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__1_i_1_n_0,counter1_carry__1_i_2_n_0,counter1_carry__1_i_3_n_0,counter1_carry__1_i_4_n_0}),
        .O(NLW_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({counter1_carry__1_i_5_n_0,counter1_carry__1_i_6_n_0,counter1_carry__1_i_7_n_0,counter1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__1_i_1
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .O(counter1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__1_i_2
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(counter1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__1_i_3
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(counter1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__1_i_4
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(counter1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__1_i_5
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .O(counter1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__1_i_6
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(counter1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__1_i_7
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(counter1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__1_i_8
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(counter1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter1_carry__2
       (.CI(counter1_carry__1_n_0),
        .CO({NLW_counter1_carry__2_CO_UNCONNECTED[3],load,counter1_carry__2_n_2,counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter1_carry__2_i_1_n_0,counter1_carry__2_i_2_n_0,counter1_carry__2_i_3_n_0}),
        .O(NLW_counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,counter1_carry__2_i_4_n_0,counter1_carry__2_i_5_n_0,counter1_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry__2_i_1
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(counter1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__2_i_2
       (.I0(counter_reg[28]),
        .I1(counter_reg[29]),
        .O(counter1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__2_i_3
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .O(counter1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__2_i_4
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(counter1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__2_i_5
       (.I0(counter_reg[28]),
        .I1(counter_reg[29]),
        .O(counter1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__2_i_6
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .O(counter1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter1_carry_i_1
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(counter1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry_i_2
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(counter1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry_i_3
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(counter1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter1_carry_i_4
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(counter1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry_i_5
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(counter1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry_i_6
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(counter1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry_i_7
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(counter1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry_i_8
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .O(counter1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry_i_9
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(counter1_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .I1(load),
        .O(\counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(load),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(load),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(load),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_6 
       (.I0(counter_reg[0]),
        .I1(load),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(load),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(load),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(load),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(load),
        .O(\counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .I1(load),
        .O(\counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .I1(load),
        .O(\counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .I1(load),
        .O(\counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .I1(load),
        .O(\counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(load),
        .O(\counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .I1(load),
        .O(\counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .I1(load),
        .O(\counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .I1(load),
        .O(\counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_2 
       (.I0(counter_reg[27]),
        .I1(load),
        .O(\counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_3 
       (.I0(counter_reg[26]),
        .I1(load),
        .O(\counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_4 
       (.I0(counter_reg[25]),
        .I1(load),
        .O(\counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_5 
       (.I0(counter_reg[24]),
        .I1(load),
        .O(\counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_2 
       (.I0(counter_reg[31]),
        .I1(load),
        .O(\counter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_3 
       (.I0(counter_reg[30]),
        .I1(load),
        .O(\counter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_4 
       (.I0(counter_reg[29]),
        .I1(load),
        .O(\counter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_5 
       (.I0(counter_reg[28]),
        .I1(load),
        .O(\counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(load),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(load),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(load),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(load),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(load),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(load),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(load),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(load),
        .O(\counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 ,\counter[24]_i_4_n_0 ,\counter[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3],\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S({\counter[28]_i_2_n_0 ,\counter[28]_i_3_n_0 ,\counter[28]_i_4_n_0 ,\counter[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_in_100m),
        .CE(1'b1),
        .CLR(clk_out_48k_i_2_n_0),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
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
