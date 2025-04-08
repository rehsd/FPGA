//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_fb8b.bd
//Design : bd_fb8b
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_fb8b,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_fb8b,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=52,numReposBlks=40,numNonXlnxBlks=0,numHierBlks=12,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "rehsdZynq_BD_smartconnect_1_0.hwdef" *) 
module bd_fb8b
   (M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid,
    aclk,
    aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK1, DATA_WIDTH 64, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI3, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [3:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [1:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [3:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [1:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [63:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [63:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [7:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK1, DATA_WIDTH 32, FREQ_HZ 200000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 32, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK1, DATA_WIDTH 32, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *) input [2:0]S01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [31:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [3:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK1, DATA_WIDTH 32, FREQ_HZ 200000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 32, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST" *) input [1:0]S02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE" *) input [3:0]S02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN" *) input [7:0]S02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK" *) input [0:0]S02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT" *) input [2:0]S02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS" *) input [3:0]S02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY" *) output S02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE" *) input [2:0]S02_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID" *) input S02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RDATA" *) output [31:0]S02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RLAST" *) output S02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RREADY" *) input S02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RRESP" *) output [1:0]S02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RVALID" *) output S02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK1, DATA_WIDTH 32, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S03_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWBURST" *) input [1:0]S03_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE" *) input [3:0]S03_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLEN" *) input [7:0]S03_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK" *) input [0:0]S03_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT" *) input [2:0]S03_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWQOS" *) input [3:0]S03_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY" *) output S03_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE" *) input [2:0]S03_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID" *) input S03_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BREADY" *) input S03_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BRESP" *) output [1:0]S03_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BVALID" *) output S03_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WDATA" *) input [31:0]S03_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WLAST" *) input S03_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WREADY" *) output S03_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB" *) input [3:0]S03_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WVALID" *) input S03_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF M00_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;

  wire [31:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [3:0]M00_AXI_arlen;
  wire [1:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [3:0]M00_AXI_awlen;
  wire [1:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [63:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [63:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [7:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [31:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [31:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [31:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [31:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [2:0]S02_AXI_arsize;
  wire S02_AXI_arvalid;
  wire [31:0]S02_AXI_rdata;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [31:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire S03_AXI_awready;
  wire [2:0]S03_AXI_awsize;
  wire S03_AXI_awvalid;
  wire S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire S03_AXI_bvalid;
  wire [31:0]S03_AXI_wdata;
  wire S03_AXI_wlast;
  wire S03_AXI_wready;
  wire [3:0]S03_AXI_wstrb;
  wire S03_AXI_wvalid;
  wire [0:0]S_SC_AR_1_INFO;
  wire [141:0]S_SC_AR_1_PAYLD;
  wire [0:0]S_SC_AR_1_RECV;
  wire S_SC_AR_1_REQ;
  wire S_SC_AR_1_SEND;
  wire [0:0]S_SC_AR_2_INFO;
  wire [141:0]S_SC_AR_2_PAYLD;
  wire [0:0]S_SC_AR_2_RECV;
  wire S_SC_AR_2_REQ;
  wire S_SC_AR_2_SEND;
  wire [3:0]S_SC_AR_3_INFO;
  wire [141:0]S_SC_AR_3_PAYLD;
  wire [3:0]S_SC_AR_3_RECV;
  wire [3:0]S_SC_AR_3_REQ;
  wire [3:0]S_SC_AR_3_SEND;
  wire [0:0]S_SC_AW_1_INFO;
  wire [141:0]S_SC_AW_1_PAYLD;
  wire [0:0]S_SC_AW_1_RECV;
  wire S_SC_AW_1_REQ;
  wire S_SC_AW_1_SEND;
  wire [0:0]S_SC_AW_2_INFO;
  wire [141:0]S_SC_AW_2_PAYLD;
  wire [0:0]S_SC_AW_2_RECV;
  wire S_SC_AW_2_REQ;
  wire S_SC_AW_2_SEND;
  wire [3:0]S_SC_AW_3_INFO;
  wire [141:0]S_SC_AW_3_PAYLD;
  wire [3:0]S_SC_AW_3_RECV;
  wire [3:0]S_SC_AW_3_REQ;
  wire [3:0]S_SC_AW_3_SEND;
  wire [0:0]S_SC_B_1_INFO;
  wire [9:0]S_SC_B_1_PAYLD;
  wire [0:0]S_SC_B_1_RECV;
  wire [0:0]S_SC_B_1_REQ;
  wire [0:0]S_SC_B_1_SEND;
  wire [0:0]S_SC_B_2_INFO;
  wire [9:0]S_SC_B_2_PAYLD;
  wire [0:0]S_SC_B_2_RECV;
  wire [0:0]S_SC_B_2_REQ;
  wire [0:0]S_SC_B_2_SEND;
  wire [0:0]S_SC_B_3_INFO;
  wire [9:0]S_SC_B_3_PAYLD;
  wire [0:0]S_SC_B_3_RECV;
  wire S_SC_B_3_REQ;
  wire S_SC_B_3_SEND;
  wire [0:0]S_SC_R_1_INFO;
  wire [87:0]S_SC_R_1_PAYLD;
  wire [0:0]S_SC_R_1_RECV;
  wire [0:0]S_SC_R_1_REQ;
  wire [0:0]S_SC_R_1_SEND;
  wire [0:0]S_SC_R_2_INFO;
  wire [87:0]S_SC_R_2_PAYLD;
  wire [0:0]S_SC_R_2_RECV;
  wire [0:0]S_SC_R_2_REQ;
  wire [0:0]S_SC_R_2_SEND;
  wire [0:0]S_SC_R_3_INFO;
  wire [87:0]S_SC_R_3_PAYLD;
  wire [0:0]S_SC_R_3_RECV;
  wire S_SC_R_3_REQ;
  wire S_SC_R_3_SEND;
  wire [0:0]S_SC_W_1_INFO;
  wire [87:0]S_SC_W_1_PAYLD;
  wire [0:0]S_SC_W_1_RECV;
  wire S_SC_W_1_REQ;
  wire S_SC_W_1_SEND;
  wire [0:0]S_SC_W_2_INFO;
  wire [87:0]S_SC_W_2_PAYLD;
  wire [0:0]S_SC_W_2_RECV;
  wire S_SC_W_2_REQ;
  wire S_SC_W_2_SEND;
  wire [3:0]S_SC_W_3_INFO;
  wire [87:0]S_SC_W_3_PAYLD;
  wire [3:0]S_SC_W_3_RECV;
  wire [3:0]S_SC_W_3_REQ;
  wire [3:0]S_SC_W_3_SEND;
  wire aclk;
  wire aclk_1;
  wire aclk_2;
  wire aclk_3;
  wire aclk_4;
  wire aresetn;
  wire [0:0]aresetn_2;
  wire [0:0]aresetn_3;
  wire [0:0]aresetn_4;
  wire [0:0]aresetn_5;
  wire aresetn_net;
  wire clk_map_M00_ACLK;
  wire [0:0]m00_nodes_M_SC_AR_INFO;
  wire [141:0]m00_nodes_M_SC_AR_PAYLD;
  wire m00_nodes_M_SC_AR_RECV;
  wire [0:0]m00_nodes_M_SC_AR_REQ;
  wire [0:0]m00_nodes_M_SC_AR_SEND;
  wire [0:0]m00_nodes_M_SC_AW_INFO;
  wire [141:0]m00_nodes_M_SC_AW_PAYLD;
  wire m00_nodes_M_SC_AW_RECV;
  wire [0:0]m00_nodes_M_SC_AW_REQ;
  wire [0:0]m00_nodes_M_SC_AW_SEND;
  wire [3:0]m00_nodes_M_SC_B_INFO;
  wire [9:0]m00_nodes_M_SC_B_PAYLD;
  wire [3:0]m00_nodes_M_SC_B_RECV;
  wire [3:0]m00_nodes_M_SC_B_REQ;
  wire [3:0]m00_nodes_M_SC_B_SEND;
  wire [3:0]m00_nodes_M_SC_R_INFO;
  wire [87:0]m00_nodes_M_SC_R_PAYLD;
  wire [3:0]m00_nodes_M_SC_R_RECV;
  wire [3:0]m00_nodes_M_SC_R_REQ;
  wire [3:0]m00_nodes_M_SC_R_SEND;
  wire [0:0]m00_nodes_M_SC_W_INFO;
  wire [87:0]m00_nodes_M_SC_W_PAYLD;
  wire m00_nodes_M_SC_W_RECV;
  wire [0:0]m00_nodes_M_SC_W_REQ;
  wire [0:0]m00_nodes_M_SC_W_SEND;
  wire [31:0]m00_sc2axi_M_AXI_ARADDR;
  wire [3:0]m00_sc2axi_M_AXI_ARCACHE;
  wire [2:0]m00_sc2axi_M_AXI_ARID;
  wire [7:0]m00_sc2axi_M_AXI_ARLEN;
  wire [0:0]m00_sc2axi_M_AXI_ARLOCK;
  wire [2:0]m00_sc2axi_M_AXI_ARPROT;
  wire [3:0]m00_sc2axi_M_AXI_ARQOS;
  wire m00_sc2axi_M_AXI_ARREADY;
  wire [1023:0]m00_sc2axi_M_AXI_ARUSER;
  wire m00_sc2axi_M_AXI_ARVALID;
  wire [31:0]m00_sc2axi_M_AXI_AWADDR;
  wire [3:0]m00_sc2axi_M_AXI_AWCACHE;
  wire [2:0]m00_sc2axi_M_AXI_AWID;
  wire [7:0]m00_sc2axi_M_AXI_AWLEN;
  wire [0:0]m00_sc2axi_M_AXI_AWLOCK;
  wire [2:0]m00_sc2axi_M_AXI_AWPROT;
  wire [3:0]m00_sc2axi_M_AXI_AWQOS;
  wire m00_sc2axi_M_AXI_AWREADY;
  wire [1023:0]m00_sc2axi_M_AXI_AWUSER;
  wire m00_sc2axi_M_AXI_AWVALID;
  wire [2:0]m00_sc2axi_M_AXI_BID;
  wire m00_sc2axi_M_AXI_BREADY;
  wire [1:0]m00_sc2axi_M_AXI_BRESP;
  wire [1023:0]m00_sc2axi_M_AXI_BUSER;
  wire m00_sc2axi_M_AXI_BVALID;
  wire [63:0]m00_sc2axi_M_AXI_RDATA;
  wire [2:0]m00_sc2axi_M_AXI_RID;
  wire m00_sc2axi_M_AXI_RLAST;
  wire m00_sc2axi_M_AXI_RREADY;
  wire [1:0]m00_sc2axi_M_AXI_RRESP;
  wire [1023:0]m00_sc2axi_M_AXI_RUSER;
  wire m00_sc2axi_M_AXI_RVALID;
  wire [63:0]m00_sc2axi_M_AXI_WDATA;
  wire m00_sc2axi_M_AXI_WLAST;
  wire m00_sc2axi_M_AXI_WREADY;
  wire [7:0]m00_sc2axi_M_AXI_WSTRB;
  wire [1023:0]m00_sc2axi_M_AXI_WUSER;
  wire m00_sc2axi_M_AXI_WVALID;
  wire [0:0]m_axi_aresetn_1;
  wire [31:0]s00_entry_pipeline_m_axi_ARADDR;
  wire [3:0]s00_entry_pipeline_m_axi_ARCACHE;
  wire [2:0]s00_entry_pipeline_m_axi_ARID;
  wire [7:0]s00_entry_pipeline_m_axi_ARLEN;
  wire [0:0]s00_entry_pipeline_m_axi_ARLOCK;
  wire [2:0]s00_entry_pipeline_m_axi_ARPROT;
  wire [3:0]s00_entry_pipeline_m_axi_ARQOS;
  wire s00_entry_pipeline_m_axi_ARREADY;
  wire [1023:0]s00_entry_pipeline_m_axi_ARUSER;
  wire s00_entry_pipeline_m_axi_ARVALID;
  wire [31:0]s00_entry_pipeline_m_axi_RDATA;
  wire [2:0]s00_entry_pipeline_m_axi_RID;
  wire s00_entry_pipeline_m_axi_RLAST;
  wire s00_entry_pipeline_m_axi_RREADY;
  wire [1:0]s00_entry_pipeline_m_axi_RRESP;
  wire [1023:0]s00_entry_pipeline_m_axi_RUSER;
  wire s00_entry_pipeline_m_axi_RVALID;
  wire [0:0]s00_nodes_M_SC_AR_INFO;
  wire [141:0]s00_nodes_M_SC_AR_PAYLD;
  wire [0:0]s00_nodes_M_SC_AR_RECV;
  wire [0:0]s00_nodes_M_SC_AR_REQ;
  wire [0:0]s00_nodes_M_SC_AR_SEND;
  wire [0:0]s00_nodes_M_SC_R_INFO;
  wire [87:0]s00_nodes_M_SC_R_PAYLD;
  wire s00_nodes_M_SC_R_RECV;
  wire [0:0]s00_nodes_M_SC_R_REQ;
  wire [0:0]s00_nodes_M_SC_R_SEND;
  wire [31:0]s01_entry_pipeline_m_axi_AWADDR;
  wire [3:0]s01_entry_pipeline_m_axi_AWCACHE;
  wire [2:0]s01_entry_pipeline_m_axi_AWID;
  wire [7:0]s01_entry_pipeline_m_axi_AWLEN;
  wire [0:0]s01_entry_pipeline_m_axi_AWLOCK;
  wire [2:0]s01_entry_pipeline_m_axi_AWPROT;
  wire [3:0]s01_entry_pipeline_m_axi_AWQOS;
  wire s01_entry_pipeline_m_axi_AWREADY;
  wire [1023:0]s01_entry_pipeline_m_axi_AWUSER;
  wire s01_entry_pipeline_m_axi_AWVALID;
  wire [2:0]s01_entry_pipeline_m_axi_BID;
  wire s01_entry_pipeline_m_axi_BREADY;
  wire [1:0]s01_entry_pipeline_m_axi_BRESP;
  wire [1023:0]s01_entry_pipeline_m_axi_BUSER;
  wire s01_entry_pipeline_m_axi_BVALID;
  wire [31:0]s01_entry_pipeline_m_axi_WDATA;
  wire s01_entry_pipeline_m_axi_WLAST;
  wire s01_entry_pipeline_m_axi_WREADY;
  wire [3:0]s01_entry_pipeline_m_axi_WSTRB;
  wire [1023:0]s01_entry_pipeline_m_axi_WUSER;
  wire s01_entry_pipeline_m_axi_WVALID;
  wire [0:0]s01_nodes_M_SC_AW_INFO;
  wire [141:0]s01_nodes_M_SC_AW_PAYLD;
  wire [0:0]s01_nodes_M_SC_AW_RECV;
  wire [0:0]s01_nodes_M_SC_AW_REQ;
  wire [0:0]s01_nodes_M_SC_AW_SEND;
  wire [0:0]s01_nodes_M_SC_B_INFO;
  wire [9:0]s01_nodes_M_SC_B_PAYLD;
  wire s01_nodes_M_SC_B_RECV;
  wire [0:0]s01_nodes_M_SC_B_REQ;
  wire [0:0]s01_nodes_M_SC_B_SEND;
  wire [0:0]s01_nodes_M_SC_W_INFO;
  wire [87:0]s01_nodes_M_SC_W_PAYLD;
  wire [0:0]s01_nodes_M_SC_W_RECV;
  wire [0:0]s01_nodes_M_SC_W_REQ;
  wire [0:0]s01_nodes_M_SC_W_SEND;
  wire [31:0]s02_entry_pipeline_m_axi_ARADDR;
  wire [3:0]s02_entry_pipeline_m_axi_ARCACHE;
  wire [2:0]s02_entry_pipeline_m_axi_ARID;
  wire [7:0]s02_entry_pipeline_m_axi_ARLEN;
  wire [0:0]s02_entry_pipeline_m_axi_ARLOCK;
  wire [2:0]s02_entry_pipeline_m_axi_ARPROT;
  wire [3:0]s02_entry_pipeline_m_axi_ARQOS;
  wire s02_entry_pipeline_m_axi_ARREADY;
  wire [1023:0]s02_entry_pipeline_m_axi_ARUSER;
  wire s02_entry_pipeline_m_axi_ARVALID;
  wire [31:0]s02_entry_pipeline_m_axi_RDATA;
  wire [2:0]s02_entry_pipeline_m_axi_RID;
  wire s02_entry_pipeline_m_axi_RLAST;
  wire s02_entry_pipeline_m_axi_RREADY;
  wire [1:0]s02_entry_pipeline_m_axi_RRESP;
  wire [1023:0]s02_entry_pipeline_m_axi_RUSER;
  wire s02_entry_pipeline_m_axi_RVALID;
  wire [0:0]s02_nodes_M_SC_AR_INFO;
  wire [141:0]s02_nodes_M_SC_AR_PAYLD;
  wire [0:0]s02_nodes_M_SC_AR_RECV;
  wire [0:0]s02_nodes_M_SC_AR_REQ;
  wire [0:0]s02_nodes_M_SC_AR_SEND;
  wire [0:0]s02_nodes_M_SC_R_INFO;
  wire [87:0]s02_nodes_M_SC_R_PAYLD;
  wire s02_nodes_M_SC_R_RECV;
  wire [0:0]s02_nodes_M_SC_R_REQ;
  wire [0:0]s02_nodes_M_SC_R_SEND;
  wire [31:0]s03_entry_pipeline_m_axi_AWADDR;
  wire [3:0]s03_entry_pipeline_m_axi_AWCACHE;
  wire [2:0]s03_entry_pipeline_m_axi_AWID;
  wire [7:0]s03_entry_pipeline_m_axi_AWLEN;
  wire [0:0]s03_entry_pipeline_m_axi_AWLOCK;
  wire [2:0]s03_entry_pipeline_m_axi_AWPROT;
  wire [3:0]s03_entry_pipeline_m_axi_AWQOS;
  wire s03_entry_pipeline_m_axi_AWREADY;
  wire [1023:0]s03_entry_pipeline_m_axi_AWUSER;
  wire s03_entry_pipeline_m_axi_AWVALID;
  wire [2:0]s03_entry_pipeline_m_axi_BID;
  wire s03_entry_pipeline_m_axi_BREADY;
  wire [1:0]s03_entry_pipeline_m_axi_BRESP;
  wire [1023:0]s03_entry_pipeline_m_axi_BUSER;
  wire s03_entry_pipeline_m_axi_BVALID;
  wire [31:0]s03_entry_pipeline_m_axi_WDATA;
  wire s03_entry_pipeline_m_axi_WLAST;
  wire s03_entry_pipeline_m_axi_WREADY;
  wire [3:0]s03_entry_pipeline_m_axi_WSTRB;
  wire [1023:0]s03_entry_pipeline_m_axi_WUSER;
  wire s03_entry_pipeline_m_axi_WVALID;
  wire [0:0]s03_nodes_M_SC_AW_INFO;
  wire [141:0]s03_nodes_M_SC_AW_PAYLD;
  wire [0:0]s03_nodes_M_SC_AW_RECV;
  wire [0:0]s03_nodes_M_SC_AW_REQ;
  wire [0:0]s03_nodes_M_SC_AW_SEND;
  wire [0:0]s03_nodes_M_SC_B_INFO;
  wire [9:0]s03_nodes_M_SC_B_PAYLD;
  wire s03_nodes_M_SC_B_RECV;
  wire [0:0]s03_nodes_M_SC_B_REQ;
  wire [0:0]s03_nodes_M_SC_B_SEND;
  wire [0:0]s03_nodes_M_SC_W_INFO;
  wire [87:0]s03_nodes_M_SC_W_PAYLD;
  wire [0:0]s03_nodes_M_SC_W_RECV;
  wire [0:0]s03_nodes_M_SC_W_REQ;
  wire [0:0]s03_nodes_M_SC_W_SEND;
  wire swbd_aclk_net;
  wire [0:0]swbd_aresetn_net;

  clk_map_imp_1K79LYC clk_map
       (.M00_ACLK(clk_map_M00_ACLK),
        .M00_ARESETN(m_axi_aresetn_1),
        .S00_ACLK(aclk_1),
        .S00_ARESETN(aresetn_2),
        .S01_ACLK(aclk_2),
        .S01_ARESETN(aresetn_3),
        .S02_ACLK(aclk_3),
        .S02_ARESETN(aresetn_4),
        .S03_ACLK(aclk_4),
        .S03_ARESETN(aresetn_5),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_out(aresetn_net),
        .swbd_aclk(swbd_aclk_net),
        .swbd_aresetn(swbd_aresetn_net));
  m00_exit_pipeline_imp_DWQCHR m00_exit_pipeline
       (.aclk(clk_map_M00_ACLK),
        .aresetn(m_axi_aresetn_1),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arburst(M00_AXI_arburst),
        .m_axi_arcache(M00_AXI_arcache),
        .m_axi_arlen(M00_AXI_arlen),
        .m_axi_arlock(M00_AXI_arlock),
        .m_axi_arprot(M00_AXI_arprot),
        .m_axi_arqos(M00_AXI_arqos),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arsize(M00_AXI_arsize),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awburst(M00_AXI_awburst),
        .m_axi_awcache(M00_AXI_awcache),
        .m_axi_awlen(M00_AXI_awlen),
        .m_axi_awlock(M00_AXI_awlock),
        .m_axi_awprot(M00_AXI_awprot),
        .m_axi_awqos(M00_AXI_awqos),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awsize(M00_AXI_awsize),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rlast(M00_AXI_rlast),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wlast(M00_AXI_wlast),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_araddr(m00_sc2axi_M_AXI_ARADDR),
        .s_axi_arcache(m00_sc2axi_M_AXI_ARCACHE),
        .s_axi_arid(m00_sc2axi_M_AXI_ARID),
        .s_axi_arlen(m00_sc2axi_M_AXI_ARLEN),
        .s_axi_arlock(m00_sc2axi_M_AXI_ARLOCK),
        .s_axi_arprot(m00_sc2axi_M_AXI_ARPROT),
        .s_axi_arqos(m00_sc2axi_M_AXI_ARQOS),
        .s_axi_arready(m00_sc2axi_M_AXI_ARREADY),
        .s_axi_aruser(m00_sc2axi_M_AXI_ARUSER),
        .s_axi_arvalid(m00_sc2axi_M_AXI_ARVALID),
        .s_axi_awaddr(m00_sc2axi_M_AXI_AWADDR),
        .s_axi_awcache(m00_sc2axi_M_AXI_AWCACHE),
        .s_axi_awid(m00_sc2axi_M_AXI_AWID),
        .s_axi_awlen(m00_sc2axi_M_AXI_AWLEN),
        .s_axi_awlock(m00_sc2axi_M_AXI_AWLOCK),
        .s_axi_awprot(m00_sc2axi_M_AXI_AWPROT),
        .s_axi_awqos(m00_sc2axi_M_AXI_AWQOS),
        .s_axi_awready(m00_sc2axi_M_AXI_AWREADY),
        .s_axi_awuser(m00_sc2axi_M_AXI_AWUSER),
        .s_axi_awvalid(m00_sc2axi_M_AXI_AWVALID),
        .s_axi_bid(m00_sc2axi_M_AXI_BID),
        .s_axi_bready(m00_sc2axi_M_AXI_BREADY),
        .s_axi_bresp(m00_sc2axi_M_AXI_BRESP),
        .s_axi_buser(m00_sc2axi_M_AXI_BUSER),
        .s_axi_bvalid(m00_sc2axi_M_AXI_BVALID),
        .s_axi_rdata(m00_sc2axi_M_AXI_RDATA),
        .s_axi_rid(m00_sc2axi_M_AXI_RID),
        .s_axi_rlast(m00_sc2axi_M_AXI_RLAST),
        .s_axi_rready(m00_sc2axi_M_AXI_RREADY),
        .s_axi_rresp(m00_sc2axi_M_AXI_RRESP),
        .s_axi_ruser(m00_sc2axi_M_AXI_RUSER),
        .s_axi_rvalid(m00_sc2axi_M_AXI_RVALID),
        .s_axi_wdata(m00_sc2axi_M_AXI_WDATA),
        .s_axi_wlast(m00_sc2axi_M_AXI_WLAST),
        .s_axi_wready(m00_sc2axi_M_AXI_WREADY),
        .s_axi_wstrb(m00_sc2axi_M_AXI_WSTRB),
        .s_axi_wuser(m00_sc2axi_M_AXI_WUSER),
        .s_axi_wvalid(m00_sc2axi_M_AXI_WVALID));
  m00_nodes_imp_R7OQS3 m00_nodes
       (.M_SC_AR_info(m00_nodes_M_SC_AR_INFO),
        .M_SC_AR_payld(m00_nodes_M_SC_AR_PAYLD),
        .M_SC_AR_recv(m00_nodes_M_SC_AR_RECV),
        .M_SC_AR_req(m00_nodes_M_SC_AR_REQ),
        .M_SC_AR_send(m00_nodes_M_SC_AR_SEND),
        .M_SC_AW_info(m00_nodes_M_SC_AW_INFO),
        .M_SC_AW_payld(m00_nodes_M_SC_AW_PAYLD),
        .M_SC_AW_recv(m00_nodes_M_SC_AW_RECV),
        .M_SC_AW_req(m00_nodes_M_SC_AW_REQ),
        .M_SC_AW_send(m00_nodes_M_SC_AW_SEND),
        .M_SC_B_info(m00_nodes_M_SC_B_INFO),
        .M_SC_B_payld(m00_nodes_M_SC_B_PAYLD),
        .M_SC_B_recv(m00_nodes_M_SC_B_RECV),
        .M_SC_B_req(m00_nodes_M_SC_B_REQ),
        .M_SC_B_send(m00_nodes_M_SC_B_SEND),
        .M_SC_R_info(m00_nodes_M_SC_R_INFO),
        .M_SC_R_payld(m00_nodes_M_SC_R_PAYLD),
        .M_SC_R_recv(m00_nodes_M_SC_R_RECV),
        .M_SC_R_req(m00_nodes_M_SC_R_REQ),
        .M_SC_R_send(m00_nodes_M_SC_R_SEND),
        .M_SC_W_info(m00_nodes_M_SC_W_INFO),
        .M_SC_W_payld(m00_nodes_M_SC_W_PAYLD),
        .M_SC_W_recv(m00_nodes_M_SC_W_RECV),
        .M_SC_W_req(m00_nodes_M_SC_W_REQ),
        .M_SC_W_send(m00_nodes_M_SC_W_SEND),
        .S_SC_AR_info(S_SC_AR_3_INFO),
        .S_SC_AR_payld(S_SC_AR_3_PAYLD),
        .S_SC_AR_recv(S_SC_AR_3_RECV),
        .S_SC_AR_req(S_SC_AR_3_REQ),
        .S_SC_AR_send(S_SC_AR_3_SEND),
        .S_SC_AW_info(S_SC_AW_3_INFO),
        .S_SC_AW_payld(S_SC_AW_3_PAYLD),
        .S_SC_AW_recv(S_SC_AW_3_RECV),
        .S_SC_AW_req(S_SC_AW_3_REQ),
        .S_SC_AW_send(S_SC_AW_3_SEND),
        .S_SC_B_info(S_SC_B_3_INFO),
        .S_SC_B_payld(S_SC_B_3_PAYLD),
        .S_SC_B_recv(S_SC_B_3_RECV),
        .S_SC_B_req(S_SC_B_3_REQ),
        .S_SC_B_send(S_SC_B_3_SEND),
        .S_SC_R_info(S_SC_R_3_INFO),
        .S_SC_R_payld(S_SC_R_3_PAYLD),
        .S_SC_R_recv(S_SC_R_3_RECV),
        .S_SC_R_req(S_SC_R_3_REQ),
        .S_SC_R_send(S_SC_R_3_SEND),
        .S_SC_W_info(S_SC_W_3_INFO),
        .S_SC_W_payld(S_SC_W_3_PAYLD),
        .S_SC_W_recv(S_SC_W_3_RECV),
        .S_SC_W_req(S_SC_W_3_REQ),
        .S_SC_W_send(S_SC_W_3_SEND),
        .m_axi_aclk(clk_map_M00_ACLK),
        .m_axi_aresetn(m_axi_aresetn_1),
        .s_axi_aclk(swbd_aclk_net),
        .s_axi_aresetn(swbd_aresetn_net));
  bd_fb8b_m00s2a_0 m00_sc2axi
       (.aclk(clk_map_M00_ACLK),
        .m_axi_araddr(m00_sc2axi_M_AXI_ARADDR),
        .m_axi_arcache(m00_sc2axi_M_AXI_ARCACHE),
        .m_axi_arid(m00_sc2axi_M_AXI_ARID),
        .m_axi_arlen(m00_sc2axi_M_AXI_ARLEN),
        .m_axi_arlock(m00_sc2axi_M_AXI_ARLOCK),
        .m_axi_arprot(m00_sc2axi_M_AXI_ARPROT),
        .m_axi_arqos(m00_sc2axi_M_AXI_ARQOS),
        .m_axi_arready(m00_sc2axi_M_AXI_ARREADY),
        .m_axi_aruser(m00_sc2axi_M_AXI_ARUSER),
        .m_axi_arvalid(m00_sc2axi_M_AXI_ARVALID),
        .m_axi_awaddr(m00_sc2axi_M_AXI_AWADDR),
        .m_axi_awcache(m00_sc2axi_M_AXI_AWCACHE),
        .m_axi_awid(m00_sc2axi_M_AXI_AWID),
        .m_axi_awlen(m00_sc2axi_M_AXI_AWLEN),
        .m_axi_awlock(m00_sc2axi_M_AXI_AWLOCK),
        .m_axi_awprot(m00_sc2axi_M_AXI_AWPROT),
        .m_axi_awqos(m00_sc2axi_M_AXI_AWQOS),
        .m_axi_awready(m00_sc2axi_M_AXI_AWREADY),
        .m_axi_awuser(m00_sc2axi_M_AXI_AWUSER),
        .m_axi_awvalid(m00_sc2axi_M_AXI_AWVALID),
        .m_axi_bid(m00_sc2axi_M_AXI_BID),
        .m_axi_bready(m00_sc2axi_M_AXI_BREADY),
        .m_axi_bresp(m00_sc2axi_M_AXI_BRESP),
        .m_axi_buser(m00_sc2axi_M_AXI_BUSER),
        .m_axi_bvalid(m00_sc2axi_M_AXI_BVALID),
        .m_axi_rdata(m00_sc2axi_M_AXI_RDATA),
        .m_axi_rid(m00_sc2axi_M_AXI_RID),
        .m_axi_rlast(m00_sc2axi_M_AXI_RLAST),
        .m_axi_rready(m00_sc2axi_M_AXI_RREADY),
        .m_axi_rresp(m00_sc2axi_M_AXI_RRESP),
        .m_axi_ruser(m00_sc2axi_M_AXI_RUSER),
        .m_axi_rvalid(m00_sc2axi_M_AXI_RVALID),
        .m_axi_wdata(m00_sc2axi_M_AXI_WDATA),
        .m_axi_wlast(m00_sc2axi_M_AXI_WLAST),
        .m_axi_wready(m00_sc2axi_M_AXI_WREADY),
        .m_axi_wstrb(m00_sc2axi_M_AXI_WSTRB),
        .m_axi_wuser(m00_sc2axi_M_AXI_WUSER),
        .m_axi_wvalid(m00_sc2axi_M_AXI_WVALID),
        .m_sc_b_info(S_SC_B_3_INFO),
        .m_sc_b_payld(S_SC_B_3_PAYLD),
        .m_sc_b_recv(S_SC_B_3_RECV),
        .m_sc_b_req(S_SC_B_3_REQ),
        .m_sc_b_send(S_SC_B_3_SEND),
        .m_sc_r_info(S_SC_R_3_INFO),
        .m_sc_r_payld(S_SC_R_3_PAYLD),
        .m_sc_r_recv(S_SC_R_3_RECV),
        .m_sc_r_req(S_SC_R_3_REQ),
        .m_sc_r_send(S_SC_R_3_SEND),
        .s_sc_ar_info(m00_nodes_M_SC_AR_INFO),
        .s_sc_ar_payld(m00_nodes_M_SC_AR_PAYLD),
        .s_sc_ar_recv(m00_nodes_M_SC_AR_RECV),
        .s_sc_ar_req(m00_nodes_M_SC_AR_REQ),
        .s_sc_ar_send(m00_nodes_M_SC_AR_SEND),
        .s_sc_aw_info(m00_nodes_M_SC_AW_INFO),
        .s_sc_aw_payld(m00_nodes_M_SC_AW_PAYLD),
        .s_sc_aw_recv(m00_nodes_M_SC_AW_RECV),
        .s_sc_aw_req(m00_nodes_M_SC_AW_REQ),
        .s_sc_aw_send(m00_nodes_M_SC_AW_SEND),
        .s_sc_w_info(m00_nodes_M_SC_W_INFO),
        .s_sc_w_payld(m00_nodes_M_SC_W_PAYLD),
        .s_sc_w_recv(m00_nodes_M_SC_W_RECV),
        .s_sc_w_req(m00_nodes_M_SC_W_REQ),
        .s_sc_w_send(m00_nodes_M_SC_W_SEND));
  bd_fb8b_s00a2s_0 s00_axi2sc
       (.aclk(aclk_1),
        .m_sc_ar_info(S_SC_AR_1_INFO),
        .m_sc_ar_payld(S_SC_AR_1_PAYLD),
        .m_sc_ar_recv(S_SC_AR_1_RECV),
        .m_sc_ar_req(S_SC_AR_1_REQ),
        .m_sc_ar_send(S_SC_AR_1_SEND),
        .s_axi_araddr(s00_entry_pipeline_m_axi_ARADDR),
        .s_axi_arcache(s00_entry_pipeline_m_axi_ARCACHE),
        .s_axi_arid(s00_entry_pipeline_m_axi_ARID),
        .s_axi_arlen(s00_entry_pipeline_m_axi_ARLEN),
        .s_axi_arlock(s00_entry_pipeline_m_axi_ARLOCK),
        .s_axi_arprot(s00_entry_pipeline_m_axi_ARPROT),
        .s_axi_arqos(s00_entry_pipeline_m_axi_ARQOS),
        .s_axi_arready(s00_entry_pipeline_m_axi_ARREADY),
        .s_axi_aruser(s00_entry_pipeline_m_axi_ARUSER),
        .s_axi_arvalid(s00_entry_pipeline_m_axi_ARVALID),
        .s_axi_rdata(s00_entry_pipeline_m_axi_RDATA),
        .s_axi_rid(s00_entry_pipeline_m_axi_RID),
        .s_axi_rlast(s00_entry_pipeline_m_axi_RLAST),
        .s_axi_rready(s00_entry_pipeline_m_axi_RREADY),
        .s_axi_rresp(s00_entry_pipeline_m_axi_RRESP),
        .s_axi_ruser(s00_entry_pipeline_m_axi_RUSER),
        .s_axi_rvalid(s00_entry_pipeline_m_axi_RVALID),
        .s_sc_r_info(s00_nodes_M_SC_R_INFO),
        .s_sc_r_payld(s00_nodes_M_SC_R_PAYLD),
        .s_sc_r_recv(s00_nodes_M_SC_R_RECV),
        .s_sc_r_req(s00_nodes_M_SC_R_REQ),
        .s_sc_r_send(s00_nodes_M_SC_R_SEND));
  s00_entry_pipeline_imp_1D4CJI4 s00_entry_pipeline
       (.aclk(aclk_1),
        .aresetn(aresetn_2),
        .m_axi_araddr(s00_entry_pipeline_m_axi_ARADDR),
        .m_axi_arcache(s00_entry_pipeline_m_axi_ARCACHE),
        .m_axi_arid(s00_entry_pipeline_m_axi_ARID),
        .m_axi_arlen(s00_entry_pipeline_m_axi_ARLEN),
        .m_axi_arlock(s00_entry_pipeline_m_axi_ARLOCK),
        .m_axi_arprot(s00_entry_pipeline_m_axi_ARPROT),
        .m_axi_arqos(s00_entry_pipeline_m_axi_ARQOS),
        .m_axi_arready(s00_entry_pipeline_m_axi_ARREADY),
        .m_axi_aruser(s00_entry_pipeline_m_axi_ARUSER),
        .m_axi_arvalid(s00_entry_pipeline_m_axi_ARVALID),
        .m_axi_rdata(s00_entry_pipeline_m_axi_RDATA),
        .m_axi_rid(s00_entry_pipeline_m_axi_RID),
        .m_axi_rlast(s00_entry_pipeline_m_axi_RLAST),
        .m_axi_rready(s00_entry_pipeline_m_axi_RREADY),
        .m_axi_rresp(s00_entry_pipeline_m_axi_RRESP),
        .m_axi_ruser(s00_entry_pipeline_m_axi_RUSER),
        .m_axi_rvalid(s00_entry_pipeline_m_axi_RVALID),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arburst(S00_AXI_arburst),
        .s_axi_arcache(S00_AXI_arcache),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arlock(S00_AXI_arlock),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arqos(S00_AXI_arqos),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arsize(S00_AXI_arsize),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid));
  s00_nodes_imp_19P2VFQ s00_nodes
       (.M_SC_AR_info(s00_nodes_M_SC_AR_INFO),
        .M_SC_AR_payld(s00_nodes_M_SC_AR_PAYLD),
        .M_SC_AR_recv(s00_nodes_M_SC_AR_RECV),
        .M_SC_AR_req(s00_nodes_M_SC_AR_REQ),
        .M_SC_AR_send(s00_nodes_M_SC_AR_SEND),
        .M_SC_R_info(s00_nodes_M_SC_R_INFO),
        .M_SC_R_payld(s00_nodes_M_SC_R_PAYLD),
        .M_SC_R_recv(s00_nodes_M_SC_R_RECV),
        .M_SC_R_req(s00_nodes_M_SC_R_REQ),
        .M_SC_R_send(s00_nodes_M_SC_R_SEND),
        .S_SC_AR_info(S_SC_AR_1_INFO),
        .S_SC_AR_payld(S_SC_AR_1_PAYLD),
        .S_SC_AR_recv(S_SC_AR_1_RECV),
        .S_SC_AR_req(S_SC_AR_1_REQ),
        .S_SC_AR_send(S_SC_AR_1_SEND),
        .S_SC_R_info(S_SC_R_1_INFO),
        .S_SC_R_payld(S_SC_R_1_PAYLD),
        .S_SC_R_recv(S_SC_R_1_RECV),
        .S_SC_R_req(S_SC_R_1_REQ),
        .S_SC_R_send(S_SC_R_1_SEND),
        .m_sc_clk(swbd_aclk_net),
        .m_sc_resetn(swbd_aresetn_net),
        .s_sc_clk(aclk_1),
        .s_sc_resetn(aresetn_2));
  bd_fb8b_s01a2s_0 s01_axi2sc
       (.aclk(aclk_2),
        .m_sc_aw_info(S_SC_AW_1_INFO),
        .m_sc_aw_payld(S_SC_AW_1_PAYLD),
        .m_sc_aw_recv(S_SC_AW_1_RECV),
        .m_sc_aw_req(S_SC_AW_1_REQ),
        .m_sc_aw_send(S_SC_AW_1_SEND),
        .m_sc_w_info(S_SC_W_1_INFO),
        .m_sc_w_payld(S_SC_W_1_PAYLD),
        .m_sc_w_recv(S_SC_W_1_RECV),
        .m_sc_w_req(S_SC_W_1_REQ),
        .m_sc_w_send(S_SC_W_1_SEND),
        .s_axi_awaddr(s01_entry_pipeline_m_axi_AWADDR),
        .s_axi_awcache(s01_entry_pipeline_m_axi_AWCACHE),
        .s_axi_awid(s01_entry_pipeline_m_axi_AWID),
        .s_axi_awlen(s01_entry_pipeline_m_axi_AWLEN),
        .s_axi_awlock(s01_entry_pipeline_m_axi_AWLOCK),
        .s_axi_awprot(s01_entry_pipeline_m_axi_AWPROT),
        .s_axi_awqos(s01_entry_pipeline_m_axi_AWQOS),
        .s_axi_awready(s01_entry_pipeline_m_axi_AWREADY),
        .s_axi_awuser(s01_entry_pipeline_m_axi_AWUSER),
        .s_axi_awvalid(s01_entry_pipeline_m_axi_AWVALID),
        .s_axi_bid(s01_entry_pipeline_m_axi_BID),
        .s_axi_bready(s01_entry_pipeline_m_axi_BREADY),
        .s_axi_bresp(s01_entry_pipeline_m_axi_BRESP),
        .s_axi_buser(s01_entry_pipeline_m_axi_BUSER),
        .s_axi_bvalid(s01_entry_pipeline_m_axi_BVALID),
        .s_axi_wdata(s01_entry_pipeline_m_axi_WDATA),
        .s_axi_wlast(s01_entry_pipeline_m_axi_WLAST),
        .s_axi_wready(s01_entry_pipeline_m_axi_WREADY),
        .s_axi_wstrb(s01_entry_pipeline_m_axi_WSTRB),
        .s_axi_wuser(s01_entry_pipeline_m_axi_WUSER),
        .s_axi_wvalid(s01_entry_pipeline_m_axi_WVALID),
        .s_sc_b_info(s01_nodes_M_SC_B_INFO),
        .s_sc_b_payld(s01_nodes_M_SC_B_PAYLD),
        .s_sc_b_recv(s01_nodes_M_SC_B_RECV),
        .s_sc_b_req(s01_nodes_M_SC_B_REQ),
        .s_sc_b_send(s01_nodes_M_SC_B_SEND));
  s01_entry_pipeline_imp_BSC2G8 s01_entry_pipeline
       (.aclk(aclk_2),
        .aresetn(aresetn_3),
        .m_axi_awaddr(s01_entry_pipeline_m_axi_AWADDR),
        .m_axi_awcache(s01_entry_pipeline_m_axi_AWCACHE),
        .m_axi_awid(s01_entry_pipeline_m_axi_AWID),
        .m_axi_awlen(s01_entry_pipeline_m_axi_AWLEN),
        .m_axi_awlock(s01_entry_pipeline_m_axi_AWLOCK),
        .m_axi_awprot(s01_entry_pipeline_m_axi_AWPROT),
        .m_axi_awqos(s01_entry_pipeline_m_axi_AWQOS),
        .m_axi_awready(s01_entry_pipeline_m_axi_AWREADY),
        .m_axi_awuser(s01_entry_pipeline_m_axi_AWUSER),
        .m_axi_awvalid(s01_entry_pipeline_m_axi_AWVALID),
        .m_axi_bid(s01_entry_pipeline_m_axi_BID),
        .m_axi_bready(s01_entry_pipeline_m_axi_BREADY),
        .m_axi_bresp(s01_entry_pipeline_m_axi_BRESP),
        .m_axi_buser(s01_entry_pipeline_m_axi_BUSER),
        .m_axi_bvalid(s01_entry_pipeline_m_axi_BVALID),
        .m_axi_wdata(s01_entry_pipeline_m_axi_WDATA),
        .m_axi_wlast(s01_entry_pipeline_m_axi_WLAST),
        .m_axi_wready(s01_entry_pipeline_m_axi_WREADY),
        .m_axi_wstrb(s01_entry_pipeline_m_axi_WSTRB),
        .m_axi_wuser(s01_entry_pipeline_m_axi_WUSER),
        .m_axi_wvalid(s01_entry_pipeline_m_axi_WVALID),
        .s_axi_awaddr(S01_AXI_awaddr),
        .s_axi_awburst(S01_AXI_awburst),
        .s_axi_awcache(S01_AXI_awcache),
        .s_axi_awlen(S01_AXI_awlen),
        .s_axi_awlock(S01_AXI_awlock),
        .s_axi_awprot(S01_AXI_awprot),
        .s_axi_awqos(S01_AXI_awqos),
        .s_axi_awready(S01_AXI_awready),
        .s_axi_awsize(S01_AXI_awsize),
        .s_axi_awvalid(S01_AXI_awvalid),
        .s_axi_bready(S01_AXI_bready),
        .s_axi_bresp(S01_AXI_bresp),
        .s_axi_bvalid(S01_AXI_bvalid),
        .s_axi_wdata(S01_AXI_wdata),
        .s_axi_wlast(S01_AXI_wlast),
        .s_axi_wready(S01_AXI_wready),
        .s_axi_wstrb(S01_AXI_wstrb),
        .s_axi_wvalid(S01_AXI_wvalid));
  s01_nodes_imp_G0SES0 s01_nodes
       (.M_SC_AW_info(s01_nodes_M_SC_AW_INFO),
        .M_SC_AW_payld(s01_nodes_M_SC_AW_PAYLD),
        .M_SC_AW_recv(s01_nodes_M_SC_AW_RECV),
        .M_SC_AW_req(s01_nodes_M_SC_AW_REQ),
        .M_SC_AW_send(s01_nodes_M_SC_AW_SEND),
        .M_SC_B_info(s01_nodes_M_SC_B_INFO),
        .M_SC_B_payld(s01_nodes_M_SC_B_PAYLD),
        .M_SC_B_recv(s01_nodes_M_SC_B_RECV),
        .M_SC_B_req(s01_nodes_M_SC_B_REQ),
        .M_SC_B_send(s01_nodes_M_SC_B_SEND),
        .M_SC_W_info(s01_nodes_M_SC_W_INFO),
        .M_SC_W_payld(s01_nodes_M_SC_W_PAYLD),
        .M_SC_W_recv(s01_nodes_M_SC_W_RECV),
        .M_SC_W_req(s01_nodes_M_SC_W_REQ),
        .M_SC_W_send(s01_nodes_M_SC_W_SEND),
        .S_SC_AW_info(S_SC_AW_1_INFO),
        .S_SC_AW_payld(S_SC_AW_1_PAYLD),
        .S_SC_AW_recv(S_SC_AW_1_RECV),
        .S_SC_AW_req(S_SC_AW_1_REQ),
        .S_SC_AW_send(S_SC_AW_1_SEND),
        .S_SC_B_info(S_SC_B_1_INFO),
        .S_SC_B_payld(S_SC_B_1_PAYLD),
        .S_SC_B_recv(S_SC_B_1_RECV),
        .S_SC_B_req(S_SC_B_1_REQ),
        .S_SC_B_send(S_SC_B_1_SEND),
        .S_SC_W_info(S_SC_W_1_INFO),
        .S_SC_W_payld(S_SC_W_1_PAYLD),
        .S_SC_W_recv(S_SC_W_1_RECV),
        .S_SC_W_req(S_SC_W_1_REQ),
        .S_SC_W_send(S_SC_W_1_SEND),
        .m_sc_clk(swbd_aclk_net),
        .m_sc_resetn(swbd_aresetn_net),
        .s_sc_clk(aclk_2),
        .s_sc_resetn(aresetn_3));
  bd_fb8b_s02a2s_0 s02_axi2sc
       (.aclk(aclk_3),
        .m_sc_ar_info(S_SC_AR_2_INFO),
        .m_sc_ar_payld(S_SC_AR_2_PAYLD),
        .m_sc_ar_recv(S_SC_AR_2_RECV),
        .m_sc_ar_req(S_SC_AR_2_REQ),
        .m_sc_ar_send(S_SC_AR_2_SEND),
        .s_axi_araddr(s02_entry_pipeline_m_axi_ARADDR),
        .s_axi_arcache(s02_entry_pipeline_m_axi_ARCACHE),
        .s_axi_arid(s02_entry_pipeline_m_axi_ARID),
        .s_axi_arlen(s02_entry_pipeline_m_axi_ARLEN),
        .s_axi_arlock(s02_entry_pipeline_m_axi_ARLOCK),
        .s_axi_arprot(s02_entry_pipeline_m_axi_ARPROT),
        .s_axi_arqos(s02_entry_pipeline_m_axi_ARQOS),
        .s_axi_arready(s02_entry_pipeline_m_axi_ARREADY),
        .s_axi_aruser(s02_entry_pipeline_m_axi_ARUSER),
        .s_axi_arvalid(s02_entry_pipeline_m_axi_ARVALID),
        .s_axi_rdata(s02_entry_pipeline_m_axi_RDATA),
        .s_axi_rid(s02_entry_pipeline_m_axi_RID),
        .s_axi_rlast(s02_entry_pipeline_m_axi_RLAST),
        .s_axi_rready(s02_entry_pipeline_m_axi_RREADY),
        .s_axi_rresp(s02_entry_pipeline_m_axi_RRESP),
        .s_axi_ruser(s02_entry_pipeline_m_axi_RUSER),
        .s_axi_rvalid(s02_entry_pipeline_m_axi_RVALID),
        .s_sc_r_info(s02_nodes_M_SC_R_INFO),
        .s_sc_r_payld(s02_nodes_M_SC_R_PAYLD),
        .s_sc_r_recv(s02_nodes_M_SC_R_RECV),
        .s_sc_r_req(s02_nodes_M_SC_R_REQ),
        .s_sc_r_send(s02_nodes_M_SC_R_SEND));
  s02_entry_pipeline_imp_PP4M6T s02_entry_pipeline
       (.aclk(aclk_3),
        .aresetn(aresetn_4),
        .m_axi_araddr(s02_entry_pipeline_m_axi_ARADDR),
        .m_axi_arcache(s02_entry_pipeline_m_axi_ARCACHE),
        .m_axi_arid(s02_entry_pipeline_m_axi_ARID),
        .m_axi_arlen(s02_entry_pipeline_m_axi_ARLEN),
        .m_axi_arlock(s02_entry_pipeline_m_axi_ARLOCK),
        .m_axi_arprot(s02_entry_pipeline_m_axi_ARPROT),
        .m_axi_arqos(s02_entry_pipeline_m_axi_ARQOS),
        .m_axi_arready(s02_entry_pipeline_m_axi_ARREADY),
        .m_axi_aruser(s02_entry_pipeline_m_axi_ARUSER),
        .m_axi_arvalid(s02_entry_pipeline_m_axi_ARVALID),
        .m_axi_rdata(s02_entry_pipeline_m_axi_RDATA),
        .m_axi_rid(s02_entry_pipeline_m_axi_RID),
        .m_axi_rlast(s02_entry_pipeline_m_axi_RLAST),
        .m_axi_rready(s02_entry_pipeline_m_axi_RREADY),
        .m_axi_rresp(s02_entry_pipeline_m_axi_RRESP),
        .m_axi_ruser(s02_entry_pipeline_m_axi_RUSER),
        .m_axi_rvalid(s02_entry_pipeline_m_axi_RVALID),
        .s_axi_araddr(S02_AXI_araddr),
        .s_axi_arburst(S02_AXI_arburst),
        .s_axi_arcache(S02_AXI_arcache),
        .s_axi_arlen(S02_AXI_arlen),
        .s_axi_arlock(S02_AXI_arlock),
        .s_axi_arprot(S02_AXI_arprot),
        .s_axi_arqos(S02_AXI_arqos),
        .s_axi_arready(S02_AXI_arready),
        .s_axi_arsize(S02_AXI_arsize),
        .s_axi_arvalid(S02_AXI_arvalid),
        .s_axi_rdata(S02_AXI_rdata),
        .s_axi_rlast(S02_AXI_rlast),
        .s_axi_rready(S02_AXI_rready),
        .s_axi_rresp(S02_AXI_rresp),
        .s_axi_rvalid(S02_AXI_rvalid));
  s02_nodes_imp_JDXQ8B s02_nodes
       (.M_SC_AR_info(s02_nodes_M_SC_AR_INFO),
        .M_SC_AR_payld(s02_nodes_M_SC_AR_PAYLD),
        .M_SC_AR_recv(s02_nodes_M_SC_AR_RECV),
        .M_SC_AR_req(s02_nodes_M_SC_AR_REQ),
        .M_SC_AR_send(s02_nodes_M_SC_AR_SEND),
        .M_SC_R_info(s02_nodes_M_SC_R_INFO),
        .M_SC_R_payld(s02_nodes_M_SC_R_PAYLD),
        .M_SC_R_recv(s02_nodes_M_SC_R_RECV),
        .M_SC_R_req(s02_nodes_M_SC_R_REQ),
        .M_SC_R_send(s02_nodes_M_SC_R_SEND),
        .S_SC_AR_info(S_SC_AR_2_INFO),
        .S_SC_AR_payld(S_SC_AR_2_PAYLD),
        .S_SC_AR_recv(S_SC_AR_2_RECV),
        .S_SC_AR_req(S_SC_AR_2_REQ),
        .S_SC_AR_send(S_SC_AR_2_SEND),
        .S_SC_R_info(S_SC_R_2_INFO),
        .S_SC_R_payld(S_SC_R_2_PAYLD),
        .S_SC_R_recv(S_SC_R_2_RECV),
        .S_SC_R_req(S_SC_R_2_REQ),
        .S_SC_R_send(S_SC_R_2_SEND),
        .m_sc_clk(swbd_aclk_net),
        .m_sc_resetn(swbd_aresetn_net),
        .s_sc_clk(aclk_3),
        .s_sc_resetn(aresetn_4));
  bd_fb8b_s03a2s_0 s03_axi2sc
       (.aclk(aclk_4),
        .m_sc_aw_info(S_SC_AW_2_INFO),
        .m_sc_aw_payld(S_SC_AW_2_PAYLD),
        .m_sc_aw_recv(S_SC_AW_2_RECV),
        .m_sc_aw_req(S_SC_AW_2_REQ),
        .m_sc_aw_send(S_SC_AW_2_SEND),
        .m_sc_w_info(S_SC_W_2_INFO),
        .m_sc_w_payld(S_SC_W_2_PAYLD),
        .m_sc_w_recv(S_SC_W_2_RECV),
        .m_sc_w_req(S_SC_W_2_REQ),
        .m_sc_w_send(S_SC_W_2_SEND),
        .s_axi_awaddr(s03_entry_pipeline_m_axi_AWADDR),
        .s_axi_awcache(s03_entry_pipeline_m_axi_AWCACHE),
        .s_axi_awid(s03_entry_pipeline_m_axi_AWID),
        .s_axi_awlen(s03_entry_pipeline_m_axi_AWLEN),
        .s_axi_awlock(s03_entry_pipeline_m_axi_AWLOCK),
        .s_axi_awprot(s03_entry_pipeline_m_axi_AWPROT),
        .s_axi_awqos(s03_entry_pipeline_m_axi_AWQOS),
        .s_axi_awready(s03_entry_pipeline_m_axi_AWREADY),
        .s_axi_awuser(s03_entry_pipeline_m_axi_AWUSER),
        .s_axi_awvalid(s03_entry_pipeline_m_axi_AWVALID),
        .s_axi_bid(s03_entry_pipeline_m_axi_BID),
        .s_axi_bready(s03_entry_pipeline_m_axi_BREADY),
        .s_axi_bresp(s03_entry_pipeline_m_axi_BRESP),
        .s_axi_buser(s03_entry_pipeline_m_axi_BUSER),
        .s_axi_bvalid(s03_entry_pipeline_m_axi_BVALID),
        .s_axi_wdata(s03_entry_pipeline_m_axi_WDATA),
        .s_axi_wlast(s03_entry_pipeline_m_axi_WLAST),
        .s_axi_wready(s03_entry_pipeline_m_axi_WREADY),
        .s_axi_wstrb(s03_entry_pipeline_m_axi_WSTRB),
        .s_axi_wuser(s03_entry_pipeline_m_axi_WUSER),
        .s_axi_wvalid(s03_entry_pipeline_m_axi_WVALID),
        .s_sc_b_info(s03_nodes_M_SC_B_INFO),
        .s_sc_b_payld(s03_nodes_M_SC_B_PAYLD),
        .s_sc_b_recv(s03_nodes_M_SC_B_RECV),
        .s_sc_b_req(s03_nodes_M_SC_B_REQ),
        .s_sc_b_send(s03_nodes_M_SC_B_SEND));
  s03_entry_pipeline_imp_1JH1EGX s03_entry_pipeline
       (.aclk(aclk_4),
        .aresetn(aresetn_5),
        .m_axi_awaddr(s03_entry_pipeline_m_axi_AWADDR),
        .m_axi_awcache(s03_entry_pipeline_m_axi_AWCACHE),
        .m_axi_awid(s03_entry_pipeline_m_axi_AWID),
        .m_axi_awlen(s03_entry_pipeline_m_axi_AWLEN),
        .m_axi_awlock(s03_entry_pipeline_m_axi_AWLOCK),
        .m_axi_awprot(s03_entry_pipeline_m_axi_AWPROT),
        .m_axi_awqos(s03_entry_pipeline_m_axi_AWQOS),
        .m_axi_awready(s03_entry_pipeline_m_axi_AWREADY),
        .m_axi_awuser(s03_entry_pipeline_m_axi_AWUSER),
        .m_axi_awvalid(s03_entry_pipeline_m_axi_AWVALID),
        .m_axi_bid(s03_entry_pipeline_m_axi_BID),
        .m_axi_bready(s03_entry_pipeline_m_axi_BREADY),
        .m_axi_bresp(s03_entry_pipeline_m_axi_BRESP),
        .m_axi_buser(s03_entry_pipeline_m_axi_BUSER),
        .m_axi_bvalid(s03_entry_pipeline_m_axi_BVALID),
        .m_axi_wdata(s03_entry_pipeline_m_axi_WDATA),
        .m_axi_wlast(s03_entry_pipeline_m_axi_WLAST),
        .m_axi_wready(s03_entry_pipeline_m_axi_WREADY),
        .m_axi_wstrb(s03_entry_pipeline_m_axi_WSTRB),
        .m_axi_wuser(s03_entry_pipeline_m_axi_WUSER),
        .m_axi_wvalid(s03_entry_pipeline_m_axi_WVALID),
        .s_axi_awaddr(S03_AXI_awaddr),
        .s_axi_awburst(S03_AXI_awburst),
        .s_axi_awcache(S03_AXI_awcache),
        .s_axi_awlen(S03_AXI_awlen),
        .s_axi_awlock(S03_AXI_awlock),
        .s_axi_awprot(S03_AXI_awprot),
        .s_axi_awqos(S03_AXI_awqos),
        .s_axi_awready(S03_AXI_awready),
        .s_axi_awsize(S03_AXI_awsize),
        .s_axi_awvalid(S03_AXI_awvalid),
        .s_axi_bready(S03_AXI_bready),
        .s_axi_bresp(S03_AXI_bresp),
        .s_axi_bvalid(S03_AXI_bvalid),
        .s_axi_wdata(S03_AXI_wdata),
        .s_axi_wlast(S03_AXI_wlast),
        .s_axi_wready(S03_AXI_wready),
        .s_axi_wstrb(S03_AXI_wstrb),
        .s_axi_wvalid(S03_AXI_wvalid));
  s03_nodes_imp_1O5PI7X s03_nodes
       (.M_SC_AW_info(s03_nodes_M_SC_AW_INFO),
        .M_SC_AW_payld(s03_nodes_M_SC_AW_PAYLD),
        .M_SC_AW_recv(s03_nodes_M_SC_AW_RECV),
        .M_SC_AW_req(s03_nodes_M_SC_AW_REQ),
        .M_SC_AW_send(s03_nodes_M_SC_AW_SEND),
        .M_SC_B_info(s03_nodes_M_SC_B_INFO),
        .M_SC_B_payld(s03_nodes_M_SC_B_PAYLD),
        .M_SC_B_recv(s03_nodes_M_SC_B_RECV),
        .M_SC_B_req(s03_nodes_M_SC_B_REQ),
        .M_SC_B_send(s03_nodes_M_SC_B_SEND),
        .M_SC_W_info(s03_nodes_M_SC_W_INFO),
        .M_SC_W_payld(s03_nodes_M_SC_W_PAYLD),
        .M_SC_W_recv(s03_nodes_M_SC_W_RECV),
        .M_SC_W_req(s03_nodes_M_SC_W_REQ),
        .M_SC_W_send(s03_nodes_M_SC_W_SEND),
        .S_SC_AW_info(S_SC_AW_2_INFO),
        .S_SC_AW_payld(S_SC_AW_2_PAYLD),
        .S_SC_AW_recv(S_SC_AW_2_RECV),
        .S_SC_AW_req(S_SC_AW_2_REQ),
        .S_SC_AW_send(S_SC_AW_2_SEND),
        .S_SC_B_info(S_SC_B_2_INFO),
        .S_SC_B_payld(S_SC_B_2_PAYLD),
        .S_SC_B_recv(S_SC_B_2_RECV),
        .S_SC_B_req(S_SC_B_2_REQ),
        .S_SC_B_send(S_SC_B_2_SEND),
        .S_SC_W_info(S_SC_W_2_INFO),
        .S_SC_W_payld(S_SC_W_2_PAYLD),
        .S_SC_W_recv(S_SC_W_2_RECV),
        .S_SC_W_req(S_SC_W_2_REQ),
        .S_SC_W_send(S_SC_W_2_SEND),
        .m_sc_clk(swbd_aclk_net),
        .m_sc_resetn(swbd_aresetn_net),
        .s_sc_clk(aclk_4),
        .s_sc_resetn(aresetn_5));
  switchboards_imp_1LIEE9E switchboards
       (.M00_SC_AR_info(S_SC_AR_3_INFO),
        .M00_SC_AR_payld(S_SC_AR_3_PAYLD),
        .M00_SC_AR_recv(S_SC_AR_3_RECV),
        .M00_SC_AR_req(S_SC_AR_3_REQ),
        .M00_SC_AR_send(S_SC_AR_3_SEND),
        .M00_SC_AW_info(S_SC_AW_3_INFO),
        .M00_SC_AW_payld(S_SC_AW_3_PAYLD),
        .M00_SC_AW_recv(S_SC_AW_3_RECV),
        .M00_SC_AW_req(S_SC_AW_3_REQ),
        .M00_SC_AW_send(S_SC_AW_3_SEND),
        .M00_SC_B_recv(1'b0),
        .M00_SC_R_info(S_SC_R_1_INFO),
        .M00_SC_R_payld(S_SC_R_1_PAYLD),
        .M00_SC_R_recv(S_SC_R_1_RECV),
        .M00_SC_R_req(S_SC_R_1_REQ),
        .M00_SC_R_send(S_SC_R_1_SEND),
        .M00_SC_W_info(S_SC_W_3_INFO),
        .M00_SC_W_payld(S_SC_W_3_PAYLD),
        .M00_SC_W_recv(S_SC_W_3_RECV),
        .M00_SC_W_req(S_SC_W_3_REQ),
        .M00_SC_W_send(S_SC_W_3_SEND),
        .M01_SC_B_info(S_SC_B_1_INFO),
        .M01_SC_B_payld(S_SC_B_1_PAYLD),
        .M01_SC_B_recv(S_SC_B_1_RECV),
        .M01_SC_B_req(S_SC_B_1_REQ),
        .M01_SC_B_send(S_SC_B_1_SEND),
        .M01_SC_R_recv(1'b0),
        .M02_SC_B_recv(1'b0),
        .M02_SC_R_info(S_SC_R_2_INFO),
        .M02_SC_R_payld(S_SC_R_2_PAYLD),
        .M02_SC_R_recv(S_SC_R_2_RECV),
        .M02_SC_R_req(S_SC_R_2_REQ),
        .M02_SC_R_send(S_SC_R_2_SEND),
        .M03_SC_B_info(S_SC_B_2_INFO),
        .M03_SC_B_payld(S_SC_B_2_PAYLD),
        .M03_SC_B_recv(S_SC_B_2_RECV),
        .M03_SC_B_req(S_SC_B_2_REQ),
        .M03_SC_B_send(S_SC_B_2_SEND),
        .M03_SC_R_recv(1'b0),
        .S00_SC_AR_info(s00_nodes_M_SC_AR_INFO),
        .S00_SC_AR_payld(s00_nodes_M_SC_AR_PAYLD),
        .S00_SC_AR_recv(s00_nodes_M_SC_AR_RECV),
        .S00_SC_AR_req(s00_nodes_M_SC_AR_REQ),
        .S00_SC_AR_send(s00_nodes_M_SC_AR_SEND),
        .S00_SC_AW_info(1'b0),
        .S00_SC_AW_payld(1'b0),
        .S00_SC_AW_req(1'b0),
        .S00_SC_AW_send(1'b0),
        .S00_SC_B_info(m00_nodes_M_SC_B_INFO),
        .S00_SC_B_payld(m00_nodes_M_SC_B_PAYLD),
        .S00_SC_B_recv(m00_nodes_M_SC_B_RECV),
        .S00_SC_B_req(m00_nodes_M_SC_B_REQ),
        .S00_SC_B_send(m00_nodes_M_SC_B_SEND),
        .S00_SC_R_info(m00_nodes_M_SC_R_INFO),
        .S00_SC_R_payld(m00_nodes_M_SC_R_PAYLD),
        .S00_SC_R_recv(m00_nodes_M_SC_R_RECV),
        .S00_SC_R_req(m00_nodes_M_SC_R_REQ),
        .S00_SC_R_send(m00_nodes_M_SC_R_SEND),
        .S00_SC_W_info(1'b0),
        .S00_SC_W_payld(1'b0),
        .S00_SC_W_req(1'b0),
        .S00_SC_W_send(1'b0),
        .S01_SC_AR_info(1'b0),
        .S01_SC_AR_payld(1'b0),
        .S01_SC_AR_req(1'b0),
        .S01_SC_AR_send(1'b0),
        .S01_SC_AW_info(s01_nodes_M_SC_AW_INFO),
        .S01_SC_AW_payld(s01_nodes_M_SC_AW_PAYLD),
        .S01_SC_AW_recv(s01_nodes_M_SC_AW_RECV),
        .S01_SC_AW_req(s01_nodes_M_SC_AW_REQ),
        .S01_SC_AW_send(s01_nodes_M_SC_AW_SEND),
        .S01_SC_W_info(s01_nodes_M_SC_W_INFO),
        .S01_SC_W_payld(s01_nodes_M_SC_W_PAYLD),
        .S01_SC_W_recv(s01_nodes_M_SC_W_RECV),
        .S01_SC_W_req(s01_nodes_M_SC_W_REQ),
        .S01_SC_W_send(s01_nodes_M_SC_W_SEND),
        .S02_SC_AR_info(s02_nodes_M_SC_AR_INFO),
        .S02_SC_AR_payld(s02_nodes_M_SC_AR_PAYLD),
        .S02_SC_AR_recv(s02_nodes_M_SC_AR_RECV),
        .S02_SC_AR_req(s02_nodes_M_SC_AR_REQ),
        .S02_SC_AR_send(s02_nodes_M_SC_AR_SEND),
        .S02_SC_AW_info(1'b0),
        .S02_SC_AW_payld(1'b0),
        .S02_SC_AW_req(1'b0),
        .S02_SC_AW_send(1'b0),
        .S02_SC_W_info(1'b0),
        .S02_SC_W_payld(1'b0),
        .S02_SC_W_req(1'b0),
        .S02_SC_W_send(1'b0),
        .S03_SC_AR_info(1'b0),
        .S03_SC_AR_payld(1'b0),
        .S03_SC_AR_req(1'b0),
        .S03_SC_AR_send(1'b0),
        .S03_SC_AW_info(s03_nodes_M_SC_AW_INFO),
        .S03_SC_AW_payld(s03_nodes_M_SC_AW_PAYLD),
        .S03_SC_AW_recv(s03_nodes_M_SC_AW_RECV),
        .S03_SC_AW_req(s03_nodes_M_SC_AW_REQ),
        .S03_SC_AW_send(s03_nodes_M_SC_AW_SEND),
        .S03_SC_W_info(s03_nodes_M_SC_W_INFO),
        .S03_SC_W_payld(s03_nodes_M_SC_W_PAYLD),
        .S03_SC_W_recv(s03_nodes_M_SC_W_RECV),
        .S03_SC_W_req(s03_nodes_M_SC_W_REQ),
        .S03_SC_W_send(s03_nodes_M_SC_W_SEND),
        .aclk(swbd_aclk_net),
        .aresetn(swbd_aresetn_net));
endmodule

module clk_map_imp_1K79LYC
   (M00_ACLK,
    M00_ARESETN,
    S00_ACLK,
    S00_ARESETN,
    S01_ACLK,
    S01_ARESETN,
    S02_ACLK,
    S02_ARESETN,
    S03_ACLK,
    S03_ARESETN,
    aclk,
    aresetn,
    aresetn_out,
    swbd_aclk,
    swbd_aresetn);
  output M00_ACLK;
  output [0:0]M00_ARESETN;
  output S00_ACLK;
  output [0:0]S00_ARESETN;
  output S01_ACLK;
  output [0:0]S01_ARESETN;
  output S02_ACLK;
  output [0:0]S02_ARESETN;
  output S03_ACLK;
  output [0:0]S03_ARESETN;
  input aclk;
  input aresetn;
  output aresetn_out;
  output swbd_aclk;
  output [0:0]swbd_aresetn;

  wire aresetn;
  wire [0:0]one_dout;
  wire swbd_aclk;
  wire [0:0]swbd_aresetn;

  assign M00_ACLK = swbd_aclk;
  assign M00_ARESETN[0] = swbd_aresetn;
  assign S00_ACLK = swbd_aclk;
  assign S00_ARESETN[0] = swbd_aresetn;
  assign S01_ACLK = swbd_aclk;
  assign S01_ARESETN[0] = swbd_aresetn;
  assign S02_ACLK = swbd_aclk;
  assign S02_ARESETN[0] = swbd_aresetn;
  assign S03_ACLK = swbd_aclk;
  assign S03_ARESETN[0] = swbd_aresetn;
  assign swbd_aclk = aclk;
  bd_fb8b_one_0 one
       (.dout(one_dout));
  bd_fb8b_psr_aclk_0 psr_aclk
       (.aux_reset_in(aresetn),
        .dcm_locked(1'b1),
        .ext_reset_in(one_dout),
        .interconnect_aresetn(swbd_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(swbd_aclk));
endmodule

module m00_exit_pipeline_imp_DWQCHR
   (aclk,
    aresetn,
    m_axi_araddr,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arready,
    m_axi_arsize,
    m_axi_arvalid,
    m_axi_awaddr,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awready,
    m_axi_awsize,
    m_axi_awvalid,
    m_axi_bready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_rdata,
    m_axi_rlast,
    m_axi_rready,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_wdata,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_wvalid,
    s_axi_araddr,
    s_axi_arcache,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arready,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awcache,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awready,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_bid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rid,
    s_axi_rlast,
    s_axi_rready,
    s_axi_rresp,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wuser,
    s_axi_wvalid);
  input aclk;
  input aresetn;
  output [31:0]m_axi_araddr;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [3:0]m_axi_arlen;
  output [1:0]m_axi_arlock;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  input m_axi_arready;
  output [2:0]m_axi_arsize;
  output m_axi_arvalid;
  output [31:0]m_axi_awaddr;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [3:0]m_axi_awlen;
  output [1:0]m_axi_awlock;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input m_axi_awready;
  output [2:0]m_axi_awsize;
  output m_axi_awvalid;
  output m_axi_bready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input [63:0]m_axi_rdata;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output [63:0]m_axi_wdata;
  output m_axi_wlast;
  input m_axi_wready;
  output [7:0]m_axi_wstrb;
  output m_axi_wvalid;
  input [31:0]s_axi_araddr;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  output s_axi_arready;
  input [1023:0]s_axi_aruser;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  output s_axi_awready;
  input [1023:0]s_axi_awuser;
  input s_axi_awvalid;
  output [2:0]s_axi_bid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output [1023:0]s_axi_buser;
  output s_axi_bvalid;
  output [63:0]s_axi_rdata;
  output [2:0]s_axi_rid;
  output s_axi_rlast;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output [1023:0]s_axi_ruser;
  output s_axi_rvalid;
  input [63:0]s_axi_wdata;
  input s_axi_wlast;
  output s_axi_wready;
  input [7:0]s_axi_wstrb;
  input [1023:0]s_axi_wuser;
  input s_axi_wvalid;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [1:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [1:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [3:0]s_axi_arcache;
  wire [2:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [1023:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [3:0]s_axi_awcache;
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [1023:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [1023:0]s_axi_buser;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [1023:0]s_axi_ruser;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire [1023:0]s_axi_wuser;
  wire s_axi_wvalid;

  bd_fb8b_m00e_0 m00_exit
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_aruser(s_axi_aruser),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awuser(s_axi_awuser),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(s_axi_buser),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(s_axi_ruser),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(s_axi_wuser),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module m00_nodes_imp_R7OQS3
   (M_SC_AR_info,
    M_SC_AR_payld,
    M_SC_AR_recv,
    M_SC_AR_req,
    M_SC_AR_send,
    M_SC_AW_info,
    M_SC_AW_payld,
    M_SC_AW_recv,
    M_SC_AW_req,
    M_SC_AW_send,
    M_SC_B_info,
    M_SC_B_payld,
    M_SC_B_recv,
    M_SC_B_req,
    M_SC_B_send,
    M_SC_R_info,
    M_SC_R_payld,
    M_SC_R_recv,
    M_SC_R_req,
    M_SC_R_send,
    M_SC_W_info,
    M_SC_W_payld,
    M_SC_W_recv,
    M_SC_W_req,
    M_SC_W_send,
    S_SC_AR_info,
    S_SC_AR_payld,
    S_SC_AR_recv,
    S_SC_AR_req,
    S_SC_AR_send,
    S_SC_AW_info,
    S_SC_AW_payld,
    S_SC_AW_recv,
    S_SC_AW_req,
    S_SC_AW_send,
    S_SC_B_info,
    S_SC_B_payld,
    S_SC_B_recv,
    S_SC_B_req,
    S_SC_B_send,
    S_SC_R_info,
    S_SC_R_payld,
    S_SC_R_recv,
    S_SC_R_req,
    S_SC_R_send,
    S_SC_W_info,
    S_SC_W_payld,
    S_SC_W_recv,
    S_SC_W_req,
    S_SC_W_send,
    m_axi_aclk,
    m_axi_aresetn,
    s_axi_aclk,
    s_axi_aresetn);
  output [0:0]M_SC_AR_info;
  output [141:0]M_SC_AR_payld;
  input [0:0]M_SC_AR_recv;
  output [0:0]M_SC_AR_req;
  output [0:0]M_SC_AR_send;
  output [0:0]M_SC_AW_info;
  output [141:0]M_SC_AW_payld;
  input [0:0]M_SC_AW_recv;
  output [0:0]M_SC_AW_req;
  output [0:0]M_SC_AW_send;
  output [3:0]M_SC_B_info;
  output [9:0]M_SC_B_payld;
  input [3:0]M_SC_B_recv;
  output [3:0]M_SC_B_req;
  output [3:0]M_SC_B_send;
  output [3:0]M_SC_R_info;
  output [87:0]M_SC_R_payld;
  input [3:0]M_SC_R_recv;
  output [3:0]M_SC_R_req;
  output [3:0]M_SC_R_send;
  output [0:0]M_SC_W_info;
  output [87:0]M_SC_W_payld;
  input [0:0]M_SC_W_recv;
  output [0:0]M_SC_W_req;
  output [0:0]M_SC_W_send;
  input [3:0]S_SC_AR_info;
  input [141:0]S_SC_AR_payld;
  output [3:0]S_SC_AR_recv;
  input [3:0]S_SC_AR_req;
  input [3:0]S_SC_AR_send;
  input [3:0]S_SC_AW_info;
  input [141:0]S_SC_AW_payld;
  output [3:0]S_SC_AW_recv;
  input [3:0]S_SC_AW_req;
  input [3:0]S_SC_AW_send;
  input [0:0]S_SC_B_info;
  input [9:0]S_SC_B_payld;
  output [0:0]S_SC_B_recv;
  input [0:0]S_SC_B_req;
  input [0:0]S_SC_B_send;
  input [0:0]S_SC_R_info;
  input [87:0]S_SC_R_payld;
  output [0:0]S_SC_R_recv;
  input [0:0]S_SC_R_req;
  input [0:0]S_SC_R_send;
  input [3:0]S_SC_W_info;
  input [87:0]S_SC_W_payld;
  output [3:0]S_SC_W_recv;
  input [3:0]S_SC_W_req;
  input [3:0]S_SC_W_send;
  input m_axi_aclk;
  input m_axi_aresetn;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [0:0]M_SC_AR_info;
  wire [141:0]M_SC_AR_payld;
  wire [0:0]M_SC_AR_recv;
  wire [0:0]M_SC_AR_req;
  wire [0:0]M_SC_AR_send;
  wire [0:0]M_SC_AW_info;
  wire [141:0]M_SC_AW_payld;
  wire [0:0]M_SC_AW_recv;
  wire [0:0]M_SC_AW_req;
  wire [0:0]M_SC_AW_send;
  wire [3:0]M_SC_B_info;
  wire [9:0]M_SC_B_payld;
  wire [3:0]M_SC_B_recv;
  wire [3:0]M_SC_B_req;
  wire [3:0]M_SC_B_send;
  wire [3:0]M_SC_R_info;
  wire [87:0]M_SC_R_payld;
  wire [3:0]M_SC_R_recv;
  wire [3:0]M_SC_R_req;
  wire [3:0]M_SC_R_send;
  wire [0:0]M_SC_W_info;
  wire [87:0]M_SC_W_payld;
  wire [0:0]M_SC_W_recv;
  wire [0:0]M_SC_W_req;
  wire [0:0]M_SC_W_send;
  wire [3:0]S_SC_AR_info;
  wire [141:0]S_SC_AR_payld;
  wire [3:0]S_SC_AR_recv;
  wire [3:0]S_SC_AR_req;
  wire [3:0]S_SC_AR_send;
  wire [3:0]S_SC_AW_info;
  wire [141:0]S_SC_AW_payld;
  wire [3:0]S_SC_AW_recv;
  wire [3:0]S_SC_AW_req;
  wire [3:0]S_SC_AW_send;
  wire [0:0]S_SC_B_info;
  wire [9:0]S_SC_B_payld;
  wire [0:0]S_SC_B_recv;
  wire [0:0]S_SC_B_req;
  wire [0:0]S_SC_B_send;
  wire [0:0]S_SC_R_info;
  wire [87:0]S_SC_R_payld;
  wire [0:0]S_SC_R_recv;
  wire [0:0]S_SC_R_req;
  wire [0:0]S_SC_R_send;
  wire [3:0]S_SC_W_info;
  wire [87:0]S_SC_W_payld;
  wire [3:0]S_SC_W_recv;
  wire [3:0]S_SC_W_req;
  wire [3:0]S_SC_W_send;
  wire [15:0]m00_aw_node_M_AXIS_ARB_TDATA;
  wire m00_aw_node_M_AXIS_ARB_TREADY;
  wire m00_aw_node_M_AXIS_ARB_TVALID;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  bd_fb8b_m00arn_0 m00_ar_node
       (.m_sc_aclk(m_axi_aclk),
        .m_sc_aresetn(m_axi_aresetn),
        .m_sc_info(M_SC_AR_info),
        .m_sc_payld(M_SC_AR_payld),
        .m_sc_recv(M_SC_AR_recv),
        .m_sc_req(M_SC_AR_req),
        .m_sc_send(M_SC_AR_send),
        .s_sc_aclk(s_axi_aclk),
        .s_sc_aresetn(s_axi_aresetn),
        .s_sc_info(S_SC_AR_info),
        .s_sc_payld(S_SC_AR_payld),
        .s_sc_recv(S_SC_AR_recv),
        .s_sc_req(S_SC_AR_req),
        .s_sc_send(S_SC_AR_send));
  bd_fb8b_m00awn_0 m00_aw_node
       (.m_axis_arb_tdata(m00_aw_node_M_AXIS_ARB_TDATA),
        .m_axis_arb_tready(m00_aw_node_M_AXIS_ARB_TREADY),
        .m_axis_arb_tvalid(m00_aw_node_M_AXIS_ARB_TVALID),
        .m_sc_aclk(m_axi_aclk),
        .m_sc_aresetn(m_axi_aresetn),
        .m_sc_info(M_SC_AW_info),
        .m_sc_payld(M_SC_AW_payld),
        .m_sc_recv(M_SC_AW_recv),
        .m_sc_req(M_SC_AW_req),
        .m_sc_send(M_SC_AW_send),
        .s_sc_aclk(s_axi_aclk),
        .s_sc_aresetn(s_axi_aresetn),
        .s_sc_info(S_SC_AW_info),
        .s_sc_payld(S_SC_AW_payld),
        .s_sc_recv(S_SC_AW_recv),
        .s_sc_req(S_SC_AW_req),
        .s_sc_send(S_SC_AW_send));
  bd_fb8b_m00bn_0 m00_b_node
       (.m_sc_aclk(s_axi_aclk),
        .m_sc_aresetn(s_axi_aresetn),
        .m_sc_info(M_SC_B_info),
        .m_sc_payld(M_SC_B_payld),
        .m_sc_recv(M_SC_B_recv),
        .m_sc_req(M_SC_B_req),
        .m_sc_send(M_SC_B_send),
        .s_sc_aclk(m_axi_aclk),
        .s_sc_aresetn(m_axi_aresetn),
        .s_sc_info(S_SC_B_info),
        .s_sc_payld(S_SC_B_payld),
        .s_sc_recv(S_SC_B_recv),
        .s_sc_req(S_SC_B_req),
        .s_sc_send(S_SC_B_send));
  bd_fb8b_m00rn_0 m00_r_node
       (.m_sc_aclk(s_axi_aclk),
        .m_sc_aresetn(s_axi_aresetn),
        .m_sc_info(M_SC_R_info),
        .m_sc_payld(M_SC_R_payld),
        .m_sc_recv(M_SC_R_recv),
        .m_sc_req(M_SC_R_req),
        .m_sc_send(M_SC_R_send),
        .s_sc_aclk(m_axi_aclk),
        .s_sc_aresetn(m_axi_aresetn),
        .s_sc_info(S_SC_R_info),
        .s_sc_payld(S_SC_R_payld),
        .s_sc_recv(S_SC_R_recv),
        .s_sc_req(S_SC_R_req),
        .s_sc_send(S_SC_R_send));
  bd_fb8b_m00wn_0 m00_w_node
       (.m_sc_aclk(m_axi_aclk),
        .m_sc_aresetn(m_axi_aresetn),
        .m_sc_info(M_SC_W_info),
        .m_sc_payld(M_SC_W_payld),
        .m_sc_recv(M_SC_W_recv),
        .m_sc_req(M_SC_W_req),
        .m_sc_send(M_SC_W_send),
        .s_axis_arb_tdata(m00_aw_node_M_AXIS_ARB_TDATA),
        .s_axis_arb_tready(m00_aw_node_M_AXIS_ARB_TREADY),
        .s_axis_arb_tvalid(m00_aw_node_M_AXIS_ARB_TVALID),
        .s_sc_aclk(s_axi_aclk),
        .s_sc_aresetn(s_axi_aresetn),
        .s_sc_info(S_SC_W_info),
        .s_sc_payld(S_SC_W_payld),
        .s_sc_recv(S_SC_W_recv),
        .s_sc_req(S_SC_W_req),
        .s_sc_send(S_SC_W_send));
endmodule

module s00_entry_pipeline_imp_1D4CJI4
   (aclk,
    aresetn,
    m_axi_araddr,
    m_axi_arcache,
    m_axi_arid,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arready,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_rdata,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rready,
    m_axi_rresp,
    m_axi_ruser,
    m_axi_rvalid,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arready,
    s_axi_arsize,
    s_axi_arvalid,
    s_axi_rdata,
    s_axi_rlast,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid);
  input aclk;
  input aresetn;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arid;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  input m_axi_arready;
  output [1023:0]m_axi_aruser;
  output m_axi_arvalid;
  input [31:0]m_axi_rdata;
  input [2:0]m_axi_rid;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input [1023:0]m_axi_ruser;
  input m_axi_rvalid;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  output s_axi_arready;
  input [2:0]s_axi_arsize;
  input s_axi_arvalid;
  output [31:0]s_axi_rdata;
  output s_axi_rlast;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [3:0]m_axi_arcache;
  wire [2:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [1023:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire [2:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [1023:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire [31:0]s00_mmu_M_AXI_ARADDR;
  wire [1:0]s00_mmu_M_AXI_ARBURST;
  wire [3:0]s00_mmu_M_AXI_ARCACHE;
  wire [7:0]s00_mmu_M_AXI_ARLEN;
  wire [0:0]s00_mmu_M_AXI_ARLOCK;
  wire [2:0]s00_mmu_M_AXI_ARPROT;
  wire [3:0]s00_mmu_M_AXI_ARQOS;
  wire s00_mmu_M_AXI_ARREADY;
  wire [2:0]s00_mmu_M_AXI_ARSIZE;
  wire [1023:0]s00_mmu_M_AXI_ARUSER;
  wire s00_mmu_M_AXI_ARVALID;
  wire [31:0]s00_mmu_M_AXI_RDATA;
  wire s00_mmu_M_AXI_RLAST;
  wire s00_mmu_M_AXI_RREADY;
  wire [1:0]s00_mmu_M_AXI_RRESP;
  wire [1023:0]s00_mmu_M_AXI_RUSER;
  wire s00_mmu_M_AXI_RVALID;
  wire [31:0]s00_transaction_regulator_M_AXI_ARADDR;
  wire [3:0]s00_transaction_regulator_M_AXI_ARCACHE;
  wire [2:0]s00_transaction_regulator_M_AXI_ARID;
  wire [7:0]s00_transaction_regulator_M_AXI_ARLEN;
  wire [0:0]s00_transaction_regulator_M_AXI_ARLOCK;
  wire [2:0]s00_transaction_regulator_M_AXI_ARPROT;
  wire [3:0]s00_transaction_regulator_M_AXI_ARQOS;
  wire s00_transaction_regulator_M_AXI_ARREADY;
  wire [2:0]s00_transaction_regulator_M_AXI_ARSIZE;
  wire [1023:0]s00_transaction_regulator_M_AXI_ARUSER;
  wire s00_transaction_regulator_M_AXI_ARVALID;
  wire [31:0]s00_transaction_regulator_M_AXI_RDATA;
  wire [2:0]s00_transaction_regulator_M_AXI_RID;
  wire s00_transaction_regulator_M_AXI_RLAST;
  wire s00_transaction_regulator_M_AXI_RREADY;
  wire [1:0]s00_transaction_regulator_M_AXI_RRESP;
  wire [1023:0]s00_transaction_regulator_M_AXI_RUSER;
  wire s00_transaction_regulator_M_AXI_RVALID;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;

  bd_fb8b_s00mmu_0 s00_mmu
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s00_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s00_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s00_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s00_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s00_mmu_M_AXI_ARQOS),
        .m_axi_arready(s00_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s00_mmu_M_AXI_ARSIZE),
        .m_axi_aruser(s00_mmu_M_AXI_ARUSER),
        .m_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .m_axi_rdata(s00_mmu_M_AXI_RDATA),
        .m_axi_rlast(s00_mmu_M_AXI_RLAST),
        .m_axi_rready(s00_mmu_M_AXI_RREADY),
        .m_axi_rresp(s00_mmu_M_AXI_RRESP),
        .m_axi_ruser(s00_mmu_M_AXI_RUSER),
        .m_axi_rvalid(s00_mmu_M_AXI_RVALID),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid));
  bd_fb8b_s00sic_0 s00_si_converter
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_aruser(m_axi_aruser),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(m_axi_ruser),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_araddr(s00_transaction_regulator_M_AXI_ARADDR),
        .s_axi_arcache(s00_transaction_regulator_M_AXI_ARCACHE),
        .s_axi_arid(s00_transaction_regulator_M_AXI_ARID),
        .s_axi_arlen(s00_transaction_regulator_M_AXI_ARLEN),
        .s_axi_arlock(s00_transaction_regulator_M_AXI_ARLOCK),
        .s_axi_arprot(s00_transaction_regulator_M_AXI_ARPROT),
        .s_axi_arqos(s00_transaction_regulator_M_AXI_ARQOS),
        .s_axi_arready(s00_transaction_regulator_M_AXI_ARREADY),
        .s_axi_arsize(s00_transaction_regulator_M_AXI_ARSIZE),
        .s_axi_aruser(s00_transaction_regulator_M_AXI_ARUSER),
        .s_axi_arvalid(s00_transaction_regulator_M_AXI_ARVALID),
        .s_axi_rdata(s00_transaction_regulator_M_AXI_RDATA),
        .s_axi_rid(s00_transaction_regulator_M_AXI_RID),
        .s_axi_rlast(s00_transaction_regulator_M_AXI_RLAST),
        .s_axi_rready(s00_transaction_regulator_M_AXI_RREADY),
        .s_axi_rresp(s00_transaction_regulator_M_AXI_RRESP),
        .s_axi_ruser(s00_transaction_regulator_M_AXI_RUSER),
        .s_axi_rvalid(s00_transaction_regulator_M_AXI_RVALID));
  bd_fb8b_s00tr_0 s00_transaction_regulator
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(s00_transaction_regulator_M_AXI_ARADDR),
        .m_axi_arcache(s00_transaction_regulator_M_AXI_ARCACHE),
        .m_axi_arid(s00_transaction_regulator_M_AXI_ARID),
        .m_axi_arlen(s00_transaction_regulator_M_AXI_ARLEN),
        .m_axi_arlock(s00_transaction_regulator_M_AXI_ARLOCK),
        .m_axi_arprot(s00_transaction_regulator_M_AXI_ARPROT),
        .m_axi_arqos(s00_transaction_regulator_M_AXI_ARQOS),
        .m_axi_arready(s00_transaction_regulator_M_AXI_ARREADY),
        .m_axi_arsize(s00_transaction_regulator_M_AXI_ARSIZE),
        .m_axi_aruser(s00_transaction_regulator_M_AXI_ARUSER),
        .m_axi_arvalid(s00_transaction_regulator_M_AXI_ARVALID),
        .m_axi_rdata(s00_transaction_regulator_M_AXI_RDATA),
        .m_axi_rid(s00_transaction_regulator_M_AXI_RID),
        .m_axi_rlast(s00_transaction_regulator_M_AXI_RLAST),
        .m_axi_rready(s00_transaction_regulator_M_AXI_RREADY),
        .m_axi_rresp(s00_transaction_regulator_M_AXI_RRESP),
        .m_axi_ruser(s00_transaction_regulator_M_AXI_RUSER),
        .m_axi_rvalid(s00_transaction_regulator_M_AXI_RVALID),
        .s_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .s_axi_arburst(s00_mmu_M_AXI_ARBURST),
        .s_axi_arcache(s00_mmu_M_AXI_ARCACHE),
        .s_axi_arlen(s00_mmu_M_AXI_ARLEN),
        .s_axi_arlock(s00_mmu_M_AXI_ARLOCK),
        .s_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .s_axi_arqos(s00_mmu_M_AXI_ARQOS),
        .s_axi_arready(s00_mmu_M_AXI_ARREADY),
        .s_axi_arsize(s00_mmu_M_AXI_ARSIZE),
        .s_axi_aruser(s00_mmu_M_AXI_ARUSER),
        .s_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .s_axi_rdata(s00_mmu_M_AXI_RDATA),
        .s_axi_rlast(s00_mmu_M_AXI_RLAST),
        .s_axi_rready(s00_mmu_M_AXI_RREADY),
        .s_axi_rresp(s00_mmu_M_AXI_RRESP),
        .s_axi_ruser(s00_mmu_M_AXI_RUSER),
        .s_axi_rvalid(s00_mmu_M_AXI_RVALID));
endmodule

module s00_nodes_imp_19P2VFQ
   (M_SC_AR_info,
    M_SC_AR_payld,
    M_SC_AR_recv,
    M_SC_AR_req,
    M_SC_AR_send,
    M_SC_R_info,
    M_SC_R_payld,
    M_SC_R_recv,
    M_SC_R_req,
    M_SC_R_send,
    S_SC_AR_info,
    S_SC_AR_payld,
    S_SC_AR_recv,
    S_SC_AR_req,
    S_SC_AR_send,
    S_SC_R_info,
    S_SC_R_payld,
    S_SC_R_recv,
    S_SC_R_req,
    S_SC_R_send,
    m_sc_clk,
    m_sc_resetn,
    s_sc_clk,
    s_sc_resetn);
  output [0:0]M_SC_AR_info;
  output [141:0]M_SC_AR_payld;
  input [0:0]M_SC_AR_recv;
  output [0:0]M_SC_AR_req;
  output [0:0]M_SC_AR_send;
  output [0:0]M_SC_R_info;
  output [87:0]M_SC_R_payld;
  input [0:0]M_SC_R_recv;
  output [0:0]M_SC_R_req;
  output [0:0]M_SC_R_send;
  input [0:0]S_SC_AR_info;
  input [141:0]S_SC_AR_payld;
  output [0:0]S_SC_AR_recv;
  input [0:0]S_SC_AR_req;
  input [0:0]S_SC_AR_send;
  input [0:0]S_SC_R_info;
  input [87:0]S_SC_R_payld;
  output [0:0]S_SC_R_recv;
  input [0:0]S_SC_R_req;
  input [0:0]S_SC_R_send;
  input m_sc_clk;
  input m_sc_resetn;
  input s_sc_clk;
  input s_sc_resetn;

  wire [0:0]M_SC_AR_info;
  wire [141:0]M_SC_AR_payld;
  wire [0:0]M_SC_AR_recv;
  wire [0:0]M_SC_AR_req;
  wire [0:0]M_SC_AR_send;
  wire [0:0]M_SC_R_info;
  wire [87:0]M_SC_R_payld;
  wire [0:0]M_SC_R_recv;
  wire [0:0]M_SC_R_req;
  wire [0:0]M_SC_R_send;
  wire [0:0]S_SC_AR_info;
  wire [141:0]S_SC_AR_payld;
  wire [0:0]S_SC_AR_recv;
  wire [0:0]S_SC_AR_req;
  wire [0:0]S_SC_AR_send;
  wire [0:0]S_SC_R_info;
  wire [87:0]S_SC_R_payld;
  wire [0:0]S_SC_R_recv;
  wire [0:0]S_SC_R_req;
  wire [0:0]S_SC_R_send;
  wire m_sc_clk;
  wire m_sc_resetn;
  wire s_sc_clk;
  wire s_sc_resetn;

  bd_fb8b_sarn_0 s00_ar_node
       (.m_sc_aclk(m_sc_clk),
        .m_sc_aresetn(m_sc_resetn),
        .m_sc_info(M_SC_AR_info),
        .m_sc_payld(M_SC_AR_payld),
        .m_sc_recv(M_SC_AR_recv),
        .m_sc_req(M_SC_AR_req),
        .m_sc_send(M_SC_AR_send),
        .s_sc_aclk(s_sc_clk),
        .s_sc_aresetn(s_sc_resetn),
        .s_sc_info(S_SC_AR_info),
        .s_sc_payld(S_SC_AR_payld),
        .s_sc_recv(S_SC_AR_recv),
        .s_sc_req(S_SC_AR_req),
        .s_sc_send(S_SC_AR_send));
  bd_fb8b_srn_0 s00_r_node
       (.m_sc_aclk(s_sc_clk),
        .m_sc_aresetn(s_sc_resetn),
        .m_sc_info(M_SC_R_info),
        .m_sc_payld(M_SC_R_payld),
        .m_sc_recv(M_SC_R_recv),
        .m_sc_req(M_SC_R_req),
        .m_sc_send(M_SC_R_send),
        .s_sc_aclk(m_sc_clk),
        .s_sc_aresetn(m_sc_resetn),
        .s_sc_info(S_SC_R_info),
        .s_sc_payld(S_SC_R_payld),
        .s_sc_recv(S_SC_R_recv),
        .s_sc_req(S_SC_R_req),
        .s_sc_send(S_SC_R_send));
endmodule

module s01_entry_pipeline_imp_BSC2G8
   (aclk,
    aresetn,
    m_axi_awaddr,
    m_axi_awcache,
    m_axi_awid,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awready,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_bid,
    m_axi_bready,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_wdata,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_wuser,
    m_axi_wvalid,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awready,
    s_axi_awsize,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid);
  input aclk;
  input aresetn;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awid;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input m_axi_awready;
  output [1023:0]m_axi_awuser;
  output m_axi_awvalid;
  input [2:0]m_axi_bid;
  output m_axi_bready;
  input [1:0]m_axi_bresp;
  input [1023:0]m_axi_buser;
  input m_axi_bvalid;
  output [31:0]m_axi_wdata;
  output m_axi_wlast;
  input m_axi_wready;
  output [3:0]m_axi_wstrb;
  output [1023:0]m_axi_wuser;
  output m_axi_wvalid;
  input [31:0]s_axi_awaddr;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  output s_axi_awready;
  input [2:0]s_axi_awsize;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input [31:0]s_axi_wdata;
  input s_axi_wlast;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_awaddr;
  wire [3:0]m_axi_awcache;
  wire [2:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [1023:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire [2:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [1023:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [1023:0]m_axi_wuser;
  wire m_axi_wvalid;
  wire [31:0]s01_mmu_M_AXI_AWADDR;
  wire [1:0]s01_mmu_M_AXI_AWBURST;
  wire [3:0]s01_mmu_M_AXI_AWCACHE;
  wire [7:0]s01_mmu_M_AXI_AWLEN;
  wire [0:0]s01_mmu_M_AXI_AWLOCK;
  wire [2:0]s01_mmu_M_AXI_AWPROT;
  wire [3:0]s01_mmu_M_AXI_AWQOS;
  wire s01_mmu_M_AXI_AWREADY;
  wire [2:0]s01_mmu_M_AXI_AWSIZE;
  wire [1023:0]s01_mmu_M_AXI_AWUSER;
  wire s01_mmu_M_AXI_AWVALID;
  wire s01_mmu_M_AXI_BREADY;
  wire [1:0]s01_mmu_M_AXI_BRESP;
  wire [1023:0]s01_mmu_M_AXI_BUSER;
  wire s01_mmu_M_AXI_BVALID;
  wire [31:0]s01_mmu_M_AXI_WDATA;
  wire s01_mmu_M_AXI_WLAST;
  wire s01_mmu_M_AXI_WREADY;
  wire [3:0]s01_mmu_M_AXI_WSTRB;
  wire [1023:0]s01_mmu_M_AXI_WUSER;
  wire s01_mmu_M_AXI_WVALID;
  wire [31:0]s01_transaction_regulator_M_AXI_AWADDR;
  wire [3:0]s01_transaction_regulator_M_AXI_AWCACHE;
  wire [2:0]s01_transaction_regulator_M_AXI_AWID;
  wire [7:0]s01_transaction_regulator_M_AXI_AWLEN;
  wire [0:0]s01_transaction_regulator_M_AXI_AWLOCK;
  wire [2:0]s01_transaction_regulator_M_AXI_AWPROT;
  wire [3:0]s01_transaction_regulator_M_AXI_AWQOS;
  wire s01_transaction_regulator_M_AXI_AWREADY;
  wire [2:0]s01_transaction_regulator_M_AXI_AWSIZE;
  wire [1023:0]s01_transaction_regulator_M_AXI_AWUSER;
  wire s01_transaction_regulator_M_AXI_AWVALID;
  wire [2:0]s01_transaction_regulator_M_AXI_BID;
  wire s01_transaction_regulator_M_AXI_BREADY;
  wire [1:0]s01_transaction_regulator_M_AXI_BRESP;
  wire [1023:0]s01_transaction_regulator_M_AXI_BUSER;
  wire s01_transaction_regulator_M_AXI_BVALID;
  wire [31:0]s01_transaction_regulator_M_AXI_WDATA;
  wire s01_transaction_regulator_M_AXI_WLAST;
  wire s01_transaction_regulator_M_AXI_WREADY;
  wire [3:0]s01_transaction_regulator_M_AXI_WSTRB;
  wire [1023:0]s01_transaction_regulator_M_AXI_WUSER;
  wire s01_transaction_regulator_M_AXI_WVALID;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  bd_fb8b_s01mmu_0 s01_mmu
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .m_axi_awready(s01_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .m_axi_awuser(s01_mmu_M_AXI_AWUSER),
        .m_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .m_axi_bready(s01_mmu_M_AXI_BREADY),
        .m_axi_bresp(s01_mmu_M_AXI_BRESP),
        .m_axi_buser(s01_mmu_M_AXI_BUSER),
        .m_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .m_axi_wdata(s01_mmu_M_AXI_WDATA),
        .m_axi_wlast(s01_mmu_M_AXI_WLAST),
        .m_axi_wready(s01_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .m_axi_wuser(s01_mmu_M_AXI_WUSER),
        .m_axi_wvalid(s01_mmu_M_AXI_WVALID),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  bd_fb8b_s01sic_0 s01_si_converter
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awuser(m_axi_awuser),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(m_axi_buser),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(m_axi_wuser),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s01_transaction_regulator_M_AXI_AWADDR),
        .s_axi_awcache(s01_transaction_regulator_M_AXI_AWCACHE),
        .s_axi_awid(s01_transaction_regulator_M_AXI_AWID),
        .s_axi_awlen(s01_transaction_regulator_M_AXI_AWLEN),
        .s_axi_awlock(s01_transaction_regulator_M_AXI_AWLOCK),
        .s_axi_awprot(s01_transaction_regulator_M_AXI_AWPROT),
        .s_axi_awqos(s01_transaction_regulator_M_AXI_AWQOS),
        .s_axi_awready(s01_transaction_regulator_M_AXI_AWREADY),
        .s_axi_awsize(s01_transaction_regulator_M_AXI_AWSIZE),
        .s_axi_awuser(s01_transaction_regulator_M_AXI_AWUSER),
        .s_axi_awvalid(s01_transaction_regulator_M_AXI_AWVALID),
        .s_axi_bid(s01_transaction_regulator_M_AXI_BID),
        .s_axi_bready(s01_transaction_regulator_M_AXI_BREADY),
        .s_axi_bresp(s01_transaction_regulator_M_AXI_BRESP),
        .s_axi_buser(s01_transaction_regulator_M_AXI_BUSER),
        .s_axi_bvalid(s01_transaction_regulator_M_AXI_BVALID),
        .s_axi_wdata(s01_transaction_regulator_M_AXI_WDATA),
        .s_axi_wlast(s01_transaction_regulator_M_AXI_WLAST),
        .s_axi_wready(s01_transaction_regulator_M_AXI_WREADY),
        .s_axi_wstrb(s01_transaction_regulator_M_AXI_WSTRB),
        .s_axi_wuser(s01_transaction_regulator_M_AXI_WUSER),
        .s_axi_wvalid(s01_transaction_regulator_M_AXI_WVALID));
  bd_fb8b_s01tr_0 s01_transaction_regulator
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_awaddr(s01_transaction_regulator_M_AXI_AWADDR),
        .m_axi_awcache(s01_transaction_regulator_M_AXI_AWCACHE),
        .m_axi_awid(s01_transaction_regulator_M_AXI_AWID),
        .m_axi_awlen(s01_transaction_regulator_M_AXI_AWLEN),
        .m_axi_awlock(s01_transaction_regulator_M_AXI_AWLOCK),
        .m_axi_awprot(s01_transaction_regulator_M_AXI_AWPROT),
        .m_axi_awqos(s01_transaction_regulator_M_AXI_AWQOS),
        .m_axi_awready(s01_transaction_regulator_M_AXI_AWREADY),
        .m_axi_awsize(s01_transaction_regulator_M_AXI_AWSIZE),
        .m_axi_awuser(s01_transaction_regulator_M_AXI_AWUSER),
        .m_axi_awvalid(s01_transaction_regulator_M_AXI_AWVALID),
        .m_axi_bid(s01_transaction_regulator_M_AXI_BID),
        .m_axi_bready(s01_transaction_regulator_M_AXI_BREADY),
        .m_axi_bresp(s01_transaction_regulator_M_AXI_BRESP),
        .m_axi_buser(s01_transaction_regulator_M_AXI_BUSER),
        .m_axi_bvalid(s01_transaction_regulator_M_AXI_BVALID),
        .m_axi_wdata(s01_transaction_regulator_M_AXI_WDATA),
        .m_axi_wlast(s01_transaction_regulator_M_AXI_WLAST),
        .m_axi_wready(s01_transaction_regulator_M_AXI_WREADY),
        .m_axi_wstrb(s01_transaction_regulator_M_AXI_WSTRB),
        .m_axi_wuser(s01_transaction_regulator_M_AXI_WUSER),
        .m_axi_wvalid(s01_transaction_regulator_M_AXI_WVALID),
        .s_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .s_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .s_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .s_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .s_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .s_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .s_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .s_axi_awready(s01_mmu_M_AXI_AWREADY),
        .s_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .s_axi_awuser(s01_mmu_M_AXI_AWUSER),
        .s_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .s_axi_bready(s01_mmu_M_AXI_BREADY),
        .s_axi_bresp(s01_mmu_M_AXI_BRESP),
        .s_axi_buser(s01_mmu_M_AXI_BUSER),
        .s_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .s_axi_wdata(s01_mmu_M_AXI_WDATA),
        .s_axi_wlast(s01_mmu_M_AXI_WLAST),
        .s_axi_wready(s01_mmu_M_AXI_WREADY),
        .s_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .s_axi_wuser(s01_mmu_M_AXI_WUSER),
        .s_axi_wvalid(s01_mmu_M_AXI_WVALID));
endmodule

module s01_nodes_imp_G0SES0
   (M_SC_AW_info,
    M_SC_AW_payld,
    M_SC_AW_recv,
    M_SC_AW_req,
    M_SC_AW_send,
    M_SC_B_info,
    M_SC_B_payld,
    M_SC_B_recv,
    M_SC_B_req,
    M_SC_B_send,
    M_SC_W_info,
    M_SC_W_payld,
    M_SC_W_recv,
    M_SC_W_req,
    M_SC_W_send,
    S_SC_AW_info,
    S_SC_AW_payld,
    S_SC_AW_recv,
    S_SC_AW_req,
    S_SC_AW_send,
    S_SC_B_info,
    S_SC_B_payld,
    S_SC_B_recv,
    S_SC_B_req,
    S_SC_B_send,
    S_SC_W_info,
    S_SC_W_payld,
    S_SC_W_recv,
    S_SC_W_req,
    S_SC_W_send,
    m_sc_clk,
    m_sc_resetn,
    s_sc_clk,
    s_sc_resetn);
  output [0:0]M_SC_AW_info;
  output [141:0]M_SC_AW_payld;
  input [0:0]M_SC_AW_recv;
  output [0:0]M_SC_AW_req;
  output [0:0]M_SC_AW_send;
  output [0:0]M_SC_B_info;
  output [9:0]M_SC_B_payld;
  input [0:0]M_SC_B_recv;
  output [0:0]M_SC_B_req;
  output [0:0]M_SC_B_send;
  output [0:0]M_SC_W_info;
  output [87:0]M_SC_W_payld;
  input [0:0]M_SC_W_recv;
  output [0:0]M_SC_W_req;
  output [0:0]M_SC_W_send;
  input [0:0]S_SC_AW_info;
  input [141:0]S_SC_AW_payld;
  output [0:0]S_SC_AW_recv;
  input [0:0]S_SC_AW_req;
  input [0:0]S_SC_AW_send;
  input [0:0]S_SC_B_info;
  input [9:0]S_SC_B_payld;
  output [0:0]S_SC_B_recv;
  input [0:0]S_SC_B_req;
  input [0:0]S_SC_B_send;
  input [0:0]S_SC_W_info;
  input [87:0]S_SC_W_payld;
  output [0:0]S_SC_W_recv;
  input [0:0]S_SC_W_req;
  input [0:0]S_SC_W_send;
  input m_sc_clk;
  input m_sc_resetn;
  input s_sc_clk;
  input s_sc_resetn;

  wire [0:0]M_SC_AW_info;
  wire [141:0]M_SC_AW_payld;
  wire [0:0]M_SC_AW_recv;
  wire [0:0]M_SC_AW_req;
  wire [0:0]M_SC_AW_send;
  wire [0:0]M_SC_B_info;
  wire [9:0]M_SC_B_payld;
  wire [0:0]M_SC_B_recv;
  wire [0:0]M_SC_B_req;
  wire [0:0]M_SC_B_send;
  wire [0:0]M_SC_W_info;
  wire [87:0]M_SC_W_payld;
  wire [0:0]M_SC_W_recv;
  wire [0:0]M_SC_W_req;
  wire [0:0]M_SC_W_send;
  wire [0:0]S_SC_AW_info;
  wire [141:0]S_SC_AW_payld;
  wire [0:0]S_SC_AW_recv;
  wire [0:0]S_SC_AW_req;
  wire [0:0]S_SC_AW_send;
  wire [0:0]S_SC_B_info;
  wire [9:0]S_SC_B_payld;
  wire [0:0]S_SC_B_recv;
  wire [0:0]S_SC_B_req;
  wire [0:0]S_SC_B_send;
  wire [0:0]S_SC_W_info;
  wire [87:0]S_SC_W_payld;
  wire [0:0]S_SC_W_recv;
  wire [0:0]S_SC_W_req;
  wire [0:0]S_SC_W_send;
  wire m_sc_clk;
  wire m_sc_resetn;
  wire s_sc_clk;
  wire s_sc_resetn;

  bd_fb8b_sawn_0 s01_aw_node
       (.m_sc_aclk(m_sc_clk),
        .m_sc_aresetn(m_sc_resetn),
        .m_sc_info(M_SC_AW_info),
        .m_sc_payld(M_SC_AW_payld),
        .m_sc_recv(M_SC_AW_recv),
        .m_sc_req(M_SC_AW_req),
        .m_sc_send(M_SC_AW_send),
        .s_sc_aclk(s_sc_clk),
        .s_sc_aresetn(s_sc_resetn),
        .s_sc_info(S_SC_AW_info),
        .s_sc_payld(S_SC_AW_payld),
        .s_sc_recv(S_SC_AW_recv),
        .s_sc_req(S_SC_AW_req),
        .s_sc_send(S_SC_AW_send));
  bd_fb8b_sbn_0 s01_b_node
       (.m_sc_aclk(s_sc_clk),
        .m_sc_aresetn(s_sc_resetn),
        .m_sc_info(M_SC_B_info),
        .m_sc_payld(M_SC_B_payld),
        .m_sc_recv(M_SC_B_recv),
        .m_sc_req(M_SC_B_req),
        .m_sc_send(M_SC_B_send),
        .s_sc_aclk(m_sc_clk),
        .s_sc_aresetn(m_sc_resetn),
        .s_sc_info(S_SC_B_info),
        .s_sc_payld(S_SC_B_payld),
        .s_sc_recv(S_SC_B_recv),
        .s_sc_req(S_SC_B_req),
        .s_sc_send(S_SC_B_send));
  bd_fb8b_swn_0 s01_w_node
       (.m_sc_aclk(m_sc_clk),
        .m_sc_aresetn(m_sc_resetn),
        .m_sc_info(M_SC_W_info),
        .m_sc_payld(M_SC_W_payld),
        .m_sc_recv(M_SC_W_recv),
        .m_sc_req(M_SC_W_req),
        .m_sc_send(M_SC_W_send),
        .s_sc_aclk(s_sc_clk),
        .s_sc_aresetn(s_sc_resetn),
        .s_sc_info(S_SC_W_info),
        .s_sc_payld(S_SC_W_payld),
        .s_sc_recv(S_SC_W_recv),
        .s_sc_req(S_SC_W_req),
        .s_sc_send(S_SC_W_send));
endmodule

module s02_entry_pipeline_imp_PP4M6T
   (aclk,
    aresetn,
    m_axi_araddr,
    m_axi_arcache,
    m_axi_arid,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arready,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_rdata,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rready,
    m_axi_rresp,
    m_axi_ruser,
    m_axi_rvalid,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arready,
    s_axi_arsize,
    s_axi_arvalid,
    s_axi_rdata,
    s_axi_rlast,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid);
  input aclk;
  input aresetn;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arid;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  input m_axi_arready;
  output [1023:0]m_axi_aruser;
  output m_axi_arvalid;
  input [31:0]m_axi_rdata;
  input [2:0]m_axi_rid;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input [1023:0]m_axi_ruser;
  input m_axi_rvalid;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  output s_axi_arready;
  input [2:0]s_axi_arsize;
  input s_axi_arvalid;
  output [31:0]s_axi_rdata;
  output s_axi_rlast;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [3:0]m_axi_arcache;
  wire [2:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [1023:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire [2:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [1023:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire [31:0]s02_mmu_M_AXI_ARADDR;
  wire [1:0]s02_mmu_M_AXI_ARBURST;
  wire [3:0]s02_mmu_M_AXI_ARCACHE;
  wire [7:0]s02_mmu_M_AXI_ARLEN;
  wire [0:0]s02_mmu_M_AXI_ARLOCK;
  wire [2:0]s02_mmu_M_AXI_ARPROT;
  wire [3:0]s02_mmu_M_AXI_ARQOS;
  wire s02_mmu_M_AXI_ARREADY;
  wire [2:0]s02_mmu_M_AXI_ARSIZE;
  wire [1023:0]s02_mmu_M_AXI_ARUSER;
  wire s02_mmu_M_AXI_ARVALID;
  wire [31:0]s02_mmu_M_AXI_RDATA;
  wire s02_mmu_M_AXI_RLAST;
  wire s02_mmu_M_AXI_RREADY;
  wire [1:0]s02_mmu_M_AXI_RRESP;
  wire [1023:0]s02_mmu_M_AXI_RUSER;
  wire s02_mmu_M_AXI_RVALID;
  wire [31:0]s02_transaction_regulator_M_AXI_ARADDR;
  wire [3:0]s02_transaction_regulator_M_AXI_ARCACHE;
  wire [2:0]s02_transaction_regulator_M_AXI_ARID;
  wire [7:0]s02_transaction_regulator_M_AXI_ARLEN;
  wire [0:0]s02_transaction_regulator_M_AXI_ARLOCK;
  wire [2:0]s02_transaction_regulator_M_AXI_ARPROT;
  wire [3:0]s02_transaction_regulator_M_AXI_ARQOS;
  wire s02_transaction_regulator_M_AXI_ARREADY;
  wire [2:0]s02_transaction_regulator_M_AXI_ARSIZE;
  wire [1023:0]s02_transaction_regulator_M_AXI_ARUSER;
  wire s02_transaction_regulator_M_AXI_ARVALID;
  wire [31:0]s02_transaction_regulator_M_AXI_RDATA;
  wire [2:0]s02_transaction_regulator_M_AXI_RID;
  wire s02_transaction_regulator_M_AXI_RLAST;
  wire s02_transaction_regulator_M_AXI_RREADY;
  wire [1:0]s02_transaction_regulator_M_AXI_RRESP;
  wire [1023:0]s02_transaction_regulator_M_AXI_RUSER;
  wire s02_transaction_regulator_M_AXI_RVALID;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;

  bd_fb8b_s02mmu_0 s02_mmu
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(s02_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s02_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s02_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s02_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s02_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s02_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s02_mmu_M_AXI_ARQOS),
        .m_axi_arready(s02_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s02_mmu_M_AXI_ARSIZE),
        .m_axi_aruser(s02_mmu_M_AXI_ARUSER),
        .m_axi_arvalid(s02_mmu_M_AXI_ARVALID),
        .m_axi_rdata(s02_mmu_M_AXI_RDATA),
        .m_axi_rlast(s02_mmu_M_AXI_RLAST),
        .m_axi_rready(s02_mmu_M_AXI_RREADY),
        .m_axi_rresp(s02_mmu_M_AXI_RRESP),
        .m_axi_ruser(s02_mmu_M_AXI_RUSER),
        .m_axi_rvalid(s02_mmu_M_AXI_RVALID),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid));
  bd_fb8b_s02sic_0 s02_si_converter
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_aruser(m_axi_aruser),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(m_axi_ruser),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_araddr(s02_transaction_regulator_M_AXI_ARADDR),
        .s_axi_arcache(s02_transaction_regulator_M_AXI_ARCACHE),
        .s_axi_arid(s02_transaction_regulator_M_AXI_ARID),
        .s_axi_arlen(s02_transaction_regulator_M_AXI_ARLEN),
        .s_axi_arlock(s02_transaction_regulator_M_AXI_ARLOCK),
        .s_axi_arprot(s02_transaction_regulator_M_AXI_ARPROT),
        .s_axi_arqos(s02_transaction_regulator_M_AXI_ARQOS),
        .s_axi_arready(s02_transaction_regulator_M_AXI_ARREADY),
        .s_axi_arsize(s02_transaction_regulator_M_AXI_ARSIZE),
        .s_axi_aruser(s02_transaction_regulator_M_AXI_ARUSER),
        .s_axi_arvalid(s02_transaction_regulator_M_AXI_ARVALID),
        .s_axi_rdata(s02_transaction_regulator_M_AXI_RDATA),
        .s_axi_rid(s02_transaction_regulator_M_AXI_RID),
        .s_axi_rlast(s02_transaction_regulator_M_AXI_RLAST),
        .s_axi_rready(s02_transaction_regulator_M_AXI_RREADY),
        .s_axi_rresp(s02_transaction_regulator_M_AXI_RRESP),
        .s_axi_ruser(s02_transaction_regulator_M_AXI_RUSER),
        .s_axi_rvalid(s02_transaction_regulator_M_AXI_RVALID));
  bd_fb8b_s02tr_0 s02_transaction_regulator
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(s02_transaction_regulator_M_AXI_ARADDR),
        .m_axi_arcache(s02_transaction_regulator_M_AXI_ARCACHE),
        .m_axi_arid(s02_transaction_regulator_M_AXI_ARID),
        .m_axi_arlen(s02_transaction_regulator_M_AXI_ARLEN),
        .m_axi_arlock(s02_transaction_regulator_M_AXI_ARLOCK),
        .m_axi_arprot(s02_transaction_regulator_M_AXI_ARPROT),
        .m_axi_arqos(s02_transaction_regulator_M_AXI_ARQOS),
        .m_axi_arready(s02_transaction_regulator_M_AXI_ARREADY),
        .m_axi_arsize(s02_transaction_regulator_M_AXI_ARSIZE),
        .m_axi_aruser(s02_transaction_regulator_M_AXI_ARUSER),
        .m_axi_arvalid(s02_transaction_regulator_M_AXI_ARVALID),
        .m_axi_rdata(s02_transaction_regulator_M_AXI_RDATA),
        .m_axi_rid(s02_transaction_regulator_M_AXI_RID),
        .m_axi_rlast(s02_transaction_regulator_M_AXI_RLAST),
        .m_axi_rready(s02_transaction_regulator_M_AXI_RREADY),
        .m_axi_rresp(s02_transaction_regulator_M_AXI_RRESP),
        .m_axi_ruser(s02_transaction_regulator_M_AXI_RUSER),
        .m_axi_rvalid(s02_transaction_regulator_M_AXI_RVALID),
        .s_axi_araddr(s02_mmu_M_AXI_ARADDR),
        .s_axi_arburst(s02_mmu_M_AXI_ARBURST),
        .s_axi_arcache(s02_mmu_M_AXI_ARCACHE),
        .s_axi_arlen(s02_mmu_M_AXI_ARLEN),
        .s_axi_arlock(s02_mmu_M_AXI_ARLOCK),
        .s_axi_arprot(s02_mmu_M_AXI_ARPROT),
        .s_axi_arqos(s02_mmu_M_AXI_ARQOS),
        .s_axi_arready(s02_mmu_M_AXI_ARREADY),
        .s_axi_arsize(s02_mmu_M_AXI_ARSIZE),
        .s_axi_aruser(s02_mmu_M_AXI_ARUSER),
        .s_axi_arvalid(s02_mmu_M_AXI_ARVALID),
        .s_axi_rdata(s02_mmu_M_AXI_RDATA),
        .s_axi_rlast(s02_mmu_M_AXI_RLAST),
        .s_axi_rready(s02_mmu_M_AXI_RREADY),
        .s_axi_rresp(s02_mmu_M_AXI_RRESP),
        .s_axi_ruser(s02_mmu_M_AXI_RUSER),
        .s_axi_rvalid(s02_mmu_M_AXI_RVALID));
endmodule

module s02_nodes_imp_JDXQ8B
   (M_SC_AR_info,
    M_SC_AR_payld,
    M_SC_AR_recv,
    M_SC_AR_req,
    M_SC_AR_send,
    M_SC_R_info,
    M_SC_R_payld,
    M_SC_R_recv,
    M_SC_R_req,
    M_SC_R_send,
    S_SC_AR_info,
    S_SC_AR_payld,
    S_SC_AR_recv,
    S_SC_AR_req,
    S_SC_AR_send,
    S_SC_R_info,
    S_SC_R_payld,
    S_SC_R_recv,
    S_SC_R_req,
    S_SC_R_send,
    m_sc_clk,
    m_sc_resetn,
    s_sc_clk,
    s_sc_resetn);
  output [0:0]M_SC_AR_info;
  output [141:0]M_SC_AR_payld;
  input [0:0]M_SC_AR_recv;
  output [0:0]M_SC_AR_req;
  output [0:0]M_SC_AR_send;
  output [0:0]M_SC_R_info;
  output [87:0]M_SC_R_payld;
  input [0:0]M_SC_R_recv;
  output [0:0]M_SC_R_req;
  output [0:0]M_SC_R_send;
  input [0:0]S_SC_AR_info;
  input [141:0]S_SC_AR_payld;
  output [0:0]S_SC_AR_recv;
  input [0:0]S_SC_AR_req;
  input [0:0]S_SC_AR_send;
  input [0:0]S_SC_R_info;
  input [87:0]S_SC_R_payld;
  output [0:0]S_SC_R_recv;
  input [0:0]S_SC_R_req;
  input [0:0]S_SC_R_send;
  input m_sc_clk;
  input m_sc_resetn;
  input s_sc_clk;
  input s_sc_resetn;

  wire [0:0]M_SC_AR_info;
  wire [141:0]M_SC_AR_payld;
  wire [0:0]M_SC_AR_recv;
  wire [0:0]M_SC_AR_req;
  wire [0:0]M_SC_AR_send;
  wire [0:0]M_SC_R_info;
  wire [87:0]M_SC_R_payld;
  wire [0:0]M_SC_R_recv;
  wire [0:0]M_SC_R_req;
  wire [0:0]M_SC_R_send;
  wire [0:0]S_SC_AR_info;
  wire [141:0]S_SC_AR_payld;
  wire [0:0]S_SC_AR_recv;
  wire [0:0]S_SC_AR_req;
  wire [0:0]S_SC_AR_send;
  wire [0:0]S_SC_R_info;
  wire [87:0]S_SC_R_payld;
  wire [0:0]S_SC_R_recv;
  wire [0:0]S_SC_R_req;
  wire [0:0]S_SC_R_send;
  wire m_sc_clk;
  wire m_sc_resetn;
  wire s_sc_clk;
  wire s_sc_resetn;

  bd_fb8b_sarn_1 s02_ar_node
       (.m_sc_aclk(m_sc_clk),
        .m_sc_aresetn(m_sc_resetn),
        .m_sc_info(M_SC_AR_info),
        .m_sc_payld(M_SC_AR_payld),
        .m_sc_recv(M_SC_AR_recv),
        .m_sc_req(M_SC_AR_req),
        .m_sc_send(M_SC_AR_send),
        .s_sc_aclk(s_sc_clk),
        .s_sc_aresetn(s_sc_resetn),
        .s_sc_info(S_SC_AR_info),
        .s_sc_payld(S_SC_AR_payld),
        .s_sc_recv(S_SC_AR_recv),
        .s_sc_req(S_SC_AR_req),
        .s_sc_send(S_SC_AR_send));
  bd_fb8b_srn_1 s02_r_node
       (.m_sc_aclk(s_sc_clk),
        .m_sc_aresetn(s_sc_resetn),
        .m_sc_info(M_SC_R_info),
        .m_sc_payld(M_SC_R_payld),
        .m_sc_recv(M_SC_R_recv),
        .m_sc_req(M_SC_R_req),
        .m_sc_send(M_SC_R_send),
        .s_sc_aclk(m_sc_clk),
        .s_sc_aresetn(m_sc_resetn),
        .s_sc_info(S_SC_R_info),
        .s_sc_payld(S_SC_R_payld),
        .s_sc_recv(S_SC_R_recv),
        .s_sc_req(S_SC_R_req),
        .s_sc_send(S_SC_R_send));
endmodule

module s03_entry_pipeline_imp_1JH1EGX
   (aclk,
    aresetn,
    m_axi_awaddr,
    m_axi_awcache,
    m_axi_awid,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awready,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_bid,
    m_axi_bready,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_wdata,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_wuser,
    m_axi_wvalid,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awready,
    s_axi_awsize,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid);
  input aclk;
  input aresetn;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awid;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input m_axi_awready;
  output [1023:0]m_axi_awuser;
  output m_axi_awvalid;
  input [2:0]m_axi_bid;
  output m_axi_bready;
  input [1:0]m_axi_bresp;
  input [1023:0]m_axi_buser;
  input m_axi_bvalid;
  output [31:0]m_axi_wdata;
  output m_axi_wlast;
  input m_axi_wready;
  output [3:0]m_axi_wstrb;
  output [1023:0]m_axi_wuser;
  output m_axi_wvalid;
  input [31:0]s_axi_awaddr;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  output s_axi_awready;
  input [2:0]s_axi_awsize;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input [31:0]s_axi_wdata;
  input s_axi_wlast;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_awaddr;
  wire [3:0]m_axi_awcache;
  wire [2:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [1023:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire [2:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [1023:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [1023:0]m_axi_wuser;
  wire m_axi_wvalid;
  wire [31:0]s03_mmu_M_AXI_AWADDR;
  wire [1:0]s03_mmu_M_AXI_AWBURST;
  wire [3:0]s03_mmu_M_AXI_AWCACHE;
  wire [7:0]s03_mmu_M_AXI_AWLEN;
  wire [0:0]s03_mmu_M_AXI_AWLOCK;
  wire [2:0]s03_mmu_M_AXI_AWPROT;
  wire [3:0]s03_mmu_M_AXI_AWQOS;
  wire s03_mmu_M_AXI_AWREADY;
  wire [2:0]s03_mmu_M_AXI_AWSIZE;
  wire [1023:0]s03_mmu_M_AXI_AWUSER;
  wire s03_mmu_M_AXI_AWVALID;
  wire s03_mmu_M_AXI_BREADY;
  wire [1:0]s03_mmu_M_AXI_BRESP;
  wire [1023:0]s03_mmu_M_AXI_BUSER;
  wire s03_mmu_M_AXI_BVALID;
  wire [31:0]s03_mmu_M_AXI_WDATA;
  wire s03_mmu_M_AXI_WLAST;
  wire s03_mmu_M_AXI_WREADY;
  wire [3:0]s03_mmu_M_AXI_WSTRB;
  wire [1023:0]s03_mmu_M_AXI_WUSER;
  wire s03_mmu_M_AXI_WVALID;
  wire [31:0]s03_transaction_regulator_M_AXI_AWADDR;
  wire [3:0]s03_transaction_regulator_M_AXI_AWCACHE;
  wire [2:0]s03_transaction_regulator_M_AXI_AWID;
  wire [7:0]s03_transaction_regulator_M_AXI_AWLEN;
  wire [0:0]s03_transaction_regulator_M_AXI_AWLOCK;
  wire [2:0]s03_transaction_regulator_M_AXI_AWPROT;
  wire [3:0]s03_transaction_regulator_M_AXI_AWQOS;
  wire s03_transaction_regulator_M_AXI_AWREADY;
  wire [2:0]s03_transaction_regulator_M_AXI_AWSIZE;
  wire [1023:0]s03_transaction_regulator_M_AXI_AWUSER;
  wire s03_transaction_regulator_M_AXI_AWVALID;
  wire [2:0]s03_transaction_regulator_M_AXI_BID;
  wire s03_transaction_regulator_M_AXI_BREADY;
  wire [1:0]s03_transaction_regulator_M_AXI_BRESP;
  wire [1023:0]s03_transaction_regulator_M_AXI_BUSER;
  wire s03_transaction_regulator_M_AXI_BVALID;
  wire [31:0]s03_transaction_regulator_M_AXI_WDATA;
  wire s03_transaction_regulator_M_AXI_WLAST;
  wire s03_transaction_regulator_M_AXI_WREADY;
  wire [3:0]s03_transaction_regulator_M_AXI_WSTRB;
  wire [1023:0]s03_transaction_regulator_M_AXI_WUSER;
  wire s03_transaction_regulator_M_AXI_WVALID;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  bd_fb8b_s03mmu_0 s03_mmu
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_awaddr(s03_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s03_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s03_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s03_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s03_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s03_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s03_mmu_M_AXI_AWQOS),
        .m_axi_awready(s03_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s03_mmu_M_AXI_AWSIZE),
        .m_axi_awuser(s03_mmu_M_AXI_AWUSER),
        .m_axi_awvalid(s03_mmu_M_AXI_AWVALID),
        .m_axi_bready(s03_mmu_M_AXI_BREADY),
        .m_axi_bresp(s03_mmu_M_AXI_BRESP),
        .m_axi_buser(s03_mmu_M_AXI_BUSER),
        .m_axi_bvalid(s03_mmu_M_AXI_BVALID),
        .m_axi_wdata(s03_mmu_M_AXI_WDATA),
        .m_axi_wlast(s03_mmu_M_AXI_WLAST),
        .m_axi_wready(s03_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s03_mmu_M_AXI_WSTRB),
        .m_axi_wuser(s03_mmu_M_AXI_WUSER),
        .m_axi_wvalid(s03_mmu_M_AXI_WVALID),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  bd_fb8b_s03sic_0 s03_si_converter
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awuser(m_axi_awuser),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(m_axi_buser),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(m_axi_wuser),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s03_transaction_regulator_M_AXI_AWADDR),
        .s_axi_awcache(s03_transaction_regulator_M_AXI_AWCACHE),
        .s_axi_awid(s03_transaction_regulator_M_AXI_AWID),
        .s_axi_awlen(s03_transaction_regulator_M_AXI_AWLEN),
        .s_axi_awlock(s03_transaction_regulator_M_AXI_AWLOCK),
        .s_axi_awprot(s03_transaction_regulator_M_AXI_AWPROT),
        .s_axi_awqos(s03_transaction_regulator_M_AXI_AWQOS),
        .s_axi_awready(s03_transaction_regulator_M_AXI_AWREADY),
        .s_axi_awsize(s03_transaction_regulator_M_AXI_AWSIZE),
        .s_axi_awuser(s03_transaction_regulator_M_AXI_AWUSER),
        .s_axi_awvalid(s03_transaction_regulator_M_AXI_AWVALID),
        .s_axi_bid(s03_transaction_regulator_M_AXI_BID),
        .s_axi_bready(s03_transaction_regulator_M_AXI_BREADY),
        .s_axi_bresp(s03_transaction_regulator_M_AXI_BRESP),
        .s_axi_buser(s03_transaction_regulator_M_AXI_BUSER),
        .s_axi_bvalid(s03_transaction_regulator_M_AXI_BVALID),
        .s_axi_wdata(s03_transaction_regulator_M_AXI_WDATA),
        .s_axi_wlast(s03_transaction_regulator_M_AXI_WLAST),
        .s_axi_wready(s03_transaction_regulator_M_AXI_WREADY),
        .s_axi_wstrb(s03_transaction_regulator_M_AXI_WSTRB),
        .s_axi_wuser(s03_transaction_regulator_M_AXI_WUSER),
        .s_axi_wvalid(s03_transaction_regulator_M_AXI_WVALID));
  bd_fb8b_s03tr_0 s03_transaction_regulator
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_awaddr(s03_transaction_regulator_M_AXI_AWADDR),
        .m_axi_awcache(s03_transaction_regulator_M_AXI_AWCACHE),
        .m_axi_awid(s03_transaction_regulator_M_AXI_AWID),
        .m_axi_awlen(s03_transaction_regulator_M_AXI_AWLEN),
        .m_axi_awlock(s03_transaction_regulator_M_AXI_AWLOCK),
        .m_axi_awprot(s03_transaction_regulator_M_AXI_AWPROT),
        .m_axi_awqos(s03_transaction_regulator_M_AXI_AWQOS),
        .m_axi_awready(s03_transaction_regulator_M_AXI_AWREADY),
        .m_axi_awsize(s03_transaction_regulator_M_AXI_AWSIZE),
        .m_axi_awuser(s03_transaction_regulator_M_AXI_AWUSER),
        .m_axi_awvalid(s03_transaction_regulator_M_AXI_AWVALID),
        .m_axi_bid(s03_transaction_regulator_M_AXI_BID),
        .m_axi_bready(s03_transaction_regulator_M_AXI_BREADY),
        .m_axi_bresp(s03_transaction_regulator_M_AXI_BRESP),
        .m_axi_buser(s03_transaction_regulator_M_AXI_BUSER),
        .m_axi_bvalid(s03_transaction_regulator_M_AXI_BVALID),
        .m_axi_wdata(s03_transaction_regulator_M_AXI_WDATA),
        .m_axi_wlast(s03_transaction_regulator_M_AXI_WLAST),
        .m_axi_wready(s03_transaction_regulator_M_AXI_WREADY),
        .m_axi_wstrb(s03_transaction_regulator_M_AXI_WSTRB),
        .m_axi_wuser(s03_transaction_regulator_M_AXI_WUSER),
        .m_axi_wvalid(s03_transaction_regulator_M_AXI_WVALID),
        .s_axi_awaddr(s03_mmu_M_AXI_AWADDR),
        .s_axi_awburst(s03_mmu_M_AXI_AWBURST),
        .s_axi_awcache(s03_mmu_M_AXI_AWCACHE),
        .s_axi_awlen(s03_mmu_M_AXI_AWLEN),
        .s_axi_awlock(s03_mmu_M_AXI_AWLOCK),
        .s_axi_awprot(s03_mmu_M_AXI_AWPROT),
        .s_axi_awqos(s03_mmu_M_AXI_AWQOS),
        .s_axi_awready(s03_mmu_M_AXI_AWREADY),
        .s_axi_awsize(s03_mmu_M_AXI_AWSIZE),
        .s_axi_awuser(s03_mmu_M_AXI_AWUSER),
        .s_axi_awvalid(s03_mmu_M_AXI_AWVALID),
        .s_axi_bready(s03_mmu_M_AXI_BREADY),
        .s_axi_bresp(s03_mmu_M_AXI_BRESP),
        .s_axi_buser(s03_mmu_M_AXI_BUSER),
        .s_axi_bvalid(s03_mmu_M_AXI_BVALID),
        .s_axi_wdata(s03_mmu_M_AXI_WDATA),
        .s_axi_wlast(s03_mmu_M_AXI_WLAST),
        .s_axi_wready(s03_mmu_M_AXI_WREADY),
        .s_axi_wstrb(s03_mmu_M_AXI_WSTRB),
        .s_axi_wuser(s03_mmu_M_AXI_WUSER),
        .s_axi_wvalid(s03_mmu_M_AXI_WVALID));
endmodule

module s03_nodes_imp_1O5PI7X
   (M_SC_AW_info,
    M_SC_AW_payld,
    M_SC_AW_recv,
    M_SC_AW_req,
    M_SC_AW_send,
    M_SC_B_info,
    M_SC_B_payld,
    M_SC_B_recv,
    M_SC_B_req,
    M_SC_B_send,
    M_SC_W_info,
    M_SC_W_payld,
    M_SC_W_recv,
    M_SC_W_req,
    M_SC_W_send,
    S_SC_AW_info,
    S_SC_AW_payld,
    S_SC_AW_recv,
    S_SC_AW_req,
    S_SC_AW_send,
    S_SC_B_info,
    S_SC_B_payld,
    S_SC_B_recv,
    S_SC_B_req,
    S_SC_B_send,
    S_SC_W_info,
    S_SC_W_payld,
    S_SC_W_recv,
    S_SC_W_req,
    S_SC_W_send,
    m_sc_clk,
    m_sc_resetn,
    s_sc_clk,
    s_sc_resetn);
  output [0:0]M_SC_AW_info;
  output [141:0]M_SC_AW_payld;
  input [0:0]M_SC_AW_recv;
  output [0:0]M_SC_AW_req;
  output [0:0]M_SC_AW_send;
  output [0:0]M_SC_B_info;
  output [9:0]M_SC_B_payld;
  input [0:0]M_SC_B_recv;
  output [0:0]M_SC_B_req;
  output [0:0]M_SC_B_send;
  output [0:0]M_SC_W_info;
  output [87:0]M_SC_W_payld;
  input [0:0]M_SC_W_recv;
  output [0:0]M_SC_W_req;
  output [0:0]M_SC_W_send;
  input [0:0]S_SC_AW_info;
  input [141:0]S_SC_AW_payld;
  output [0:0]S_SC_AW_recv;
  input [0:0]S_SC_AW_req;
  input [0:0]S_SC_AW_send;
  input [0:0]S_SC_B_info;
  input [9:0]S_SC_B_payld;
  output [0:0]S_SC_B_recv;
  input [0:0]S_SC_B_req;
  input [0:0]S_SC_B_send;
  input [0:0]S_SC_W_info;
  input [87:0]S_SC_W_payld;
  output [0:0]S_SC_W_recv;
  input [0:0]S_SC_W_req;
  input [0:0]S_SC_W_send;
  input m_sc_clk;
  input m_sc_resetn;
  input s_sc_clk;
  input s_sc_resetn;

  wire [0:0]M_SC_AW_info;
  wire [141:0]M_SC_AW_payld;
  wire [0:0]M_SC_AW_recv;
  wire [0:0]M_SC_AW_req;
  wire [0:0]M_SC_AW_send;
  wire [0:0]M_SC_B_info;
  wire [9:0]M_SC_B_payld;
  wire [0:0]M_SC_B_recv;
  wire [0:0]M_SC_B_req;
  wire [0:0]M_SC_B_send;
  wire [0:0]M_SC_W_info;
  wire [87:0]M_SC_W_payld;
  wire [0:0]M_SC_W_recv;
  wire [0:0]M_SC_W_req;
  wire [0:0]M_SC_W_send;
  wire [0:0]S_SC_AW_info;
  wire [141:0]S_SC_AW_payld;
  wire [0:0]S_SC_AW_recv;
  wire [0:0]S_SC_AW_req;
  wire [0:0]S_SC_AW_send;
  wire [0:0]S_SC_B_info;
  wire [9:0]S_SC_B_payld;
  wire [0:0]S_SC_B_recv;
  wire [0:0]S_SC_B_req;
  wire [0:0]S_SC_B_send;
  wire [0:0]S_SC_W_info;
  wire [87:0]S_SC_W_payld;
  wire [0:0]S_SC_W_recv;
  wire [0:0]S_SC_W_req;
  wire [0:0]S_SC_W_send;
  wire m_sc_clk;
  wire m_sc_resetn;
  wire s_sc_clk;
  wire s_sc_resetn;

  bd_fb8b_sawn_1 s03_aw_node
       (.m_sc_aclk(m_sc_clk),
        .m_sc_aresetn(m_sc_resetn),
        .m_sc_info(M_SC_AW_info),
        .m_sc_payld(M_SC_AW_payld),
        .m_sc_recv(M_SC_AW_recv),
        .m_sc_req(M_SC_AW_req),
        .m_sc_send(M_SC_AW_send),
        .s_sc_aclk(s_sc_clk),
        .s_sc_aresetn(s_sc_resetn),
        .s_sc_info(S_SC_AW_info),
        .s_sc_payld(S_SC_AW_payld),
        .s_sc_recv(S_SC_AW_recv),
        .s_sc_req(S_SC_AW_req),
        .s_sc_send(S_SC_AW_send));
  bd_fb8b_sbn_1 s03_b_node
       (.m_sc_aclk(s_sc_clk),
        .m_sc_aresetn(s_sc_resetn),
        .m_sc_info(M_SC_B_info),
        .m_sc_payld(M_SC_B_payld),
        .m_sc_recv(M_SC_B_recv),
        .m_sc_req(M_SC_B_req),
        .m_sc_send(M_SC_B_send),
        .s_sc_aclk(m_sc_clk),
        .s_sc_aresetn(m_sc_resetn),
        .s_sc_info(S_SC_B_info),
        .s_sc_payld(S_SC_B_payld),
        .s_sc_recv(S_SC_B_recv),
        .s_sc_req(S_SC_B_req),
        .s_sc_send(S_SC_B_send));
  bd_fb8b_swn_1 s03_w_node
       (.m_sc_aclk(m_sc_clk),
        .m_sc_aresetn(m_sc_resetn),
        .m_sc_info(M_SC_W_info),
        .m_sc_payld(M_SC_W_payld),
        .m_sc_recv(M_SC_W_recv),
        .m_sc_req(M_SC_W_req),
        .m_sc_send(M_SC_W_send),
        .s_sc_aclk(s_sc_clk),
        .s_sc_aresetn(s_sc_resetn),
        .s_sc_info(S_SC_W_info),
        .s_sc_payld(S_SC_W_payld),
        .s_sc_recv(S_SC_W_recv),
        .s_sc_req(S_SC_W_req),
        .s_sc_send(S_SC_W_send));
endmodule

module switchboards_imp_1LIEE9E
   (M00_SC_AR_info,
    M00_SC_AR_payld,
    M00_SC_AR_recv,
    M00_SC_AR_req,
    M00_SC_AR_send,
    M00_SC_AW_info,
    M00_SC_AW_payld,
    M00_SC_AW_recv,
    M00_SC_AW_req,
    M00_SC_AW_send,
    M00_SC_B_info,
    M00_SC_B_payld,
    M00_SC_B_recv,
    M00_SC_B_req,
    M00_SC_B_send,
    M00_SC_R_info,
    M00_SC_R_payld,
    M00_SC_R_recv,
    M00_SC_R_req,
    M00_SC_R_send,
    M00_SC_W_info,
    M00_SC_W_payld,
    M00_SC_W_recv,
    M00_SC_W_req,
    M00_SC_W_send,
    M01_SC_B_info,
    M01_SC_B_payld,
    M01_SC_B_recv,
    M01_SC_B_req,
    M01_SC_B_send,
    M01_SC_R_info,
    M01_SC_R_payld,
    M01_SC_R_recv,
    M01_SC_R_req,
    M01_SC_R_send,
    M02_SC_B_info,
    M02_SC_B_payld,
    M02_SC_B_recv,
    M02_SC_B_req,
    M02_SC_B_send,
    M02_SC_R_info,
    M02_SC_R_payld,
    M02_SC_R_recv,
    M02_SC_R_req,
    M02_SC_R_send,
    M03_SC_B_info,
    M03_SC_B_payld,
    M03_SC_B_recv,
    M03_SC_B_req,
    M03_SC_B_send,
    M03_SC_R_info,
    M03_SC_R_payld,
    M03_SC_R_recv,
    M03_SC_R_req,
    M03_SC_R_send,
    S00_SC_AR_info,
    S00_SC_AR_payld,
    S00_SC_AR_recv,
    S00_SC_AR_req,
    S00_SC_AR_send,
    S00_SC_AW_info,
    S00_SC_AW_payld,
    S00_SC_AW_recv,
    S00_SC_AW_req,
    S00_SC_AW_send,
    S00_SC_B_info,
    S00_SC_B_payld,
    S00_SC_B_recv,
    S00_SC_B_req,
    S00_SC_B_send,
    S00_SC_R_info,
    S00_SC_R_payld,
    S00_SC_R_recv,
    S00_SC_R_req,
    S00_SC_R_send,
    S00_SC_W_info,
    S00_SC_W_payld,
    S00_SC_W_recv,
    S00_SC_W_req,
    S00_SC_W_send,
    S01_SC_AR_info,
    S01_SC_AR_payld,
    S01_SC_AR_recv,
    S01_SC_AR_req,
    S01_SC_AR_send,
    S01_SC_AW_info,
    S01_SC_AW_payld,
    S01_SC_AW_recv,
    S01_SC_AW_req,
    S01_SC_AW_send,
    S01_SC_W_info,
    S01_SC_W_payld,
    S01_SC_W_recv,
    S01_SC_W_req,
    S01_SC_W_send,
    S02_SC_AR_info,
    S02_SC_AR_payld,
    S02_SC_AR_recv,
    S02_SC_AR_req,
    S02_SC_AR_send,
    S02_SC_AW_info,
    S02_SC_AW_payld,
    S02_SC_AW_recv,
    S02_SC_AW_req,
    S02_SC_AW_send,
    S02_SC_W_info,
    S02_SC_W_payld,
    S02_SC_W_recv,
    S02_SC_W_req,
    S02_SC_W_send,
    S03_SC_AR_info,
    S03_SC_AR_payld,
    S03_SC_AR_recv,
    S03_SC_AR_req,
    S03_SC_AR_send,
    S03_SC_AW_info,
    S03_SC_AW_payld,
    S03_SC_AW_recv,
    S03_SC_AW_req,
    S03_SC_AW_send,
    S03_SC_W_info,
    S03_SC_W_payld,
    S03_SC_W_recv,
    S03_SC_W_req,
    S03_SC_W_send,
    aclk,
    aresetn);
  output [3:0]M00_SC_AR_info;
  output [141:0]M00_SC_AR_payld;
  input [3:0]M00_SC_AR_recv;
  output [3:0]M00_SC_AR_req;
  output [3:0]M00_SC_AR_send;
  output [3:0]M00_SC_AW_info;
  output [141:0]M00_SC_AW_payld;
  input [3:0]M00_SC_AW_recv;
  output [3:0]M00_SC_AW_req;
  output [3:0]M00_SC_AW_send;
  output M00_SC_B_info;
  output M00_SC_B_payld;
  input M00_SC_B_recv;
  output M00_SC_B_req;
  output M00_SC_B_send;
  output [0:0]M00_SC_R_info;
  output [87:0]M00_SC_R_payld;
  input [0:0]M00_SC_R_recv;
  output [0:0]M00_SC_R_req;
  output [0:0]M00_SC_R_send;
  output [3:0]M00_SC_W_info;
  output [87:0]M00_SC_W_payld;
  input [3:0]M00_SC_W_recv;
  output [3:0]M00_SC_W_req;
  output [3:0]M00_SC_W_send;
  output [0:0]M01_SC_B_info;
  output [9:0]M01_SC_B_payld;
  input [0:0]M01_SC_B_recv;
  output [0:0]M01_SC_B_req;
  output [0:0]M01_SC_B_send;
  output M01_SC_R_info;
  output M01_SC_R_payld;
  input M01_SC_R_recv;
  output M01_SC_R_req;
  output M01_SC_R_send;
  output M02_SC_B_info;
  output M02_SC_B_payld;
  input M02_SC_B_recv;
  output M02_SC_B_req;
  output M02_SC_B_send;
  output [0:0]M02_SC_R_info;
  output [87:0]M02_SC_R_payld;
  input [0:0]M02_SC_R_recv;
  output [0:0]M02_SC_R_req;
  output [0:0]M02_SC_R_send;
  output [0:0]M03_SC_B_info;
  output [9:0]M03_SC_B_payld;
  input [0:0]M03_SC_B_recv;
  output [0:0]M03_SC_B_req;
  output [0:0]M03_SC_B_send;
  output M03_SC_R_info;
  output M03_SC_R_payld;
  input M03_SC_R_recv;
  output M03_SC_R_req;
  output M03_SC_R_send;
  input [0:0]S00_SC_AR_info;
  input [141:0]S00_SC_AR_payld;
  output [0:0]S00_SC_AR_recv;
  input [0:0]S00_SC_AR_req;
  input [0:0]S00_SC_AR_send;
  input S00_SC_AW_info;
  input S00_SC_AW_payld;
  output S00_SC_AW_recv;
  input S00_SC_AW_req;
  input S00_SC_AW_send;
  input [3:0]S00_SC_B_info;
  input [9:0]S00_SC_B_payld;
  output [3:0]S00_SC_B_recv;
  input [3:0]S00_SC_B_req;
  input [3:0]S00_SC_B_send;
  input [3:0]S00_SC_R_info;
  input [87:0]S00_SC_R_payld;
  output [3:0]S00_SC_R_recv;
  input [3:0]S00_SC_R_req;
  input [3:0]S00_SC_R_send;
  input S00_SC_W_info;
  input S00_SC_W_payld;
  output S00_SC_W_recv;
  input S00_SC_W_req;
  input S00_SC_W_send;
  input S01_SC_AR_info;
  input S01_SC_AR_payld;
  output S01_SC_AR_recv;
  input S01_SC_AR_req;
  input S01_SC_AR_send;
  input [0:0]S01_SC_AW_info;
  input [141:0]S01_SC_AW_payld;
  output [0:0]S01_SC_AW_recv;
  input [0:0]S01_SC_AW_req;
  input [0:0]S01_SC_AW_send;
  input [0:0]S01_SC_W_info;
  input [87:0]S01_SC_W_payld;
  output [0:0]S01_SC_W_recv;
  input [0:0]S01_SC_W_req;
  input [0:0]S01_SC_W_send;
  input [0:0]S02_SC_AR_info;
  input [141:0]S02_SC_AR_payld;
  output [0:0]S02_SC_AR_recv;
  input [0:0]S02_SC_AR_req;
  input [0:0]S02_SC_AR_send;
  input S02_SC_AW_info;
  input S02_SC_AW_payld;
  output S02_SC_AW_recv;
  input S02_SC_AW_req;
  input S02_SC_AW_send;
  input S02_SC_W_info;
  input S02_SC_W_payld;
  output S02_SC_W_recv;
  input S02_SC_W_req;
  input S02_SC_W_send;
  input S03_SC_AR_info;
  input S03_SC_AR_payld;
  output S03_SC_AR_recv;
  input S03_SC_AR_req;
  input S03_SC_AR_send;
  input [0:0]S03_SC_AW_info;
  input [141:0]S03_SC_AW_payld;
  output [0:0]S03_SC_AW_recv;
  input [0:0]S03_SC_AW_req;
  input [0:0]S03_SC_AW_send;
  input [0:0]S03_SC_W_info;
  input [87:0]S03_SC_W_payld;
  output [0:0]S03_SC_W_recv;
  input [0:0]S03_SC_W_req;
  input [0:0]S03_SC_W_send;
  input aclk;
  input aresetn;

  wire [3:0]M00_SC_AR_info;
  wire [141:0]M00_SC_AR_payld;
  wire [3:0]M00_SC_AR_recv;
  wire [3:0]M00_SC_AR_req;
  wire [3:0]M00_SC_AR_send;
  wire [3:0]M00_SC_AW_info;
  wire [141:0]M00_SC_AW_payld;
  wire [3:0]M00_SC_AW_recv;
  wire [3:0]M00_SC_AW_req;
  wire [3:0]M00_SC_AW_send;
  wire [0:0]\^M00_SC_B_info ;
  wire [9:0]\^M00_SC_B_payld ;
  wire M00_SC_B_recv;
  wire [0:0]\^M00_SC_B_req ;
  wire [0:0]\^M00_SC_B_send ;
  wire [0:0]M00_SC_R_info;
  wire [87:0]M00_SC_R_payld;
  wire [0:0]M00_SC_R_recv;
  wire [0:0]M00_SC_R_req;
  wire [0:0]M00_SC_R_send;
  wire [3:0]M00_SC_W_info;
  wire [87:0]M00_SC_W_payld;
  wire [3:0]M00_SC_W_recv;
  wire [3:0]M00_SC_W_req;
  wire [3:0]M00_SC_W_send;
  wire [1:1]\^M01_SC_B_info ;
  wire [19:10]\^M01_SC_B_payld ;
  wire [0:0]M01_SC_B_recv;
  wire [1:1]\^M01_SC_B_req ;
  wire [1:1]\^M01_SC_B_send ;
  wire [1:1]\^M01_SC_R_info ;
  wire [175:88]\^M01_SC_R_payld ;
  wire M01_SC_R_recv;
  wire [1:1]\^M01_SC_R_req ;
  wire [1:1]\^M01_SC_R_send ;
  wire [2:2]\^M02_SC_B_info ;
  wire [29:20]\^M02_SC_B_payld ;
  wire M02_SC_B_recv;
  wire [2:2]\^M02_SC_B_req ;
  wire [2:2]\^M02_SC_B_send ;
  wire [2:2]\^M02_SC_R_info ;
  wire [263:176]\^M02_SC_R_payld ;
  wire [0:0]M02_SC_R_recv;
  wire [2:2]\^M02_SC_R_req ;
  wire [2:2]\^M02_SC_R_send ;
  wire [3:3]\^M03_SC_B_info ;
  wire [39:30]\^M03_SC_B_payld ;
  wire [0:0]M03_SC_B_recv;
  wire [3:3]\^M03_SC_B_req ;
  wire [3:3]\^M03_SC_B_send ;
  wire [3:3]\^M03_SC_R_info ;
  wire [351:264]\^M03_SC_R_payld ;
  wire M03_SC_R_recv;
  wire [3:3]\^M03_SC_R_req ;
  wire [3:3]\^M03_SC_R_send ;
  wire [0:0]S00_SC_AR_info;
  wire [141:0]S00_SC_AR_payld;
  wire [0:0]S00_SC_AR_recv;
  wire [0:0]S00_SC_AR_req;
  wire [0:0]S00_SC_AR_send;
  wire S00_SC_AW_info;
  wire S00_SC_AW_payld;
  wire [0:0]\^S00_SC_AW_recv ;
  wire S00_SC_AW_req;
  wire S00_SC_AW_send;
  wire [3:0]S00_SC_B_info;
  wire [9:0]S00_SC_B_payld;
  wire [3:0]S00_SC_B_recv;
  wire [3:0]S00_SC_B_req;
  wire [3:0]S00_SC_B_send;
  wire [3:0]S00_SC_R_info;
  wire [87:0]S00_SC_R_payld;
  wire [3:0]S00_SC_R_recv;
  wire [3:0]S00_SC_R_req;
  wire [3:0]S00_SC_R_send;
  wire S00_SC_W_info;
  wire S00_SC_W_payld;
  wire [0:0]\^S00_SC_W_recv ;
  wire S00_SC_W_req;
  wire S00_SC_W_send;
  wire S01_SC_AR_info;
  wire S01_SC_AR_payld;
  wire [1:1]\^S01_SC_AR_recv ;
  wire S01_SC_AR_req;
  wire S01_SC_AR_send;
  wire [0:0]S01_SC_AW_info;
  wire [141:0]S01_SC_AW_payld;
  wire [1:1]\^S01_SC_AW_recv ;
  wire [0:0]S01_SC_AW_req;
  wire [0:0]S01_SC_AW_send;
  wire [0:0]S01_SC_W_info;
  wire [87:0]S01_SC_W_payld;
  wire [1:1]\^S01_SC_W_recv ;
  wire [0:0]S01_SC_W_req;
  wire [0:0]S01_SC_W_send;
  wire [0:0]S02_SC_AR_info;
  wire [141:0]S02_SC_AR_payld;
  wire [2:2]\^S02_SC_AR_recv ;
  wire [0:0]S02_SC_AR_req;
  wire [0:0]S02_SC_AR_send;
  wire S02_SC_AW_info;
  wire S02_SC_AW_payld;
  wire [2:2]\^S02_SC_AW_recv ;
  wire S02_SC_AW_req;
  wire S02_SC_AW_send;
  wire S02_SC_W_info;
  wire S02_SC_W_payld;
  wire [2:2]\^S02_SC_W_recv ;
  wire S02_SC_W_req;
  wire S02_SC_W_send;
  wire S03_SC_AR_info;
  wire S03_SC_AR_payld;
  wire [3:3]\^S03_SC_AR_recv ;
  wire S03_SC_AR_req;
  wire S03_SC_AR_send;
  wire [0:0]S03_SC_AW_info;
  wire [141:0]S03_SC_AW_payld;
  wire [3:3]\^S03_SC_AW_recv ;
  wire [0:0]S03_SC_AW_req;
  wire [0:0]S03_SC_AW_send;
  wire [0:0]S03_SC_W_info;
  wire [87:0]S03_SC_W_payld;
  wire [3:3]\^S03_SC_W_recv ;
  wire [0:0]S03_SC_W_req;
  wire [0:0]S03_SC_W_send;
  wire aclk;

  assign M00_SC_B_info = \^M00_SC_B_info [0];
  assign M00_SC_B_payld = \^M00_SC_B_payld [0];
  assign M00_SC_B_req = \^M00_SC_B_req [0];
  assign M00_SC_B_send = \^M00_SC_B_send [0];
  assign M01_SC_B_info[0] = \^M01_SC_B_info [1];
  assign M01_SC_B_payld[9:0] = \^M01_SC_B_payld [19:10];
  assign M01_SC_B_req[0] = \^M01_SC_B_req [1];
  assign M01_SC_B_send[0] = \^M01_SC_B_send [1];
  assign M01_SC_R_info = \^M01_SC_R_info [1];
  assign M01_SC_R_payld = \^M01_SC_R_payld [88];
  assign M01_SC_R_req = \^M01_SC_R_req [1];
  assign M01_SC_R_send = \^M01_SC_R_send [1];
  assign M02_SC_B_info = \^M02_SC_B_info [2];
  assign M02_SC_B_payld = \^M02_SC_B_payld [20];
  assign M02_SC_B_req = \^M02_SC_B_req [2];
  assign M02_SC_B_send = \^M02_SC_B_send [2];
  assign M02_SC_R_info[0] = \^M02_SC_R_info [2];
  assign M02_SC_R_payld[87:0] = \^M02_SC_R_payld [263:176];
  assign M02_SC_R_req[0] = \^M02_SC_R_req [2];
  assign M02_SC_R_send[0] = \^M02_SC_R_send [2];
  assign M03_SC_B_info[0] = \^M03_SC_B_info [3];
  assign M03_SC_B_payld[9:0] = \^M03_SC_B_payld [39:30];
  assign M03_SC_B_req[0] = \^M03_SC_B_req [3];
  assign M03_SC_B_send[0] = \^M03_SC_B_send [3];
  assign M03_SC_R_info = \^M03_SC_R_info [3];
  assign M03_SC_R_payld = \^M03_SC_R_payld [264];
  assign M03_SC_R_req = \^M03_SC_R_req [3];
  assign M03_SC_R_send = \^M03_SC_R_send [3];
  assign S00_SC_AW_recv = \^S00_SC_AW_recv [0];
  assign S00_SC_W_recv = \^S00_SC_W_recv [0];
  assign S01_SC_AR_recv = \^S01_SC_AR_recv [1];
  assign S01_SC_AW_recv[0] = \^S01_SC_AW_recv [1];
  assign S01_SC_W_recv[0] = \^S01_SC_W_recv [1];
  assign S02_SC_AR_recv[0] = \^S02_SC_AR_recv [2];
  assign S02_SC_AW_recv = \^S02_SC_AW_recv [2];
  assign S02_SC_W_recv = \^S02_SC_W_recv [2];
  assign S03_SC_AR_recv = \^S03_SC_AR_recv [3];
  assign S03_SC_AW_recv[0] = \^S03_SC_AW_recv [3];
  assign S03_SC_W_recv[0] = \^S03_SC_W_recv [3];
  bd_fb8b_arsw_0 ar_switchboard
       (.aclk(aclk),
        .aclken(1'b1),
        .m_sc_info(M00_SC_AR_info),
        .m_sc_payld(M00_SC_AR_payld),
        .m_sc_recv(M00_SC_AR_recv),
        .m_sc_req(M00_SC_AR_req),
        .m_sc_send(M00_SC_AR_send),
        .s_sc_info({S03_SC_AR_info,S02_SC_AR_info,S01_SC_AR_info,S00_SC_AR_info}),
        .s_sc_payld({S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S03_SC_AR_payld,S02_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S01_SC_AR_payld,S00_SC_AR_payld}),
        .s_sc_recv({\^S03_SC_AR_recv ,\^S02_SC_AR_recv ,\^S01_SC_AR_recv ,S00_SC_AR_recv}),
        .s_sc_req({S03_SC_AR_req,S02_SC_AR_req,S01_SC_AR_req,S00_SC_AR_req}),
        .s_sc_send({S03_SC_AR_send,S02_SC_AR_send,S01_SC_AR_send,S00_SC_AR_send}));
  bd_fb8b_awsw_0 aw_switchboard
       (.aclk(aclk),
        .aclken(1'b1),
        .m_sc_info(M00_SC_AW_info),
        .m_sc_payld(M00_SC_AW_payld),
        .m_sc_recv(M00_SC_AW_recv),
        .m_sc_req(M00_SC_AW_req),
        .m_sc_send(M00_SC_AW_send),
        .s_sc_info({S03_SC_AW_info,S02_SC_AW_info,S01_SC_AW_info,S00_SC_AW_info}),
        .s_sc_payld({S03_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S02_SC_AW_payld,S01_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld,S00_SC_AW_payld}),
        .s_sc_recv({\^S03_SC_AW_recv ,\^S02_SC_AW_recv ,\^S01_SC_AW_recv ,\^S00_SC_AW_recv }),
        .s_sc_req({S03_SC_AW_req,S02_SC_AW_req,S01_SC_AW_req,S00_SC_AW_req}),
        .s_sc_send({S03_SC_AW_send,S02_SC_AW_send,S01_SC_AW_send,S00_SC_AW_send}));
  bd_fb8b_bsw_0 b_switchboard
       (.aclk(aclk),
        .aclken(1'b1),
        .m_sc_info({\^M03_SC_B_info ,\^M02_SC_B_info ,\^M01_SC_B_info ,\^M00_SC_B_info }),
        .m_sc_payld({\^M03_SC_B_payld ,\^M02_SC_B_payld ,\^M01_SC_B_payld ,\^M00_SC_B_payld }),
        .m_sc_recv({M03_SC_B_recv,M02_SC_B_recv,M01_SC_B_recv,M00_SC_B_recv}),
        .m_sc_req({\^M03_SC_B_req ,\^M02_SC_B_req ,\^M01_SC_B_req ,\^M00_SC_B_req }),
        .m_sc_send({\^M03_SC_B_send ,\^M02_SC_B_send ,\^M01_SC_B_send ,\^M00_SC_B_send }),
        .s_sc_info(S00_SC_B_info),
        .s_sc_payld(S00_SC_B_payld),
        .s_sc_recv(S00_SC_B_recv),
        .s_sc_req(S00_SC_B_req),
        .s_sc_send(S00_SC_B_send));
  bd_fb8b_rsw_0 r_switchboard
       (.aclk(aclk),
        .aclken(1'b1),
        .m_sc_info({\^M03_SC_R_info ,\^M02_SC_R_info ,\^M01_SC_R_info ,M00_SC_R_info}),
        .m_sc_payld({\^M03_SC_R_payld ,\^M02_SC_R_payld ,\^M01_SC_R_payld ,M00_SC_R_payld}),
        .m_sc_recv({M03_SC_R_recv,M02_SC_R_recv,M01_SC_R_recv,M00_SC_R_recv}),
        .m_sc_req({\^M03_SC_R_req ,\^M02_SC_R_req ,\^M01_SC_R_req ,M00_SC_R_req}),
        .m_sc_send({\^M03_SC_R_send ,\^M02_SC_R_send ,\^M01_SC_R_send ,M00_SC_R_send}),
        .s_sc_info(S00_SC_R_info),
        .s_sc_payld(S00_SC_R_payld),
        .s_sc_recv(S00_SC_R_recv),
        .s_sc_req(S00_SC_R_req),
        .s_sc_send(S00_SC_R_send));
  bd_fb8b_wsw_0 w_switchboard
       (.aclk(aclk),
        .aclken(1'b1),
        .m_sc_info(M00_SC_W_info),
        .m_sc_payld(M00_SC_W_payld),
        .m_sc_recv(M00_SC_W_recv),
        .m_sc_req(M00_SC_W_req),
        .m_sc_send(M00_SC_W_send),
        .s_sc_info({S03_SC_W_info,S02_SC_W_info,S01_SC_W_info,S00_SC_W_info}),
        .s_sc_payld({S03_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S02_SC_W_payld,S01_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld,S00_SC_W_payld}),
        .s_sc_recv({\^S03_SC_W_recv ,\^S02_SC_W_recv ,\^S01_SC_W_recv ,\^S00_SC_W_recv }),
        .s_sc_req({S03_SC_W_req,S02_SC_W_req,S01_SC_W_req,S00_SC_W_req}),
        .s_sc_send({S03_SC_W_send,S02_SC_W_send,S01_SC_W_send,S00_SC_W_send}));
endmodule
