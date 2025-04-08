// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Apr  1 09:39:14 2025
// Host        : i14700f-Ubuntu running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pixel_fifo_sim_netlist.v
// Design      : pixel_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pixel_fifo,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_mode = "slave core_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [11:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4094" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4093" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_11 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
md0AksSCeI3fOZtF7nrw91OgSzGoACBon4GH9ENTzaI4jlg22H1uTtXayX2Kz+g4ZH2j52rtMH8H
Xc49HVcThMzO1cRXu+SkL59MRQ87klGca4XtjrTtunJoQ+jyOKRwRBeIMHUdntbk2T1kbXHf9KkB
bNYGEMqSrbiDt7IJUx8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r6CzxR0T3O2wvZRQe25aX3/CWOx/3d/3vJvvS/XsrKr7v852GNQNqCBn+PKsunj0Ncep8DqHtVie
BE6tKIqZW+3txAUjrhSri5liuFWSnzAk+Drsb4RnvIy7BeOdAK6NhVhn8ZyplkJSHVwaGjN8gtPE
LeWEHPHf5qLnzqGKV7B6oIC7POGV6Vamos1p2z1xv2cEw4udvmtZ5EjzeyCMf+omtxEPxhPi6Z2h
ENlGOmuPMkWGMjP6HQCZ1Mi0uiST/zDo29UDIMmOGcsDMe97imU/z2ekKTPXXwjcV+9q+4zHRgJV
6JWWgjU9cztV5OMaEfpBgRBWae/ijWpPZaGuFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
glFrHilvyO7nq7/OYhnyb9uU9d8UNGJruNnkmJWuTpgvyCDmtx7iVKPBPe1Bj9jUDT/HM9AGxvu0
g7b4TuMdVkegkVPeHhw31IW0HoTL8wPnrLEpzDVK+B7xl953hPKPe0vn+0EQh2UKeL5K8VLxmsSv
gbpEeToeR90yzlSUzDE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D4uBhES8Mkd0GCwY2aQOmEzTqz6hO5B9Wa2oyfVBEODkWyt+AHkIXn4tuBN05FcP2FVmgtVbvZX5
K6iog51IoPw5tv+pM5x8+bQBX/aZpf0c4to3qiX6RZuITpuSUWq/7sqQDqtMqDWOFMMnUBpTX+qI
t61NvyIZcfqRWo4yvIUV2Zh1etqYKDlhqRnMoBZKMeHFpVsp19nU4sf5Km7sSlPQ08vYD8qtJqgJ
ZDYC2KWFTHsnT+5anHvc80FgHt4zBHpPrGprgpltQmVmMZxUD6NRC9EvvXf+pBhgfwPHHePWIKUn
elLld/HEVeFw76SlVV8i4LsS4KWWOM+KmMprEg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EW9gHDqS12MVhy+y/xQVscLd4qOim+cNTepYzlas7WzqDJogZthddOuGjpm3a3fS/cMbF/h0O1Hb
Wjow664GIga0y96lkbkcJ3W8x/IGAsvgyrYT6ScsFhyq7tSd1HjvRG81BhhGM1mmpxfzh0Uqbfso
q+uVKPUmPnbQ/Gdu9YRoxmYVJdmUTpXJ5waYOdib8WNMPLdDfIo/FGrYrx2zYQBtpU5DwwVUTMrB
ZasEyxOj++icI5k5lR3Tx+3gdCFTy4XYQfcj2COm4gnVZ8FN/X1/+0ywsVGAc/OKL+mjMYH3NNH3
zfDO/TpYft+HaVl+CfF/U6IgJJeJs4qI4gB4FA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Myfv5Skg7QCxlNBoFiSTLAeIRYS0J0ArRihYk7dGAHZWAFlxJLgqo51W9P9zTVBurMJjZLtonoDJ
19RfxQj5GqhqN1A20s8xOFfLq6+uDG/V39xQFY32O626Kh4MMlH07hNJL5u1NjJWg1yze0XdFEe9
oLwKQz5lSKGMIh+VPXDuCGhShS+KhHwGEdS0lmA/IHPFNlRG1LsK0zQmUiNkG4kQ5OEVkQgvknNC
B6++ZDIYlT9WbZPs5giRY0zAhUepLPaO+N9F3fIBKVGw4ejbZOt0kXKixF86DDfLmF2+dov+PrTX
1MXJaea3YoQdR2c2MSHAk/TTkzg9ayjvxKaXpg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ks9l+EPHXfDNnWd0exs1j0Q9iSNYaIExwQnpsi8TFJimjPtOkX050wFklsLBM83WyfuD+F2KLNnZ
Jg/aiIiGe9o424jOiEFdnAJuzrD0QL9WmhQ3W9iRJ7uPhha6NfR2WGTCCM4TpN8rTKLQDKxenVfv
6x83rnL5NQxvpp9cQh3zMma73qoEJjhTR9MD9cwA4VeKq2u/R0iTWBplX81vYFd9TW2qW5/Qyzzj
A0+pXzczcJKdggV8h8bYcO+PRC3t2XrufhnjvhjMLG2tPHSMW/soDH/v8KorXyWe5N/q12fo5auN
SXr3olNuB5kpiVS3mJAPV0z4UsFfu2A4hLH7MQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e3AJKDEM9byJqwpkFZqMIMKMQPOR1VrLFkshor7HR0C+ol7Uv3XTGyvQrINdBEArX0eazF0cHWjC
9B4BhDnysAhT6SENcNHIYHUGQE7uiF7zgL7WhCxClwEnIAVj+PU9FmqlvbreEikHQfbeIDPyCLii
NAS97RDxWki/MfR33zvZX4eEolA/oTyRzr1MagBs7LN1UXyGPvnze8JzHxA3zHVedIIrBrZxkfoj
Loqe6tLYRlC45h1Yr3Wa2gh3LJGtOSji+m7E9Xua/pPh8A/CAD+TNBa5d/X7C3a4AWl2bYTi7HBY
Y8vaIjHiSosru5F2UOEQG9xekCbNRK1Apew1UIvntzCmDMMhlAgB78AUOE2YEWKd9GOl+aTZjMS3
GxAYzrtv/bDRkPOYbcG0SNT9xf+izRM3lX1E2vN3i3uU2Qrh73fjU1lk3PIe/A/H56UrNPDnGT9W
TvlJR47bLDtGyX2+dLvfTaZGRP8aepePOXXLIlvqwCJSMVhCB/hIbz7E

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TfuXOFQtE7YhtTL4354NvKETmBCLSVnb+pbrT8gtzjU7pERE1Hu2ZVzHgVQXwt5RvwG1R/z2je+U
PzszCBhPNqUaXEhuJ0A/q0S/vvOOa6h6tW9MhiB3gnuqEFVWz5pbHZNfgrwh2gT8XyqLI8f1CoJM
xpcB2TbREV/kAAFMxIfH1Dg0KSO2dCeVV1na6N0AiMOQPvXZOB7QpXwNDbYfarWLtF0/l0hi4Fxu
Kgho2ggrUhajP0aKlrCQ9mLsqOyqJELeJldeD+vuUUqhYq4K4RrwtQF+B67lYc4AjznwQ92tUvYJ
ZspFoHJEScNvdFoHFTA2TQ2KToepsqXRiOCL1A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tmfbBpNtCYJ7zsgNxUzw7Dvn+hNn2PPUBeRfXSci/q2/OcQeF/eAAML8YIN1V+AEoAqZTE2/xRQz
+6zwVOLyAOLynMIBQ7EG7xReDJ9kEEiBjnMGO6NWdAsa/VcreVHrLD1PFtA1+WoVe6yOvNGK+Nbh
HjPkXyycyP6RQ4Rx/PtTxw31LOFVezddSgRlaKHTprKTP4LbjPG//onRBg3fAl8zwU1wYYNLzYCX
jwY7xfMkQyhUSpV2Tx3seqy2IYVl8jjxynFxfyxulvrJiqmc6aaKKBdkoOVbJ5eO2sCXFJB1mKEU
WR2Ee2ozisABzk9IcGILewCW7ghdLP82CRZv4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GfDCxx9db4ripD5mvQy16BVlwPYfeC7ZobZXaX1my6WUDiKwd69J5SreUXKYD9lvZfI7djLgHkYm
5G247T4NX7zoBwc88bUD+tNvGNmzWFfSVVZqu8hjgd31lZXjy9uYdXA/gsE+T+JqEfRYdV8YoGgm
sREyiJjWRPDbx6kc8um8vlAK/Rjwz0EGVkGUoi/+UvxcnjG1PqCl7GSMOQ3gFMEOaxIflShnF2/c
//ioADxl3WjUGyTstMK54XlP8G1Hk95sSe/7Y+SbaIyoG8t6gGDimDJNuGs4JjDUi1V7Gxfzxk9+
O2J++9clyLkMZ3rRyxSvR+Xyrmn3YxjVC68GXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70592)
`pragma protect data_block
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
d/tWQOEHr1xUhU5jWyNCx2ivGLb0JIM9mwY=
`pragma protect end_protected
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
