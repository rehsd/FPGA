// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module rehsdZynq_BD (
  DDR_cas_n,
  DDR_cke,
  DDR_ck_n,
  DDR_ck_p,
  DDR_cs_n,
  DDR_reset_n,
  DDR_odt,
  DDR_ras_n,
  DDR_we_n,
  DDR_ba,
  DDR_addr,
  DDR_dm,
  DDR_dq,
  DDR_dqs_n,
  DDR_dqs_p,
  FIXED_IO_mio,
  FIXED_IO_ddr_vrn,
  FIXED_IO_ddr_vrp,
  FIXED_IO_ps_srstb,
  FIXED_IO_ps_clk,
  FIXED_IO_ps_porb,
  HDMI_DDC_sda_i,
  HDMI_DDC_sda_o,
  HDMI_DDC_sda_t,
  HDMI_DDC_scl_i,
  HDMI_DDC_scl_o,
  HDMI_DDC_scl_t,
  HDMI_HPD_tri_i,
  TMDS_clk_p,
  TMDS_clk_n,
  TMDS_data_p,
  TMDS_data_n,
  SPI_0_0_sck_i,
  SPI_0_0_sck_o,
  SPI_0_0_sck_t,
  SPI_0_0_io0_i,
  SPI_0_0_io0_o,
  SPI_0_0_io0_t,
  SPI_0_0_io1_i,
  SPI_0_0_io1_o,
  SPI_0_0_io1_t,
  SPI_0_0_ss_i,
  SPI_0_0_ss_o,
  SPI_0_0_ss1_o,
  SPI_0_0_ss2_o,
  SPI_0_0_ss_t,
  IIC_0_scl_i,
  IIC_0_scl_o,
  IIC_0_scl_t,
  IIC_0_sda_i,
  IIC_0_sda_o,
  IIC_0_sda_t,
  ver,
  sdata_0_out,
  sdata_0_in,
  muten,
  lrclk_out,
  sclk_out,
  VGA_clock,
  VGA_hsync,
  VGA_rgb,
  VGA_vsync,
  TMDS2_clk_p,
  TMDS2_clk_n,
  TMDS2_data_p,
  TMDS2_data_n
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *)
  (* X_INTERFACE_MODE = "master DDR" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *)
  inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *)
  inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *)
  inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *)
  inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *)
  inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *)
  inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *)
  inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *)
  inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *)
  inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *)
  inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *)
  inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *)
  inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *)
  inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *)
  inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *)
  (* X_INTERFACE_MODE = "master FIXED_IO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *)
  inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *)
  inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *)
  inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *)
  inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *)
  inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *)
  inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 HDMI_DDC SDA_I" *)
  (* X_INTERFACE_MODE = "master HDMI_DDC" *)
  input HDMI_DDC_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 HDMI_DDC SDA_O" *)
  output HDMI_DDC_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 HDMI_DDC SDA_T" *)
  output HDMI_DDC_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 HDMI_DDC SCL_I" *)
  input HDMI_DDC_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 HDMI_DDC SCL_O" *)
  output HDMI_DDC_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 HDMI_DDC SCL_T" *)
  output HDMI_DDC_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 HDMI_HPD TRI_I" *)
  (* X_INTERFACE_MODE = "master HDMI_HPD" *)
  input [0:0]HDMI_HPD_tri_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS CLK_P" *)
  (* X_INTERFACE_MODE = "master TMDS" *)
  output TMDS_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS CLK_N" *)
  output TMDS_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS DATA_P" *)
  output [2:0]TMDS_data_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS DATA_N" *)
  output [2:0]TMDS_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_I" *)
  (* X_INTERFACE_MODE = "master SPI_0_0" *)
  input SPI_0_0_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_O" *)
  output SPI_0_0_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_T" *)
  output SPI_0_0_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_I" *)
  input SPI_0_0_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_O" *)
  output SPI_0_0_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_T" *)
  output SPI_0_0_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_I" *)
  input SPI_0_0_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_O" *)
  output SPI_0_0_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_T" *)
  output SPI_0_0_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_I" *)
  input SPI_0_0_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_O" *)
  output SPI_0_0_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS1_O" *)
  output SPI_0_0_ss1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS2_O" *)
  output SPI_0_0_ss2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_T" *)
  output SPI_0_0_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_I" *)
  (* X_INTERFACE_MODE = "master IIC_0" *)
  input IIC_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_O" *)
  output IIC_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_T" *)
  output IIC_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_I" *)
  input IIC_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_O" *)
  output IIC_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_T" *)
  output IIC_0_sda_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]ver;
  (* X_INTERFACE_IGNORE = "true" *)
  output sdata_0_out;
  (* X_INTERFACE_IGNORE = "true" *)
  input sdata_0_in;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]muten;
  (* X_INTERFACE_IGNORE = "true" *)
  output lrclk_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output sclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VGA_CLOCK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.VGA_CLOCK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VGA_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_VGA_clock, INSERT_VIP 0" *)
  input VGA_clock;
  (* X_INTERFACE_IGNORE = "true" *)
  output VGA_hsync;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]VGA_rgb;
  (* X_INTERFACE_IGNORE = "true" *)
  output VGA_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS2_CLK_P CLK" *)
  (* X_INTERFACE_MODE = "master CLK.TMDS2_CLK_P" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS2_CLK_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_rehsd_hdmi_0_0_TMDS2_clk_p, INSERT_VIP 0" *)
  output TMDS2_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS2_CLK_N CLK" *)
  (* X_INTERFACE_MODE = "master CLK.TMDS2_CLK_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS2_CLK_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_rehsd_hdmi_0_0_TMDS2_clk_n, INSERT_VIP 0" *)
  output TMDS2_clk_n;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]TMDS2_data_p;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]TMDS2_data_n;

  // stub module has no contents

endmodule
