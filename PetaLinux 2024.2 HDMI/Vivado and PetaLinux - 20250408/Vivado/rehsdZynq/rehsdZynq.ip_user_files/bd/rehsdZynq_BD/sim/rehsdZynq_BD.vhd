--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
--Date        : Sun Apr  6 21:45:17 2025
--Host        : i14700f-Ubuntu running 64-bit Ubuntu 24.04.2 LTS
--Command     : generate_target rehsdZynq_BD.bd
--Design      : rehsdZynq_BD
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    HDMI_DDC_scl_i : in STD_LOGIC;
    HDMI_DDC_scl_o : out STD_LOGIC;
    HDMI_DDC_scl_t : out STD_LOGIC;
    HDMI_DDC_sda_i : in STD_LOGIC;
    HDMI_DDC_sda_o : out STD_LOGIC;
    HDMI_DDC_sda_t : out STD_LOGIC;
    HDMI_HPD_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    SPI_0_0_io0_i : in STD_LOGIC;
    SPI_0_0_io0_o : out STD_LOGIC;
    SPI_0_0_io0_t : out STD_LOGIC;
    SPI_0_0_io1_i : in STD_LOGIC;
    SPI_0_0_io1_o : out STD_LOGIC;
    SPI_0_0_io1_t : out STD_LOGIC;
    SPI_0_0_sck_i : in STD_LOGIC;
    SPI_0_0_sck_o : out STD_LOGIC;
    SPI_0_0_sck_t : out STD_LOGIC;
    SPI_0_0_ss1_o : out STD_LOGIC;
    SPI_0_0_ss2_o : out STD_LOGIC;
    SPI_0_0_ss_i : in STD_LOGIC;
    SPI_0_0_ss_o : out STD_LOGIC;
    SPI_0_0_ss_t : out STD_LOGIC;
    TMDS2_clk_n : out STD_LOGIC;
    TMDS2_clk_p : out STD_LOGIC;
    TMDS2_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS2_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_clk_n : out STD_LOGIC;
    TMDS_clk_p : out STD_LOGIC;
    TMDS_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    VGA_clock : in STD_LOGIC;
    VGA_hsync : out STD_LOGIC;
    VGA_rgb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    VGA_vsync : out STD_LOGIC;
    lrclk_out : out STD_LOGIC;
    muten : out STD_LOGIC_VECTOR ( 0 to 0 );
    sclk_out : out STD_LOGIC;
    sdata_0_in : in STD_LOGIC;
    sdata_0_out : out STD_LOGIC;
    ver : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of rehsdZynq_BD : entity is "rehsdZynq_BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=rehsdZynq_BD,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=28,numReposBlks=28,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_axi4_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=4,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_axi4_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=7,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_board_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=1,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_clkrst_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=3,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_axi4_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=1,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_axi4_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=5,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_board_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=3,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_clkrst_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=2,""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_axi4_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""=3,""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_clkrst_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""=1,""""""""""""""""""""""""""""""da_board_cnt""""""""""""""""""""""""""""""=2,""""""""""""""""""""""""""""""da_clkrst_cnt""""""""""""""""""""""""""""""=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of rehsdZynq_BD : entity is "rehsdZynq_BD.hwdef";
end rehsdZynq_BD;

architecture STRUCTURE of rehsdZynq_BD is
  component rehsdZynq_BD_axi_vdma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axis_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mm2s_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s2mm_frame_ptr_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component rehsdZynq_BD_axi_vdma_0_0;
  component rehsdZynq_BD_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rehsdZynq_BD_proc_sys_reset_0_0;
  component rehsdZynq_BD_processing_system7_0_0 is
  port (
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    SDIO0_WP : in STD_LOGIC;
    SPI0_SCLK_I : in STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SCLK_T : out STD_LOGIC;
    SPI0_MOSI_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_MOSI_T : out STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MISO_O : out STD_LOGIC;
    SPI0_MISO_T : out STD_LOGIC;
    SPI0_SS_I : in STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    SPI0_SS1_O : out STD_LOGIC;
    SPI0_SS2_O : out STD_LOGIC;
    SPI0_SS_T : out STD_LOGIC;
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_ARVALID : out STD_LOGIC;
    M_AXI_GP1_AWVALID : out STD_LOGIC;
    M_AXI_GP1_BREADY : out STD_LOGIC;
    M_AXI_GP1_RREADY : out STD_LOGIC;
    M_AXI_GP1_WLAST : out STD_LOGIC;
    M_AXI_GP1_WVALID : out STD_LOGIC;
    M_AXI_GP1_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_ACLK : in STD_LOGIC;
    M_AXI_GP1_ARREADY : in STD_LOGIC;
    M_AXI_GP1_AWREADY : in STD_LOGIC;
    M_AXI_GP1_BVALID : in STD_LOGIC;
    M_AXI_GP1_RLAST : in STD_LOGIC;
    M_AXI_GP1_RVALID : in STD_LOGIC;
    M_AXI_GP1_WREADY : in STD_LOGIC;
    M_AXI_GP1_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_ARREADY : out STD_LOGIC;
    S_AXI_HP1_AWREADY : out STD_LOGIC;
    S_AXI_HP1_BVALID : out STD_LOGIC;
    S_AXI_HP1_RLAST : out STD_LOGIC;
    S_AXI_HP1_RVALID : out STD_LOGIC;
    S_AXI_HP1_WREADY : out STD_LOGIC;
    S_AXI_HP1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_ACLK : in STD_LOGIC;
    S_AXI_HP1_ARVALID : in STD_LOGIC;
    S_AXI_HP1_AWVALID : in STD_LOGIC;
    S_AXI_HP1_BREADY : in STD_LOGIC;
    S_AXI_HP1_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_RREADY : in STD_LOGIC;
    S_AXI_HP1_WLAST : in STD_LOGIC;
    S_AXI_HP1_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_WVALID : in STD_LOGIC;
    S_AXI_HP1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 11 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component rehsdZynq_BD_processing_system7_0_0;
  component rehsdZynq_BD_rgb2dvi_0_0 is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aRst_n : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    SerialClk : in STD_LOGIC
  );
  end component rehsdZynq_BD_rgb2dvi_0_0;
  component rehsdZynq_BD_v_axi4s_vid_out_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    fifo_read_level : out STD_LOGIC_VECTOR ( 13 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sof_state_out : out STD_LOGIC
  );
  end component rehsdZynq_BD_v_axi4s_vid_out_0_0;
  component rehsdZynq_BD_v_tc_0_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    sof_state : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    fsync_in : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rehsdZynq_BD_v_tc_0_0;
  component rehsdZynq_BD_axi_dynclk_0_0 is
  port (
    REF_CLK_I : in STD_LOGIC;
    PXL_CLK_O : out STD_LOGIC;
    PXL_CLK_5X_O : out STD_LOGIC;
    LOCKED_O : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC
  );
  end component rehsdZynq_BD_axi_dynclk_0_0;
  component rehsdZynq_BD_axi_gpio_hdmi_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rehsdZynq_BD_axi_gpio_hdmi_0;
  component rehsdZynq_BD_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component rehsdZynq_BD_xlconstant_2_0;
  component rehsdZynq_BD_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC
  );
  end component rehsdZynq_BD_smartconnect_0_0;
  component rehsdZynq_BD_smartconnect_1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC;
    S03_AXI_awready : out STD_LOGIC;
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_wlast : in STD_LOGIC;
    S03_AXI_wvalid : in STD_LOGIC;
    S03_AXI_wready : out STD_LOGIC;
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC;
    S03_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component rehsdZynq_BD_smartconnect_1_0;
  component rehsdZynq_BD_proc_sys_reset_0_2 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rehsdZynq_BD_proc_sys_reset_0_2;
  component rehsdZynq_BD_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component rehsdZynq_BD_xlconcat_0_1;
  component rehsdZynq_BD_clk_wiz_0_1 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_mclk_12_288 : out STD_LOGIC
  );
  end component rehsdZynq_BD_clk_wiz_0_1;
  component rehsdZynq_BD_audio_formatter_0_2 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_mm2s_aclk : in STD_LOGIC;
    m_axis_mm2s_aresetn : in STD_LOGIC;
    aud_mclk : in STD_LOGIC;
    aud_mreset : in STD_LOGIC;
    irq_mm2s : out STD_LOGIC;
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aresetn : in STD_LOGIC;
    irq_s2mm : out STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC
  );
  end component rehsdZynq_BD_audio_formatter_0_2;
  component rehsdZynq_BD_smartconnect_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component rehsdZynq_BD_smartconnect_0_1;
  component rehsdZynq_BD_smartconnect_1_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC
  );
  end component rehsdZynq_BD_smartconnect_1_1;
  component rehsdZynq_BD_i2s_transmitter_0_2 is
  port (
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    aud_mclk : in STD_LOGIC;
    aud_mrst : in STD_LOGIC;
    s_axis_aud_aclk : in STD_LOGIC;
    s_axis_aud_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irq : out STD_LOGIC;
    lrclk_out : out STD_LOGIC;
    sclk_out : out STD_LOGIC;
    sdata_0_out : out STD_LOGIC;
    s_axis_aud_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_aud_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_aud_tvalid : in STD_LOGIC;
    s_axis_aud_tready : out STD_LOGIC
  );
  end component rehsdZynq_BD_i2s_transmitter_0_2;
  component rehsdZynq_BD_i2s_receiver_0_2 is
  port (
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    aud_mclk : in STD_LOGIC;
    aud_mrst : in STD_LOGIC;
    m_axis_aud_aclk : in STD_LOGIC;
    m_axis_aud_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irq : out STD_LOGIC;
    lrclk_in : in STD_LOGIC;
    sclk_in : in STD_LOGIC;
    sdata_0_in : in STD_LOGIC;
    m_axis_aud_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_aud_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_aud_tvalid : out STD_LOGIC;
    m_axis_aud_tready : in STD_LOGIC
  );
  end component rehsdZynq_BD_i2s_receiver_0_2;
  component rehsdZynq_BD_axi_iic_0_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rehsdZynq_BD_axi_iic_0_2;
  component rehsdZynq_BD_VGA_Testing_Top_0_0 is
  port (
    i_Clock : in STD_LOGIC;
    i_VGA_Clock : in STD_LOGIC;
    o_VGA_HSync : out STD_LOGIC;
    o_VGA_VSync : out STD_LOGIC;
    o_VGA_RGB : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component rehsdZynq_BD_VGA_Testing_Top_0_0;
  component rehsdZynq_BD_axi_vdma_0_1 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axis_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mm2s_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s2mm_frame_ptr_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component rehsdZynq_BD_axi_vdma_0_1;
  component rehsdZynq_BD_audio_clock_0_0 is
  port (
    clk_in_100m : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk_out_48k : out STD_LOGIC
  );
  end component rehsdZynq_BD_audio_clock_0_0;
  component rehsdZynq_BD_v_axi4s_vid_out_0_1 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    fifo_read_level : out STD_LOGIC_VECTOR ( 13 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sof_state_out : out STD_LOGIC
  );
  end component rehsdZynq_BD_v_axi4s_vid_out_0_1;
  component rehsdZynq_BD_v_tc_0_1 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    sof_state : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    fsync_in : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rehsdZynq_BD_v_tc_0_1;
  component rehsdZynq_BD_proc_sys_reset_0_3 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rehsdZynq_BD_proc_sys_reset_0_3;
  component rehsdZynq_BD_axi_dynclk_0_1 is
  port (
    REF_CLK_I : in STD_LOGIC;
    PXL_CLK_O : out STD_LOGIC;
    PXL_CLK_5X_O : out STD_LOGIC;
    LOCKED_O : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC
  );
  end component rehsdZynq_BD_axi_dynclk_0_1;
  component rehsdZynq_BD_rehsd_hdmi_0_0 is
  port (
    clk_pixel : in STD_LOGIC;
    clk_pixel_x5 : in STD_LOGIC;
    clk_audio : in STD_LOGIC;
    rgb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    video_enable : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    TMDS2_clk_p : out STD_LOGIC;
    TMDS2_clk_n : out STD_LOGIC;
    TMDS2_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS2_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component rehsdZynq_BD_rehsd_hdmi_0_0;
  signal audio_clock_0_clk_out_48k : STD_LOGIC;
  signal audio_formatter_0_irq_mm2s : STD_LOGIC;
  signal audio_formatter_0_irq_s2mm : STD_LOGIC;
  signal audio_formatter_0_m_axi_mm2s_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal audio_formatter_0_m_axi_mm2s_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_formatter_0_m_axi_mm2s_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_formatter_0_m_axi_mm2s_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal audio_formatter_0_m_axi_mm2s_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_formatter_0_m_axi_mm2s_ARREADY : STD_LOGIC;
  signal audio_formatter_0_m_axi_mm2s_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_formatter_0_m_axi_mm2s_ARUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_formatter_0_m_axi_mm2s_ARVALID : STD_LOGIC;
  signal audio_formatter_0_m_axi_mm2s_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_formatter_0_m_axi_mm2s_RLAST : STD_LOGIC;
  signal audio_formatter_0_m_axi_mm2s_RREADY : STD_LOGIC;
  signal audio_formatter_0_m_axi_mm2s_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_formatter_0_m_axi_mm2s_RVALID : STD_LOGIC;
  signal audio_formatter_0_m_axi_s2mm_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_AWREADY : STD_LOGIC;
  signal audio_formatter_0_m_axi_s2mm_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_AWUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_AWVALID : STD_LOGIC;
  signal audio_formatter_0_m_axi_s2mm_BREADY : STD_LOGIC;
  signal audio_formatter_0_m_axi_s2mm_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_BVALID : STD_LOGIC;
  signal audio_formatter_0_m_axi_s2mm_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_WLAST : STD_LOGIC;
  signal audio_formatter_0_m_axi_s2mm_WREADY : STD_LOGIC;
  signal audio_formatter_0_m_axi_s2mm_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal audio_formatter_0_m_axi_s2mm_WVALID : STD_LOGIC;
  signal audio_formatter_0_m_axis_mm2s_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal audio_formatter_0_m_axis_mm2s_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal audio_formatter_0_m_axis_mm2s_TREADY : STD_LOGIC;
  signal audio_formatter_0_m_axis_mm2s_TVALID : STD_LOGIC;
  signal axi_dynclk_0_LOCKED_O : STD_LOGIC;
  signal axi_dynclk_0_PXL_CLK_5X_O : STD_LOGIC;
  signal axi_dynclk_0_PXL_CLK_O : STD_LOGIC;
  signal axi_dynclk_1_PXL_CLK_5X_O : STD_LOGIC;
  signal axi_dynclk_1_PXL_CLK_O : STD_LOGIC;
  signal axi_gpio_hdmi_ip2intc_irpt : STD_LOGIC;
  signal axi_iic_0_iic2intc_irpt : STD_LOGIC;
  signal axi_peripheral_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_peripheral_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_peripheral_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_peripheral_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_peripheral_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_peripheral_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_peripheral_M04_AXI_BREADY : STD_LOGIC;
  signal axi_peripheral_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_peripheral_M04_AXI_BVALID : STD_LOGIC;
  signal axi_peripheral_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_peripheral_M04_AXI_RREADY : STD_LOGIC;
  signal axi_peripheral_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_peripheral_M04_AXI_RVALID : STD_LOGIC;
  signal axi_peripheral_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_peripheral_M04_AXI_WREADY : STD_LOGIC;
  signal axi_peripheral_M04_AXI_WVALID : STD_LOGIC;
  signal axi_peripheral_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_peripheral_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_peripheral_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_peripheral_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_peripheral_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_peripheral_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_peripheral_M05_AXI_BREADY : STD_LOGIC;
  signal axi_peripheral_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_peripheral_M05_AXI_BVALID : STD_LOGIC;
  signal axi_peripheral_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_peripheral_M05_AXI_RREADY : STD_LOGIC;
  signal axi_peripheral_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_peripheral_M05_AXI_RVALID : STD_LOGIC;
  signal axi_peripheral_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_peripheral_M05_AXI_WREADY : STD_LOGIC;
  signal axi_peripheral_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_peripheral_M05_AXI_WVALID : STD_LOGIC;
  signal axi_peripheral_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_peripheral_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_peripheral_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_peripheral_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_peripheral_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_peripheral_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_peripheral_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_peripheral_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_peripheral_M06_AXI_BREADY : STD_LOGIC;
  signal axi_peripheral_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_peripheral_M06_AXI_BVALID : STD_LOGIC;
  signal axi_peripheral_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_peripheral_M06_AXI_RREADY : STD_LOGIC;
  signal axi_peripheral_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_peripheral_M06_AXI_RVALID : STD_LOGIC;
  signal axi_peripheral_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_peripheral_M06_AXI_WREADY : STD_LOGIC;
  signal axi_peripheral_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_peripheral_M06_AXI_WVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_vdma_0_mm2s_introut : STD_LOGIC;
  signal axi_vdma_0_s2mm_introut : STD_LOGIC;
  signal axi_vdma_1_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_1_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_vdma_1_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_vdma_1_M_AXIS_MM2S_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_1_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_vdma_1_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_1_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_1_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_1_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_1_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_1_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_vdma_1_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_1_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_vdma_1_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_vdma_1_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_1_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_vdma_1_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_1_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_vdma_1_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_vdma_1_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_1_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_vdma_1_mm2s_introut : STD_LOGIC;
  signal axi_vdma_1_s2mm_introut : STD_LOGIC;
  signal clk_wiz_mclk_in_clk_mclk24 : STD_LOGIC;
  signal i2s_receiver_0_irq : STD_LOGIC;
  signal i2s_receiver_0_m_axis_aud_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i2s_receiver_0_m_axis_aud_TID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i2s_receiver_0_m_axis_aud_TREADY : STD_LOGIC;
  signal i2s_receiver_0_m_axis_aud_TVALID : STD_LOGIC;
  signal i2s_transmitter_0_irq : STD_LOGIC;
  signal \^lrclk_out\ : STD_LOGIC;
  signal proc_sys_reset_0_interconnect_aresetn1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_100_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_100_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP1_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP1_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP1_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP1_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP1_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP1_WVALID : STD_LOGIC;
  signal reset_24_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sclk_out\ : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal smartconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal smartconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal smartconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_1_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_1_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_1_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_1_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_1_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_1_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_1_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_1_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_1_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_1_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_1_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_1_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_1_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_1_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal smartconnect_1_M00_AXI_RLAST : STD_LOGIC;
  signal smartconnect_1_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_1_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal smartconnect_1_M00_AXI_WLAST : STD_LOGIC;
  signal smartconnect_1_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_1_M00_AXI_WVALID : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_RLAST : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_WLAST : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_audio_mem_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_audio_mem_M00_AXI_WVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal smartconnect_audio_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal smartconnect_audio_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_periph_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_periph_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_periph_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_periph_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M00_AXI_WVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_audio_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_audio_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_BREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_periph_M01_AXI_BVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_periph_M01_AXI_RREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_periph_M01_AXI_RVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_periph_M01_AXI_WREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M01_AXI_WVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_audio_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_audio_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_BREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_periph_M02_AXI_BVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_periph_M02_AXI_RREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_periph_M02_AXI_RVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_periph_M02_AXI_WREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M02_AXI_WVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_audio_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_audio_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_BREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_periph_M03_AXI_BVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_periph_M03_AXI_RREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_audio_periph_M03_AXI_RVALID : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_audio_periph_M03_AXI_WREADY : STD_LOGIC;
  signal smartconnect_audio_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_audio_periph_M03_AXI_WVALID : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_active_video : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal v_axi4s_vid_out_0_vid_hsync : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_vsync : STD_LOGIC;
  signal v_axi4s_vid_out_0_vtg_ce : STD_LOGIC;
  signal v_axi4s_vid_out_1_locked : STD_LOGIC;
  signal v_axi4s_vid_out_1_vid_active_video : STD_LOGIC;
  signal v_axi4s_vid_out_1_vid_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal v_axi4s_vid_out_1_vtg_ce : STD_LOGIC;
  signal v_tc_0_irq : STD_LOGIC;
  signal v_tc_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_tc_0_vtiming_out_HBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_tc_0_vtiming_out_VBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_VSYNC : STD_LOGIC;
  signal v_tc_1_irq : STD_LOGIC;
  signal v_tc_1_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_tc_1_vtiming_out_HBLANK : STD_LOGIC;
  signal v_tc_1_vtiming_out_HSYNC : STD_LOGIC;
  signal v_tc_1_vtiming_out_VBLANK : STD_LOGIC;
  signal v_tc_1_vtiming_out_VSYNC : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_axi_dynclk_1_LOCKED_O_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_peripheral_M01_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_peripheral_M01_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_peripheral_M02_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_peripheral_M02_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_peripheral_M02_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_peripheral_M03_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_peripheral_M03_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_peripheral_M04_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_peripheral_M04_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_peripheral_M04_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_peripheral_M05_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_peripheral_M05_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_vdma_0_s_axis_s2mm_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_vdma_0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_vdma_0_mm2s_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_vdma_1_s_axis_s2mm_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_vdma_1_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_vdma_1_mm2s_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_vdma_1_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_proc_sys_reset_100_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_100_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_100_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_faster_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_faster_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_faster_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_faster_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reset_12_288_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_reset_12_288_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_12_288_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_12_288_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_audio_mem_M00_AXI_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_audio_mem_M00_AXI_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_audio_periph_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_audio_periph_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_audio_periph_M00_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_audio_periph_M01_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_audio_periph_M01_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_audio_periph_M01_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_audio_periph_M02_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_audio_periph_M02_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_audio_periph_M02_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_audio_periph_M03_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_audio_periph_M03_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_v_axi4s_vid_out_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_sof_state_out_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_v_axi4s_vid_out_0_status_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_axi4s_vid_out_1_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_1_sof_state_out_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_1_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_1_vid_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_1_vid_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_1_vid_hsync_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_1_vid_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_1_vid_vsync_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_1_fifo_read_level_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_v_axi4s_vid_out_1_status_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_tc_0_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_tc_1_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of FIXED_IO_ddr_vrn : signal is "Master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of HDMI_DDC_scl_i : signal is "xilinx.com:interface:iic:1.0 HDMI_DDC SCL_I";
  attribute X_INTERFACE_MODE of HDMI_DDC_scl_i : signal is "Master";
  attribute X_INTERFACE_INFO of HDMI_DDC_scl_o : signal is "xilinx.com:interface:iic:1.0 HDMI_DDC SCL_O";
  attribute X_INTERFACE_INFO of HDMI_DDC_scl_t : signal is "xilinx.com:interface:iic:1.0 HDMI_DDC SCL_T";
  attribute X_INTERFACE_INFO of HDMI_DDC_sda_i : signal is "xilinx.com:interface:iic:1.0 HDMI_DDC SDA_I";
  attribute X_INTERFACE_INFO of HDMI_DDC_sda_o : signal is "xilinx.com:interface:iic:1.0 HDMI_DDC SDA_O";
  attribute X_INTERFACE_INFO of HDMI_DDC_sda_t : signal is "xilinx.com:interface:iic:1.0 HDMI_DDC SDA_T";
  attribute X_INTERFACE_INFO of IIC_0_scl_i : signal is "xilinx.com:interface:iic:1.0 IIC_0 SCL_I";
  attribute X_INTERFACE_MODE of IIC_0_scl_i : signal is "Master";
  attribute X_INTERFACE_INFO of IIC_0_scl_o : signal is "xilinx.com:interface:iic:1.0 IIC_0 SCL_O";
  attribute X_INTERFACE_INFO of IIC_0_scl_t : signal is "xilinx.com:interface:iic:1.0 IIC_0 SCL_T";
  attribute X_INTERFACE_INFO of IIC_0_sda_i : signal is "xilinx.com:interface:iic:1.0 IIC_0 SDA_I";
  attribute X_INTERFACE_INFO of IIC_0_sda_o : signal is "xilinx.com:interface:iic:1.0 IIC_0 SDA_O";
  attribute X_INTERFACE_INFO of IIC_0_sda_t : signal is "xilinx.com:interface:iic:1.0 IIC_0 SDA_T";
  attribute X_INTERFACE_INFO of SPI_0_0_io0_i : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_I";
  attribute X_INTERFACE_MODE of SPI_0_0_io0_i : signal is "Master";
  attribute X_INTERFACE_INFO of SPI_0_0_io0_o : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_O";
  attribute X_INTERFACE_INFO of SPI_0_0_io0_t : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_T";
  attribute X_INTERFACE_INFO of SPI_0_0_io1_i : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_I";
  attribute X_INTERFACE_INFO of SPI_0_0_io1_o : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_O";
  attribute X_INTERFACE_INFO of SPI_0_0_io1_t : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_T";
  attribute X_INTERFACE_INFO of SPI_0_0_sck_i : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_I";
  attribute X_INTERFACE_INFO of SPI_0_0_sck_o : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_O";
  attribute X_INTERFACE_INFO of SPI_0_0_sck_t : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_T";
  attribute X_INTERFACE_INFO of SPI_0_0_ss1_o : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 SS1_O";
  attribute X_INTERFACE_INFO of SPI_0_0_ss2_o : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 SS2_O";
  attribute X_INTERFACE_INFO of SPI_0_0_ss_i : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 SS_I";
  attribute X_INTERFACE_INFO of SPI_0_0_ss_o : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 SS_O";
  attribute X_INTERFACE_INFO of SPI_0_0_ss_t : signal is "xilinx.com:interface:spi:1.0 SPI_0_0 SS_T";
  attribute X_INTERFACE_INFO of TMDS2_clk_n : signal is "xilinx.com:signal:clock:1.0 CLK.TMDS2_CLK_N CLK";
  attribute X_INTERFACE_PARAMETER of TMDS2_clk_n : signal is "XIL_INTERFACENAME CLK.TMDS2_CLK_N, CLK_DOMAIN rehsdZynq_BD_rehsd_hdmi_0_0_TMDS2_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of TMDS2_clk_p : signal is "xilinx.com:signal:clock:1.0 CLK.TMDS2_CLK_P CLK";
  attribute X_INTERFACE_PARAMETER of TMDS2_clk_p : signal is "XIL_INTERFACENAME CLK.TMDS2_CLK_P, CLK_DOMAIN rehsdZynq_BD_rehsd_hdmi_0_0_TMDS2_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of TMDS_clk_n : signal is "digilentinc.com:interface:tmds:1.0 TMDS CLK_N";
  attribute X_INTERFACE_MODE of TMDS_clk_n : signal is "Master";
  attribute X_INTERFACE_INFO of TMDS_clk_p : signal is "digilentinc.com:interface:tmds:1.0 TMDS CLK_P";
  attribute X_INTERFACE_INFO of VGA_clock : signal is "xilinx.com:signal:clock:1.0 CLK.VGA_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of VGA_clock : signal is "XIL_INTERFACENAME CLK.VGA_CLOCK, CLK_DOMAIN rehsdZynq_BD_VGA_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_MODE of DDR_addr : signal is "Master";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of HDMI_HPD_tri_i : signal is "xilinx.com:interface:gpio:1.0 HDMI_HPD TRI_I";
  attribute X_INTERFACE_MODE of HDMI_HPD_tri_i : signal is "Master";
  attribute X_INTERFACE_INFO of TMDS_data_n : signal is "digilentinc.com:interface:tmds:1.0 TMDS DATA_N";
  attribute X_INTERFACE_INFO of TMDS_data_p : signal is "digilentinc.com:interface:tmds:1.0 TMDS DATA_P";
begin
  lrclk_out <= \^lrclk_out\;
  sclk_out <= \^sclk_out\;
VGA_Testing_Top_0: component rehsdZynq_BD_VGA_Testing_Top_0_0
     port map (
      i_Clock => processing_system7_0_FCLK_CLK0,
      i_VGA_Clock => VGA_clock,
      o_VGA_HSync => VGA_hsync,
      o_VGA_RGB(15 downto 0) => VGA_rgb(15 downto 0),
      o_VGA_VSync => VGA_vsync
    );
audio_clock_0: component rehsdZynq_BD_audio_clock_0_0
     port map (
      clk_in_100m => processing_system7_0_FCLK_CLK0,
      clk_out_48k => audio_clock_0_clk_out_48k,
      reset_n => proc_sys_reset_100_peripheral_aresetn(0)
    );
audio_formatter_0: component rehsdZynq_BD_audio_formatter_0_2
     port map (
      aud_mclk => clk_wiz_mclk_in_clk_mclk24,
      aud_mreset => reset_24_peripheral_reset(0),
      irq_mm2s => audio_formatter_0_irq_mm2s,
      irq_s2mm => audio_formatter_0_irq_s2mm,
      m_axi_mm2s_araddr(63 downto 0) => audio_formatter_0_m_axi_mm2s_ARADDR(63 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => audio_formatter_0_m_axi_mm2s_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => audio_formatter_0_m_axi_mm2s_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => audio_formatter_0_m_axi_mm2s_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => audio_formatter_0_m_axi_mm2s_ARPROT(2 downto 0),
      m_axi_mm2s_arready => audio_formatter_0_m_axi_mm2s_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => audio_formatter_0_m_axi_mm2s_ARSIZE(2 downto 0),
      m_axi_mm2s_aruser(3 downto 0) => audio_formatter_0_m_axi_mm2s_ARUSER(3 downto 0),
      m_axi_mm2s_arvalid => audio_formatter_0_m_axi_mm2s_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => audio_formatter_0_m_axi_mm2s_RDATA(31 downto 0),
      m_axi_mm2s_rlast => audio_formatter_0_m_axi_mm2s_RLAST,
      m_axi_mm2s_rready => audio_formatter_0_m_axi_mm2s_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => audio_formatter_0_m_axi_mm2s_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => audio_formatter_0_m_axi_mm2s_RVALID,
      m_axi_s2mm_awaddr(63 downto 0) => audio_formatter_0_m_axi_s2mm_AWADDR(63 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => audio_formatter_0_m_axi_s2mm_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => audio_formatter_0_m_axi_s2mm_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => audio_formatter_0_m_axi_s2mm_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => audio_formatter_0_m_axi_s2mm_AWPROT(2 downto 0),
      m_axi_s2mm_awready => audio_formatter_0_m_axi_s2mm_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => audio_formatter_0_m_axi_s2mm_AWSIZE(2 downto 0),
      m_axi_s2mm_awuser(3 downto 0) => audio_formatter_0_m_axi_s2mm_AWUSER(3 downto 0),
      m_axi_s2mm_awvalid => audio_formatter_0_m_axi_s2mm_AWVALID,
      m_axi_s2mm_bready => audio_formatter_0_m_axi_s2mm_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => audio_formatter_0_m_axi_s2mm_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => audio_formatter_0_m_axi_s2mm_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => audio_formatter_0_m_axi_s2mm_WDATA(31 downto 0),
      m_axi_s2mm_wlast => audio_formatter_0_m_axi_s2mm_WLAST,
      m_axi_s2mm_wready => audio_formatter_0_m_axi_s2mm_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => audio_formatter_0_m_axi_s2mm_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => audio_formatter_0_m_axi_s2mm_WVALID,
      m_axis_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axis_mm2s_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      m_axis_mm2s_tdata(31 downto 0) => audio_formatter_0_m_axis_mm2s_TDATA(31 downto 0),
      m_axis_mm2s_tid(7 downto 0) => audio_formatter_0_m_axis_mm2s_TID(7 downto 0),
      m_axis_mm2s_tready => audio_formatter_0_m_axis_mm2s_TREADY,
      m_axis_mm2s_tvalid => audio_formatter_0_m_axis_mm2s_TVALID,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(11 downto 0) => smartconnect_audio_periph_M00_AXI_ARADDR(11 downto 0),
      s_axi_lite_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axi_lite_arready => smartconnect_audio_periph_M00_AXI_ARREADY,
      s_axi_lite_arvalid => smartconnect_audio_periph_M00_AXI_ARVALID,
      s_axi_lite_awaddr(11 downto 0) => smartconnect_audio_periph_M00_AXI_AWADDR(11 downto 0),
      s_axi_lite_awready => smartconnect_audio_periph_M00_AXI_AWREADY,
      s_axi_lite_awvalid => smartconnect_audio_periph_M00_AXI_AWVALID,
      s_axi_lite_bready => smartconnect_audio_periph_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => smartconnect_audio_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => smartconnect_audio_periph_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => smartconnect_audio_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => smartconnect_audio_periph_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => smartconnect_audio_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => smartconnect_audio_periph_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => smartconnect_audio_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => smartconnect_audio_periph_M00_AXI_WREADY,
      s_axi_lite_wvalid => smartconnect_audio_periph_M00_AXI_WVALID,
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_s2mm_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axis_s2mm_tdata(31 downto 0) => i2s_receiver_0_m_axis_aud_TDATA(31 downto 0),
      s_axis_s2mm_tid(7 downto 3) => B"00000",
      s_axis_s2mm_tid(2 downto 0) => i2s_receiver_0_m_axis_aud_TID(2 downto 0),
      s_axis_s2mm_tready => i2s_receiver_0_m_axis_aud_TREADY,
      s_axis_s2mm_tvalid => i2s_receiver_0_m_axis_aud_TVALID
    );
axi_dynclk_0: component rehsdZynq_BD_axi_dynclk_0_0
     port map (
      LOCKED_O => axi_dynclk_0_LOCKED_O,
      PXL_CLK_5X_O => axi_dynclk_0_PXL_CLK_5X_O,
      PXL_CLK_O => axi_dynclk_0_PXL_CLK_O,
      REF_CLK_I => processing_system7_0_FCLK_CLK0,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(5 downto 0) => smartconnect_0_M00_AXI_ARADDR(5 downto 0),
      s_axi_lite_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axi_lite_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      s_axi_lite_arready => smartconnect_0_M00_AXI_ARREADY,
      s_axi_lite_arvalid => smartconnect_0_M00_AXI_ARVALID,
      s_axi_lite_awaddr(5 downto 0) => smartconnect_0_M00_AXI_AWADDR(5 downto 0),
      s_axi_lite_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      s_axi_lite_awready => smartconnect_0_M00_AXI_AWREADY,
      s_axi_lite_awvalid => smartconnect_0_M00_AXI_AWVALID,
      s_axi_lite_bready => smartconnect_0_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => smartconnect_0_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => smartconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => smartconnect_0_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => smartconnect_0_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => smartconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => smartconnect_0_M00_AXI_WREADY,
      s_axi_lite_wstrb(3 downto 0) => smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_lite_wvalid => smartconnect_0_M00_AXI_WVALID
    );
axi_dynclk_1: component rehsdZynq_BD_axi_dynclk_0_1
     port map (
      LOCKED_O => NLW_axi_dynclk_1_LOCKED_O_UNCONNECTED,
      PXL_CLK_5X_O => axi_dynclk_1_PXL_CLK_5X_O,
      PXL_CLK_O => axi_dynclk_1_PXL_CLK_O,
      REF_CLK_I => processing_system7_0_FCLK_CLK0,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(5 downto 0) => axi_peripheral_M06_AXI_ARADDR(5 downto 0),
      s_axi_lite_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axi_lite_arprot(2 downto 0) => axi_peripheral_M06_AXI_ARPROT(2 downto 0),
      s_axi_lite_arready => axi_peripheral_M06_AXI_ARREADY,
      s_axi_lite_arvalid => axi_peripheral_M06_AXI_ARVALID,
      s_axi_lite_awaddr(5 downto 0) => axi_peripheral_M06_AXI_AWADDR(5 downto 0),
      s_axi_lite_awprot(2 downto 0) => axi_peripheral_M06_AXI_AWPROT(2 downto 0),
      s_axi_lite_awready => axi_peripheral_M06_AXI_AWREADY,
      s_axi_lite_awvalid => axi_peripheral_M06_AXI_AWVALID,
      s_axi_lite_bready => axi_peripheral_M06_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => axi_peripheral_M06_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_peripheral_M06_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_peripheral_M06_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_peripheral_M06_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => axi_peripheral_M06_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_peripheral_M06_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_peripheral_M06_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_peripheral_M06_AXI_WREADY,
      s_axi_lite_wstrb(3 downto 0) => axi_peripheral_M06_AXI_WSTRB(3 downto 0),
      s_axi_lite_wvalid => axi_peripheral_M06_AXI_WVALID
    );
axi_gpio_hdmi: component rehsdZynq_BD_axi_gpio_hdmi_0
     port map (
      gpio_io_i(0) => HDMI_HPD_tri_i(0),
      ip2intc_irpt => axi_gpio_hdmi_ip2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axi_arready => smartconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => smartconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => smartconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => smartconnect_0_M01_AXI_AWVALID,
      s_axi_bready => smartconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => smartconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => smartconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_0_M01_AXI_WVALID
    );
axi_iic_0: component rehsdZynq_BD_axi_iic_0_2
     port map (
      gpo(0) => muten(0),
      iic2intc_irpt => axi_iic_0_iic2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => smartconnect_audio_periph_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axi_arready => smartconnect_audio_periph_M03_AXI_ARREADY,
      s_axi_arvalid => smartconnect_audio_periph_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => smartconnect_audio_periph_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => smartconnect_audio_periph_M03_AXI_AWREADY,
      s_axi_awvalid => smartconnect_audio_periph_M03_AXI_AWVALID,
      s_axi_bready => smartconnect_audio_periph_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_audio_periph_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_audio_periph_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_audio_periph_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => smartconnect_audio_periph_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_audio_periph_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_audio_periph_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_audio_periph_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => smartconnect_audio_periph_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_audio_periph_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_audio_periph_M03_AXI_WVALID,
      scl_i => IIC_0_scl_i,
      scl_o => IIC_0_scl_o,
      scl_t => IIC_0_scl_t,
      sda_i => IIC_0_sda_i,
      sda_o => IIC_0_sda_o,
      sda_t => IIC_0_sda_t
    );
axi_mem: component rehsdZynq_BD_smartconnect_1_0
     port map (
      M00_AXI_araddr(31 downto 0) => smartconnect_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => smartconnect_1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => smartconnect_1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => smartconnect_1_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => smartconnect_1_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => smartconnect_1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => smartconnect_1_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => smartconnect_1_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => smartconnect_1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => smartconnect_1_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => smartconnect_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => smartconnect_1_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => smartconnect_1_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => smartconnect_1_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => smartconnect_1_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => smartconnect_1_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => smartconnect_1_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => smartconnect_1_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => smartconnect_1_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => smartconnect_1_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_1_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => smartconnect_1_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => smartconnect_1_M00_AXI_RLAST,
      M00_AXI_rready => smartconnect_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_1_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => smartconnect_1_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => smartconnect_1_M00_AXI_WLAST,
      M00_AXI_wready => smartconnect_1_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => smartconnect_1_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => smartconnect_1_M00_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => axi_vdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => axi_vdma_0_M_AXI_MM2S_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vdma_0_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(31 downto 0) => axi_vdma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S00_AXI_rlast => axi_vdma_0_M_AXI_MM2S_RLAST,
      S00_AXI_rready => axi_vdma_0_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vdma_0_M_AXI_MM2S_RVALID,
      S01_AXI_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => '0',
      S01_AXI_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => B"0000",
      S01_AXI_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      S01_AXI_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      S01_AXI_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      S01_AXI_wdata(31 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S01_AXI_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      S01_AXI_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      S01_AXI_wstrb(3 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S01_AXI_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      S02_AXI_araddr(31 downto 0) => axi_vdma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => axi_vdma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => axi_vdma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => axi_vdma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      S02_AXI_arlock(0) => '0',
      S02_AXI_arprot(2 downto 0) => axi_vdma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => B"0000",
      S02_AXI_arready => axi_vdma_1_M_AXI_MM2S_ARREADY,
      S02_AXI_arsize(2 downto 0) => axi_vdma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      S02_AXI_arvalid => axi_vdma_1_M_AXI_MM2S_ARVALID,
      S02_AXI_rdata(31 downto 0) => axi_vdma_1_M_AXI_MM2S_RDATA(31 downto 0),
      S02_AXI_rlast => axi_vdma_1_M_AXI_MM2S_RLAST,
      S02_AXI_rready => axi_vdma_1_M_AXI_MM2S_RREADY,
      S02_AXI_rresp(1 downto 0) => axi_vdma_1_M_AXI_MM2S_RRESP(1 downto 0),
      S02_AXI_rvalid => axi_vdma_1_M_AXI_MM2S_RVALID,
      S03_AXI_awaddr(31 downto 0) => axi_vdma_1_M_AXI_S2MM_AWADDR(31 downto 0),
      S03_AXI_awburst(1 downto 0) => axi_vdma_1_M_AXI_S2MM_AWBURST(1 downto 0),
      S03_AXI_awcache(3 downto 0) => axi_vdma_1_M_AXI_S2MM_AWCACHE(3 downto 0),
      S03_AXI_awlen(7 downto 0) => axi_vdma_1_M_AXI_S2MM_AWLEN(7 downto 0),
      S03_AXI_awlock(0) => '0',
      S03_AXI_awprot(2 downto 0) => axi_vdma_1_M_AXI_S2MM_AWPROT(2 downto 0),
      S03_AXI_awqos(3 downto 0) => B"0000",
      S03_AXI_awready => axi_vdma_1_M_AXI_S2MM_AWREADY,
      S03_AXI_awsize(2 downto 0) => axi_vdma_1_M_AXI_S2MM_AWSIZE(2 downto 0),
      S03_AXI_awvalid => axi_vdma_1_M_AXI_S2MM_AWVALID,
      S03_AXI_bready => axi_vdma_1_M_AXI_S2MM_BREADY,
      S03_AXI_bresp(1 downto 0) => axi_vdma_1_M_AXI_S2MM_BRESP(1 downto 0),
      S03_AXI_bvalid => axi_vdma_1_M_AXI_S2MM_BVALID,
      S03_AXI_wdata(31 downto 0) => axi_vdma_1_M_AXI_S2MM_WDATA(31 downto 0),
      S03_AXI_wlast => axi_vdma_1_M_AXI_S2MM_WLAST,
      S03_AXI_wready => axi_vdma_1_M_AXI_S2MM_WREADY,
      S03_AXI_wstrb(3 downto 0) => axi_vdma_1_M_AXI_S2MM_WSTRB(3 downto 0),
      S03_AXI_wvalid => axi_vdma_1_M_AXI_S2MM_WVALID,
      aclk => processing_system7_0_FCLK_CLK1,
      aresetn => proc_sys_reset_0_interconnect_aresetn1(0)
    );
axi_peripheral: component rehsdZynq_BD_smartconnect_0_0
     port map (
      M00_AXI_araddr(5 downto 0) => smartconnect_0_M00_AXI_ARADDR(5 downto 0),
      M00_AXI_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => smartconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => smartconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(5 downto 0) => smartconnect_0_M00_AXI_AWADDR(5 downto 0),
      M00_AXI_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => smartconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => smartconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => smartconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => smartconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => smartconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => smartconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => smartconnect_0_M00_AXI_WVALID,
      M01_AXI_araddr(8 downto 0) => smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arprot(2 downto 0) => NLW_axi_peripheral_M01_AXI_arprot_UNCONNECTED(2 downto 0),
      M01_AXI_arready => smartconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => smartconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(8 downto 0) => smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awprot(2 downto 0) => NLW_axi_peripheral_M01_AXI_awprot_UNCONNECTED(2 downto 0),
      M01_AXI_awready => smartconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => smartconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => smartconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => smartconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => smartconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => smartconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => smartconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => smartconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => smartconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => smartconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => smartconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => smartconnect_0_M01_AXI_WVALID,
      M02_AXI_araddr(8 downto 0) => smartconnect_0_M02_AXI_ARADDR(8 downto 0),
      M02_AXI_arprot(2 downto 0) => NLW_axi_peripheral_M02_AXI_arprot_UNCONNECTED(2 downto 0),
      M02_AXI_arready => smartconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => smartconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(8 downto 0) => smartconnect_0_M02_AXI_AWADDR(8 downto 0),
      M02_AXI_awprot(2 downto 0) => NLW_axi_peripheral_M02_AXI_awprot_UNCONNECTED(2 downto 0),
      M02_AXI_awready => smartconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => smartconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => smartconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => smartconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => smartconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => smartconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => smartconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => smartconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => smartconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => smartconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => smartconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => NLW_axi_peripheral_M02_AXI_wstrb_UNCONNECTED(3 downto 0),
      M02_AXI_wvalid => smartconnect_0_M02_AXI_WVALID,
      M03_AXI_araddr(8 downto 0) => smartconnect_0_M03_AXI_ARADDR(8 downto 0),
      M03_AXI_arprot(2 downto 0) => NLW_axi_peripheral_M03_AXI_arprot_UNCONNECTED(2 downto 0),
      M03_AXI_arready => smartconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => smartconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(8 downto 0) => smartconnect_0_M03_AXI_AWADDR(8 downto 0),
      M03_AXI_awprot(2 downto 0) => NLW_axi_peripheral_M03_AXI_awprot_UNCONNECTED(2 downto 0),
      M03_AXI_awready => smartconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => smartconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => smartconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => smartconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => smartconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => smartconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => smartconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => smartconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => smartconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => smartconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => smartconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => smartconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => smartconnect_0_M03_AXI_WVALID,
      M04_AXI_araddr(8 downto 0) => axi_peripheral_M04_AXI_ARADDR(8 downto 0),
      M04_AXI_arprot(2 downto 0) => NLW_axi_peripheral_M04_AXI_arprot_UNCONNECTED(2 downto 0),
      M04_AXI_arready => axi_peripheral_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_peripheral_M04_AXI_ARVALID,
      M04_AXI_awaddr(8 downto 0) => axi_peripheral_M04_AXI_AWADDR(8 downto 0),
      M04_AXI_awprot(2 downto 0) => NLW_axi_peripheral_M04_AXI_awprot_UNCONNECTED(2 downto 0),
      M04_AXI_awready => axi_peripheral_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_peripheral_M04_AXI_AWVALID,
      M04_AXI_bready => axi_peripheral_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_peripheral_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_peripheral_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_peripheral_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_peripheral_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_peripheral_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_peripheral_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_peripheral_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_peripheral_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => NLW_axi_peripheral_M04_AXI_wstrb_UNCONNECTED(3 downto 0),
      M04_AXI_wvalid => axi_peripheral_M04_AXI_WVALID,
      M05_AXI_araddr(8 downto 0) => axi_peripheral_M05_AXI_ARADDR(8 downto 0),
      M05_AXI_arprot(2 downto 0) => NLW_axi_peripheral_M05_AXI_arprot_UNCONNECTED(2 downto 0),
      M05_AXI_arready => axi_peripheral_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_peripheral_M05_AXI_ARVALID,
      M05_AXI_awaddr(8 downto 0) => axi_peripheral_M05_AXI_AWADDR(8 downto 0),
      M05_AXI_awprot(2 downto 0) => NLW_axi_peripheral_M05_AXI_awprot_UNCONNECTED(2 downto 0),
      M05_AXI_awready => axi_peripheral_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_peripheral_M05_AXI_AWVALID,
      M05_AXI_bready => axi_peripheral_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_peripheral_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_peripheral_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_peripheral_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_peripheral_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_peripheral_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_peripheral_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_peripheral_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_peripheral_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_peripheral_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_peripheral_M05_AXI_WVALID,
      M06_AXI_araddr(5 downto 0) => axi_peripheral_M06_AXI_ARADDR(5 downto 0),
      M06_AXI_arprot(2 downto 0) => axi_peripheral_M06_AXI_ARPROT(2 downto 0),
      M06_AXI_arready => axi_peripheral_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_peripheral_M06_AXI_ARVALID,
      M06_AXI_awaddr(5 downto 0) => axi_peripheral_M06_AXI_AWADDR(5 downto 0),
      M06_AXI_awprot(2 downto 0) => axi_peripheral_M06_AXI_AWPROT(2 downto 0),
      M06_AXI_awready => axi_peripheral_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_peripheral_M06_AXI_AWVALID,
      M06_AXI_bready => axi_peripheral_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_peripheral_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_peripheral_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_peripheral_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_peripheral_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_peripheral_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_peripheral_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_peripheral_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_peripheral_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_peripheral_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_peripheral_M06_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => proc_sys_reset_100_peripheral_aresetn(0)
    );
axi_vdma_0: component rehsdZynq_BD_axi_vdma_0_0
     port map (
      axi_resetn => proc_sys_reset_100_interconnect_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK1,
      m_axi_mm2s_araddr(31 downto 0) => axi_vdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_vdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_vdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_vdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_vdma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_vdma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_vdma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_vdma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_vdma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_vdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_vdma_0_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      m_axis_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axis_mm2s_tdata(31 downto 0) => axi_vdma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_vdma_0_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => axi_vdma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_vdma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tuser(0) => axi_vdma_0_M_AXIS_MM2S_TUSER(0),
      m_axis_mm2s_tvalid => axi_vdma_0_M_AXIS_MM2S_TVALID,
      mm2s_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_mm2s_frame_ptr_out_UNCONNECTED(5 downto 0),
      mm2s_introut => axi_vdma_0_mm2s_introut,
      s2mm_frame_ptr_in(5 downto 0) => B"000000",
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => axi_vdma_0_s2mm_introut,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(8 downto 0) => smartconnect_0_M02_AXI_ARADDR(8 downto 0),
      s_axi_lite_arready => smartconnect_0_M02_AXI_ARREADY,
      s_axi_lite_arvalid => smartconnect_0_M02_AXI_ARVALID,
      s_axi_lite_awaddr(8 downto 0) => smartconnect_0_M02_AXI_AWADDR(8 downto 0),
      s_axi_lite_awready => smartconnect_0_M02_AXI_AWREADY,
      s_axi_lite_awvalid => smartconnect_0_M02_AXI_AWVALID,
      s_axi_lite_bready => smartconnect_0_M02_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => smartconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => smartconnect_0_M02_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => smartconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => smartconnect_0_M02_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => smartconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => smartconnect_0_M02_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => smartconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => smartconnect_0_M02_AXI_WREADY,
      s_axi_lite_wvalid => smartconnect_0_M02_AXI_WVALID,
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_s2mm_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_s2mm_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_tlast => '0',
      s_axis_s2mm_tready => NLW_axi_vdma_0_s_axis_s2mm_tready_UNCONNECTED,
      s_axis_s2mm_tuser(0) => '0',
      s_axis_s2mm_tvalid => '0'
    );
axi_vdma_1: component rehsdZynq_BD_axi_vdma_0_1
     port map (
      axi_resetn => proc_sys_reset_100_interconnect_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK1,
      m_axi_mm2s_araddr(31 downto 0) => axi_vdma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_vdma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_vdma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_vdma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_vdma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_vdma_1_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_vdma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_vdma_1_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_vdma_1_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_vdma_1_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_vdma_1_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_vdma_1_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_vdma_1_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_vdma_1_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_vdma_1_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_vdma_1_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_vdma_1_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_vdma_1_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_vdma_1_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_vdma_1_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_vdma_1_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_vdma_1_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_vdma_1_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_vdma_1_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_vdma_1_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_vdma_1_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_vdma_1_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_vdma_1_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_vdma_1_M_AXI_S2MM_WVALID,
      m_axis_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axis_mm2s_tdata(31 downto 0) => axi_vdma_1_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_vdma_1_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => axi_vdma_1_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_vdma_1_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tuser(0) => axi_vdma_1_M_AXIS_MM2S_TUSER(0),
      m_axis_mm2s_tvalid => axi_vdma_1_M_AXIS_MM2S_TVALID,
      mm2s_frame_ptr_out(5 downto 0) => NLW_axi_vdma_1_mm2s_frame_ptr_out_UNCONNECTED(5 downto 0),
      mm2s_introut => axi_vdma_1_mm2s_introut,
      s2mm_frame_ptr_in(5 downto 0) => B"000000",
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_1_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => axi_vdma_1_s2mm_introut,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(8 downto 0) => axi_peripheral_M04_AXI_ARADDR(8 downto 0),
      s_axi_lite_arready => axi_peripheral_M04_AXI_ARREADY,
      s_axi_lite_arvalid => axi_peripheral_M04_AXI_ARVALID,
      s_axi_lite_awaddr(8 downto 0) => axi_peripheral_M04_AXI_AWADDR(8 downto 0),
      s_axi_lite_awready => axi_peripheral_M04_AXI_AWREADY,
      s_axi_lite_awvalid => axi_peripheral_M04_AXI_AWVALID,
      s_axi_lite_bready => axi_peripheral_M04_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => axi_peripheral_M04_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_peripheral_M04_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_peripheral_M04_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_peripheral_M04_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => axi_peripheral_M04_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_peripheral_M04_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_peripheral_M04_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_peripheral_M04_AXI_WREADY,
      s_axi_lite_wvalid => axi_peripheral_M04_AXI_WVALID,
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_s2mm_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_s2mm_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_tlast => '0',
      s_axis_s2mm_tready => NLW_axi_vdma_1_s_axis_s2mm_tready_UNCONNECTED,
      s_axis_s2mm_tuser(0) => '0',
      s_axis_s2mm_tvalid => '0'
    );
clk_wiz_mclk_in: component rehsdZynq_BD_clk_wiz_0_1
     port map (
      clk_in1 => processing_system7_0_FCLK_CLK0,
      clk_mclk_12_288 => clk_wiz_mclk_in_clk_mclk24,
      resetn => proc_sys_reset_100_peripheral_aresetn(0)
    );
i2s_receiver_0: component rehsdZynq_BD_i2s_receiver_0_2
     port map (
      aud_mclk => clk_wiz_mclk_in_clk_mclk24,
      aud_mrst => reset_24_peripheral_reset(0),
      irq => i2s_receiver_0_irq,
      lrclk_in => \^lrclk_out\,
      m_axis_aud_aclk => processing_system7_0_FCLK_CLK0,
      m_axis_aud_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      m_axis_aud_tdata(31 downto 0) => i2s_receiver_0_m_axis_aud_TDATA(31 downto 0),
      m_axis_aud_tid(2 downto 0) => i2s_receiver_0_m_axis_aud_TID(2 downto 0),
      m_axis_aud_tready => i2s_receiver_0_m_axis_aud_TREADY,
      m_axis_aud_tvalid => i2s_receiver_0_m_axis_aud_TVALID,
      s_axi_ctrl_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_ctrl_araddr(7 downto 0) => smartconnect_audio_periph_M02_AXI_ARADDR(7 downto 0),
      s_axi_ctrl_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axi_ctrl_arready => smartconnect_audio_periph_M02_AXI_ARREADY,
      s_axi_ctrl_arvalid => smartconnect_audio_periph_M02_AXI_ARVALID,
      s_axi_ctrl_awaddr(7 downto 0) => smartconnect_audio_periph_M02_AXI_AWADDR(7 downto 0),
      s_axi_ctrl_awready => smartconnect_audio_periph_M02_AXI_AWREADY,
      s_axi_ctrl_awvalid => smartconnect_audio_periph_M02_AXI_AWVALID,
      s_axi_ctrl_bready => smartconnect_audio_periph_M02_AXI_BREADY,
      s_axi_ctrl_bresp(1 downto 0) => smartconnect_audio_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_ctrl_bvalid => smartconnect_audio_periph_M02_AXI_BVALID,
      s_axi_ctrl_rdata(31 downto 0) => smartconnect_audio_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_ctrl_rready => smartconnect_audio_periph_M02_AXI_RREADY,
      s_axi_ctrl_rresp(1 downto 0) => smartconnect_audio_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_ctrl_rvalid => smartconnect_audio_periph_M02_AXI_RVALID,
      s_axi_ctrl_wdata(31 downto 0) => smartconnect_audio_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_ctrl_wready => smartconnect_audio_periph_M02_AXI_WREADY,
      s_axi_ctrl_wvalid => smartconnect_audio_periph_M02_AXI_WVALID,
      sclk_in => \^sclk_out\,
      sdata_0_in => sdata_0_in
    );
i2s_transmitter_0: component rehsdZynq_BD_i2s_transmitter_0_2
     port map (
      aud_mclk => clk_wiz_mclk_in_clk_mclk24,
      aud_mrst => reset_24_peripheral_reset(0),
      irq => i2s_transmitter_0_irq,
      lrclk_out => \^lrclk_out\,
      s_axi_ctrl_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_ctrl_araddr(7 downto 0) => smartconnect_audio_periph_M01_AXI_ARADDR(7 downto 0),
      s_axi_ctrl_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axi_ctrl_arready => smartconnect_audio_periph_M01_AXI_ARREADY,
      s_axi_ctrl_arvalid => smartconnect_audio_periph_M01_AXI_ARVALID,
      s_axi_ctrl_awaddr(7 downto 0) => smartconnect_audio_periph_M01_AXI_AWADDR(7 downto 0),
      s_axi_ctrl_awready => smartconnect_audio_periph_M01_AXI_AWREADY,
      s_axi_ctrl_awvalid => smartconnect_audio_periph_M01_AXI_AWVALID,
      s_axi_ctrl_bready => smartconnect_audio_periph_M01_AXI_BREADY,
      s_axi_ctrl_bresp(1 downto 0) => smartconnect_audio_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_ctrl_bvalid => smartconnect_audio_periph_M01_AXI_BVALID,
      s_axi_ctrl_rdata(31 downto 0) => smartconnect_audio_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_ctrl_rready => smartconnect_audio_periph_M01_AXI_RREADY,
      s_axi_ctrl_rresp(1 downto 0) => smartconnect_audio_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_ctrl_rvalid => smartconnect_audio_periph_M01_AXI_RVALID,
      s_axi_ctrl_wdata(31 downto 0) => smartconnect_audio_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_ctrl_wready => smartconnect_audio_periph_M01_AXI_WREADY,
      s_axi_ctrl_wvalid => smartconnect_audio_periph_M01_AXI_WVALID,
      s_axis_aud_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aud_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axis_aud_tdata(31 downto 0) => audio_formatter_0_m_axis_mm2s_TDATA(31 downto 0),
      s_axis_aud_tid(2 downto 0) => audio_formatter_0_m_axis_mm2s_TID(2 downto 0),
      s_axis_aud_tready => audio_formatter_0_m_axis_mm2s_TREADY,
      s_axis_aud_tvalid => audio_formatter_0_m_axis_mm2s_TVALID,
      sclk_out => \^sclk_out\,
      sdata_0_out => sdata_0_out
    );
proc_sys_reset_100: component rehsdZynq_BD_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_100_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => proc_sys_reset_100_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_100_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_100_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_100_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
proc_sys_reset_faster: component rehsdZynq_BD_proc_sys_reset_0_3
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_faster_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => proc_sys_reset_0_interconnect_aresetn1(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_faster_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_proc_sys_reset_faster_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_proc_sys_reset_faster_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK1
    );
processing_system7_0: component rehsdZynq_BD_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK1,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      I2C0_SCL_I => HDMI_DDC_scl_i,
      I2C0_SCL_O => HDMI_DDC_scl_o,
      I2C0_SCL_T => HDMI_DDC_scl_t,
      I2C0_SDA_I => HDMI_DDC_sda_i,
      I2C0_SDA_O => HDMI_DDC_sda_o,
      I2C0_SDA_T => HDMI_DDC_sda_t,
      IRQ_F2P(11 downto 0) => xlconcat_0_dout(11 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      M_AXI_GP1_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP1_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP1_ARADDR(31 downto 0),
      M_AXI_GP1_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP1_ARBURST(1 downto 0),
      M_AXI_GP1_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP1_ARCACHE(3 downto 0),
      M_AXI_GP1_ARID(11 downto 0) => processing_system7_0_M_AXI_GP1_ARID(11 downto 0),
      M_AXI_GP1_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP1_ARLEN(3 downto 0),
      M_AXI_GP1_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP1_ARLOCK(1 downto 0),
      M_AXI_GP1_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP1_ARPROT(2 downto 0),
      M_AXI_GP1_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP1_ARQOS(3 downto 0),
      M_AXI_GP1_ARREADY => processing_system7_0_M_AXI_GP1_ARREADY,
      M_AXI_GP1_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP1_ARSIZE(2 downto 0),
      M_AXI_GP1_ARVALID => processing_system7_0_M_AXI_GP1_ARVALID,
      M_AXI_GP1_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP1_AWADDR(31 downto 0),
      M_AXI_GP1_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP1_AWBURST(1 downto 0),
      M_AXI_GP1_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP1_AWCACHE(3 downto 0),
      M_AXI_GP1_AWID(11 downto 0) => processing_system7_0_M_AXI_GP1_AWID(11 downto 0),
      M_AXI_GP1_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP1_AWLEN(3 downto 0),
      M_AXI_GP1_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP1_AWLOCK(1 downto 0),
      M_AXI_GP1_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP1_AWPROT(2 downto 0),
      M_AXI_GP1_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP1_AWQOS(3 downto 0),
      M_AXI_GP1_AWREADY => processing_system7_0_M_AXI_GP1_AWREADY,
      M_AXI_GP1_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP1_AWSIZE(2 downto 0),
      M_AXI_GP1_AWVALID => processing_system7_0_M_AXI_GP1_AWVALID,
      M_AXI_GP1_BID(11 downto 0) => processing_system7_0_M_AXI_GP1_BID(11 downto 0),
      M_AXI_GP1_BREADY => processing_system7_0_M_AXI_GP1_BREADY,
      M_AXI_GP1_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP1_BRESP(1 downto 0),
      M_AXI_GP1_BVALID => processing_system7_0_M_AXI_GP1_BVALID,
      M_AXI_GP1_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP1_RDATA(31 downto 0),
      M_AXI_GP1_RID(11 downto 0) => processing_system7_0_M_AXI_GP1_RID(11 downto 0),
      M_AXI_GP1_RLAST => processing_system7_0_M_AXI_GP1_RLAST,
      M_AXI_GP1_RREADY => processing_system7_0_M_AXI_GP1_RREADY,
      M_AXI_GP1_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP1_RRESP(1 downto 0),
      M_AXI_GP1_RVALID => processing_system7_0_M_AXI_GP1_RVALID,
      M_AXI_GP1_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP1_WDATA(31 downto 0),
      M_AXI_GP1_WID(11 downto 0) => processing_system7_0_M_AXI_GP1_WID(11 downto 0),
      M_AXI_GP1_WLAST => processing_system7_0_M_AXI_GP1_WLAST,
      M_AXI_GP1_WREADY => processing_system7_0_M_AXI_GP1_WREADY,
      M_AXI_GP1_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP1_WSTRB(3 downto 0),
      M_AXI_GP1_WVALID => processing_system7_0_M_AXI_GP1_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      SDIO0_WP => '0',
      SPI0_MISO_I => SPI_0_0_io1_i,
      SPI0_MISO_O => SPI_0_0_io1_o,
      SPI0_MISO_T => SPI_0_0_io1_t,
      SPI0_MOSI_I => SPI_0_0_io0_i,
      SPI0_MOSI_O => SPI_0_0_io0_o,
      SPI0_MOSI_T => SPI_0_0_io0_t,
      SPI0_SCLK_I => SPI_0_0_sck_i,
      SPI0_SCLK_O => SPI_0_0_sck_o,
      SPI0_SCLK_T => SPI_0_0_sck_t,
      SPI0_SS1_O => SPI_0_0_ss1_o,
      SPI0_SS2_O => SPI_0_0_ss2_o,
      SPI0_SS_I => SPI_0_0_ss_i,
      SPI0_SS_O => SPI_0_0_ss_o,
      SPI0_SS_T => SPI_0_0_ss_t,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK1,
      S_AXI_HP0_ARADDR(31 downto 0) => smartconnect_1_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => smartconnect_1_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => smartconnect_1_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => smartconnect_1_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => smartconnect_1_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => smartconnect_1_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => smartconnect_1_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => smartconnect_1_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => smartconnect_1_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => smartconnect_1_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => smartconnect_1_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => smartconnect_1_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => smartconnect_1_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => smartconnect_1_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => smartconnect_1_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => smartconnect_1_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => smartconnect_1_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => smartconnect_1_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => smartconnect_1_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => smartconnect_1_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => smartconnect_1_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => smartconnect_1_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => smartconnect_1_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => smartconnect_1_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => smartconnect_1_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => smartconnect_1_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => smartconnect_1_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => smartconnect_1_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => smartconnect_1_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => smartconnect_1_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => smartconnect_1_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => smartconnect_1_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => smartconnect_1_M00_AXI_WVALID,
      S_AXI_HP1_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP1_ARADDR(31 downto 0) => smartconnect_audio_mem_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP1_ARBURST(1 downto 0) => smartconnect_audio_mem_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP1_ARCACHE(3 downto 0) => smartconnect_audio_mem_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP1_ARID(5 downto 0) => B"000000",
      S_AXI_HP1_ARLEN(3 downto 0) => smartconnect_audio_mem_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP1_ARLOCK(1 downto 0) => smartconnect_audio_mem_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP1_ARPROT(2 downto 0) => smartconnect_audio_mem_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP1_ARQOS(3 downto 0) => smartconnect_audio_mem_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP1_ARREADY => smartconnect_audio_mem_M00_AXI_ARREADY,
      S_AXI_HP1_ARSIZE(2 downto 0) => smartconnect_audio_mem_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP1_ARVALID => smartconnect_audio_mem_M00_AXI_ARVALID,
      S_AXI_HP1_AWADDR(31 downto 0) => smartconnect_audio_mem_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP1_AWBURST(1 downto 0) => smartconnect_audio_mem_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP1_AWCACHE(3 downto 0) => smartconnect_audio_mem_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP1_AWID(5 downto 0) => B"000000",
      S_AXI_HP1_AWLEN(3 downto 0) => smartconnect_audio_mem_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP1_AWLOCK(1 downto 0) => smartconnect_audio_mem_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP1_AWPROT(2 downto 0) => smartconnect_audio_mem_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP1_AWQOS(3 downto 0) => smartconnect_audio_mem_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP1_AWREADY => smartconnect_audio_mem_M00_AXI_AWREADY,
      S_AXI_HP1_AWSIZE(2 downto 0) => smartconnect_audio_mem_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP1_AWVALID => smartconnect_audio_mem_M00_AXI_AWVALID,
      S_AXI_HP1_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_BREADY => smartconnect_audio_mem_M00_AXI_BREADY,
      S_AXI_HP1_BRESP(1 downto 0) => smartconnect_audio_mem_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP1_BVALID => smartconnect_audio_mem_M00_AXI_BVALID,
      S_AXI_HP1_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP1_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_RDATA(63 downto 0) => smartconnect_audio_mem_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP1_RDISSUECAP1_EN => '0',
      S_AXI_HP1_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_RLAST => smartconnect_audio_mem_M00_AXI_RLAST,
      S_AXI_HP1_RREADY => smartconnect_audio_mem_M00_AXI_RREADY,
      S_AXI_HP1_RRESP(1 downto 0) => smartconnect_audio_mem_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP1_RVALID => smartconnect_audio_mem_M00_AXI_RVALID,
      S_AXI_HP1_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP1_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_WDATA(63 downto 0) => smartconnect_audio_mem_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP1_WID(5 downto 0) => B"000000",
      S_AXI_HP1_WLAST => smartconnect_audio_mem_M00_AXI_WLAST,
      S_AXI_HP1_WREADY => smartconnect_audio_mem_M00_AXI_WREADY,
      S_AXI_HP1_WRISSUECAP1_EN => '0',
      S_AXI_HP1_WSTRB(7 downto 0) => smartconnect_audio_mem_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP1_WVALID => smartconnect_audio_mem_M00_AXI_WVALID,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
rehsd_hdmi_0: component rehsdZynq_BD_rehsd_hdmi_0_0
     port map (
      TMDS2_clk_n => TMDS2_clk_n,
      TMDS2_clk_p => TMDS2_clk_p,
      TMDS2_data_n(2 downto 0) => TMDS2_data_n(2 downto 0),
      TMDS2_data_p(2 downto 0) => TMDS2_data_p(2 downto 0),
      aresetn => v_axi4s_vid_out_1_locked,
      clk_audio => audio_clock_0_clk_out_48k,
      clk_pixel => axi_dynclk_1_PXL_CLK_O,
      clk_pixel_x5 => axi_dynclk_1_PXL_CLK_5X_O,
      rgb(31 downto 0) => v_axi4s_vid_out_1_vid_data(31 downto 0),
      video_enable => v_axi4s_vid_out_1_vid_active_video
    );
reset_12_288: component rehsdZynq_BD_proc_sys_reset_0_2
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_reset_12_288_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_reset_12_288_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_reset_12_288_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_reset_12_288_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => reset_24_peripheral_reset(0),
      slowest_sync_clk => clk_wiz_mclk_in_clk_mclk24
    );
rgb2dvi_0: component rehsdZynq_BD_rgb2dvi_0_0
     port map (
      PixelClk => axi_dynclk_0_PXL_CLK_O,
      SerialClk => axi_dynclk_0_PXL_CLK_5X_O,
      TMDS_Clk_n => TMDS_clk_n,
      TMDS_Clk_p => TMDS_clk_p,
      TMDS_Data_n(2 downto 0) => TMDS_data_n(2 downto 0),
      TMDS_Data_p(2 downto 0) => TMDS_data_p(2 downto 0),
      aRst_n => axi_dynclk_0_LOCKED_O,
      vid_pData(23 downto 0) => v_axi4s_vid_out_0_vid_data(23 downto 0),
      vid_pHSync => v_axi4s_vid_out_0_vid_hsync,
      vid_pVDE => v_axi4s_vid_out_0_vid_active_video,
      vid_pVSync => v_axi4s_vid_out_0_vid_vsync
    );
smartconnect_audio_mem: component rehsdZynq_BD_smartconnect_0_1
     port map (
      M00_AXI_araddr(31 downto 0) => smartconnect_audio_mem_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => smartconnect_audio_mem_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => smartconnect_audio_mem_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => smartconnect_audio_mem_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => smartconnect_audio_mem_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => smartconnect_audio_mem_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => smartconnect_audio_mem_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => smartconnect_audio_mem_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => smartconnect_audio_mem_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser(3 downto 0) => NLW_smartconnect_audio_mem_M00_AXI_aruser_UNCONNECTED(3 downto 0),
      M00_AXI_arvalid => smartconnect_audio_mem_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => smartconnect_audio_mem_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => smartconnect_audio_mem_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => smartconnect_audio_mem_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => smartconnect_audio_mem_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => smartconnect_audio_mem_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => smartconnect_audio_mem_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => smartconnect_audio_mem_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => smartconnect_audio_mem_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => smartconnect_audio_mem_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser(3 downto 0) => NLW_smartconnect_audio_mem_M00_AXI_awuser_UNCONNECTED(3 downto 0),
      M00_AXI_awvalid => smartconnect_audio_mem_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_audio_mem_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_audio_mem_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_audio_mem_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => smartconnect_audio_mem_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => smartconnect_audio_mem_M00_AXI_RLAST,
      M00_AXI_rready => smartconnect_audio_mem_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_audio_mem_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_audio_mem_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => smartconnect_audio_mem_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => smartconnect_audio_mem_M00_AXI_WLAST,
      M00_AXI_wready => smartconnect_audio_mem_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => smartconnect_audio_mem_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => smartconnect_audio_mem_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => audio_formatter_0_m_axi_mm2s_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => audio_formatter_0_m_axi_mm2s_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => audio_formatter_0_m_axi_mm2s_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => audio_formatter_0_m_axi_mm2s_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => audio_formatter_0_m_axi_mm2s_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => audio_formatter_0_m_axi_mm2s_ARREADY,
      S00_AXI_arsize(2 downto 0) => audio_formatter_0_m_axi_mm2s_ARSIZE(2 downto 0),
      S00_AXI_aruser(3 downto 0) => audio_formatter_0_m_axi_mm2s_ARUSER(3 downto 0),
      S00_AXI_arvalid => audio_formatter_0_m_axi_mm2s_ARVALID,
      S00_AXI_rdata(31 downto 0) => audio_formatter_0_m_axi_mm2s_RDATA(31 downto 0),
      S00_AXI_rlast => audio_formatter_0_m_axi_mm2s_RLAST,
      S00_AXI_rready => audio_formatter_0_m_axi_mm2s_RREADY,
      S00_AXI_rresp(1 downto 0) => audio_formatter_0_m_axi_mm2s_RRESP(1 downto 0),
      S00_AXI_rvalid => audio_formatter_0_m_axi_mm2s_RVALID,
      S01_AXI_awaddr(63 downto 0) => audio_formatter_0_m_axi_s2mm_AWADDR(63 downto 0),
      S01_AXI_awburst(1 downto 0) => audio_formatter_0_m_axi_s2mm_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => audio_formatter_0_m_axi_s2mm_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => audio_formatter_0_m_axi_s2mm_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => '0',
      S01_AXI_awprot(2 downto 0) => audio_formatter_0_m_axi_s2mm_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => B"0000",
      S01_AXI_awready => audio_formatter_0_m_axi_s2mm_AWREADY,
      S01_AXI_awsize(2 downto 0) => audio_formatter_0_m_axi_s2mm_AWSIZE(2 downto 0),
      S01_AXI_awuser(3 downto 0) => audio_formatter_0_m_axi_s2mm_AWUSER(3 downto 0),
      S01_AXI_awvalid => audio_formatter_0_m_axi_s2mm_AWVALID,
      S01_AXI_bready => audio_formatter_0_m_axi_s2mm_BREADY,
      S01_AXI_bresp(1 downto 0) => audio_formatter_0_m_axi_s2mm_BRESP(1 downto 0),
      S01_AXI_bvalid => audio_formatter_0_m_axi_s2mm_BVALID,
      S01_AXI_wdata(31 downto 0) => audio_formatter_0_m_axi_s2mm_WDATA(31 downto 0),
      S01_AXI_wlast => audio_formatter_0_m_axi_s2mm_WLAST,
      S01_AXI_wready => audio_formatter_0_m_axi_s2mm_WREADY,
      S01_AXI_wstrb(3 downto 0) => audio_formatter_0_m_axi_s2mm_WSTRB(3 downto 0),
      S01_AXI_wvalid => audio_formatter_0_m_axi_s2mm_WVALID,
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => proc_sys_reset_100_peripheral_aresetn(0)
    );
smartconnect_audio_periph: component rehsdZynq_BD_smartconnect_1_1
     port map (
      M00_AXI_araddr(11 downto 0) => smartconnect_audio_periph_M00_AXI_ARADDR(11 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_smartconnect_audio_periph_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => smartconnect_audio_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => smartconnect_audio_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(11 downto 0) => smartconnect_audio_periph_M00_AXI_AWADDR(11 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_smartconnect_audio_periph_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => smartconnect_audio_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => smartconnect_audio_periph_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_audio_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_audio_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_audio_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => smartconnect_audio_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => smartconnect_audio_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_audio_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_audio_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => smartconnect_audio_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => smartconnect_audio_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => NLW_smartconnect_audio_periph_M00_AXI_wstrb_UNCONNECTED(3 downto 0),
      M00_AXI_wvalid => smartconnect_audio_periph_M00_AXI_WVALID,
      M01_AXI_araddr(7 downto 0) => smartconnect_audio_periph_M01_AXI_ARADDR(7 downto 0),
      M01_AXI_arprot(2 downto 0) => NLW_smartconnect_audio_periph_M01_AXI_arprot_UNCONNECTED(2 downto 0),
      M01_AXI_arready => smartconnect_audio_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => smartconnect_audio_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(7 downto 0) => smartconnect_audio_periph_M01_AXI_AWADDR(7 downto 0),
      M01_AXI_awprot(2 downto 0) => NLW_smartconnect_audio_periph_M01_AXI_awprot_UNCONNECTED(2 downto 0),
      M01_AXI_awready => smartconnect_audio_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => smartconnect_audio_periph_M01_AXI_AWVALID,
      M01_AXI_bready => smartconnect_audio_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => smartconnect_audio_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => smartconnect_audio_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => smartconnect_audio_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => smartconnect_audio_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => smartconnect_audio_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => smartconnect_audio_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => smartconnect_audio_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => smartconnect_audio_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => NLW_smartconnect_audio_periph_M01_AXI_wstrb_UNCONNECTED(3 downto 0),
      M01_AXI_wvalid => smartconnect_audio_periph_M01_AXI_WVALID,
      M02_AXI_araddr(7 downto 0) => smartconnect_audio_periph_M02_AXI_ARADDR(7 downto 0),
      M02_AXI_arprot(2 downto 0) => NLW_smartconnect_audio_periph_M02_AXI_arprot_UNCONNECTED(2 downto 0),
      M02_AXI_arready => smartconnect_audio_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => smartconnect_audio_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(7 downto 0) => smartconnect_audio_periph_M02_AXI_AWADDR(7 downto 0),
      M02_AXI_awprot(2 downto 0) => NLW_smartconnect_audio_periph_M02_AXI_awprot_UNCONNECTED(2 downto 0),
      M02_AXI_awready => smartconnect_audio_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => smartconnect_audio_periph_M02_AXI_AWVALID,
      M02_AXI_bready => smartconnect_audio_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => smartconnect_audio_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => smartconnect_audio_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => smartconnect_audio_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => smartconnect_audio_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => smartconnect_audio_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => smartconnect_audio_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => smartconnect_audio_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => smartconnect_audio_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => NLW_smartconnect_audio_periph_M02_AXI_wstrb_UNCONNECTED(3 downto 0),
      M02_AXI_wvalid => smartconnect_audio_periph_M02_AXI_WVALID,
      M03_AXI_araddr(8 downto 0) => smartconnect_audio_periph_M03_AXI_ARADDR(8 downto 0),
      M03_AXI_arprot(2 downto 0) => NLW_smartconnect_audio_periph_M03_AXI_arprot_UNCONNECTED(2 downto 0),
      M03_AXI_arready => smartconnect_audio_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => smartconnect_audio_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(8 downto 0) => smartconnect_audio_periph_M03_AXI_AWADDR(8 downto 0),
      M03_AXI_awprot(2 downto 0) => NLW_smartconnect_audio_periph_M03_AXI_awprot_UNCONNECTED(2 downto 0),
      M03_AXI_awready => smartconnect_audio_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => smartconnect_audio_periph_M03_AXI_AWVALID,
      M03_AXI_bready => smartconnect_audio_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => smartconnect_audio_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => smartconnect_audio_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => smartconnect_audio_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => smartconnect_audio_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => smartconnect_audio_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => smartconnect_audio_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => smartconnect_audio_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => smartconnect_audio_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => smartconnect_audio_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => smartconnect_audio_periph_M03_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP1_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP1_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP1_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP1_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP1_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP1_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP1_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP1_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP1_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP1_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP1_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP1_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP1_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP1_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP1_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP1_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP1_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP1_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP1_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP1_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP1_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP1_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP1_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP1_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP1_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP1_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP1_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP1_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP1_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP1_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP1_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP1_WVALID,
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => proc_sys_reset_100_peripheral_aresetn(0)
    );
v_axi4s_vid_out_0: component rehsdZynq_BD_v_axi4s_vid_out_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      aclken => '1',
      aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      fid => '0',
      fifo_read_level(13 downto 0) => NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED(13 downto 0),
      locked => NLW_v_axi4s_vid_out_0_locked_UNCONNECTED,
      overflow => NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED,
      s_axis_video_tdata(31 downto 0) => axi_vdma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      s_axis_video_tlast => axi_vdma_0_M_AXIS_MM2S_TLAST,
      s_axis_video_tready => axi_vdma_0_M_AXIS_MM2S_TREADY,
      s_axis_video_tuser => axi_vdma_0_M_AXIS_MM2S_TUSER(0),
      s_axis_video_tvalid => axi_vdma_0_M_AXIS_MM2S_TVALID,
      sof_state_out => NLW_v_axi4s_vid_out_0_sof_state_out_UNCONNECTED,
      status(31 downto 0) => NLW_v_axi4s_vid_out_0_status_UNCONNECTED(31 downto 0),
      underflow => NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED,
      vid_active_video => v_axi4s_vid_out_0_vid_active_video,
      vid_data(31 downto 0) => v_axi4s_vid_out_0_vid_data(31 downto 0),
      vid_field_id => NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED,
      vid_hblank => NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED,
      vid_hsync => v_axi4s_vid_out_0_vid_hsync,
      vid_io_out_ce => '1',
      vid_io_out_clk => axi_dynclk_0_PXL_CLK_O,
      vid_io_out_reset => '0',
      vid_vblank => NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED,
      vid_vsync => v_axi4s_vid_out_0_vid_vsync,
      vtg_active_video => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      vtg_ce => v_axi4s_vid_out_0_vtg_ce,
      vtg_field_id => '0',
      vtg_hblank => v_tc_0_vtiming_out_HBLANK,
      vtg_hsync => v_tc_0_vtiming_out_HSYNC,
      vtg_vblank => v_tc_0_vtiming_out_VBLANK,
      vtg_vsync => v_tc_0_vtiming_out_VSYNC
    );
v_axi4s_vid_out_1: component rehsdZynq_BD_v_axi4s_vid_out_0_1
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      aclken => '1',
      aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      fid => '0',
      fifo_read_level(13 downto 0) => NLW_v_axi4s_vid_out_1_fifo_read_level_UNCONNECTED(13 downto 0),
      locked => v_axi4s_vid_out_1_locked,
      overflow => NLW_v_axi4s_vid_out_1_overflow_UNCONNECTED,
      s_axis_video_tdata(31 downto 0) => axi_vdma_1_M_AXIS_MM2S_TDATA(31 downto 0),
      s_axis_video_tlast => axi_vdma_1_M_AXIS_MM2S_TLAST,
      s_axis_video_tready => axi_vdma_1_M_AXIS_MM2S_TREADY,
      s_axis_video_tuser => axi_vdma_1_M_AXIS_MM2S_TUSER(0),
      s_axis_video_tvalid => axi_vdma_1_M_AXIS_MM2S_TVALID,
      sof_state_out => NLW_v_axi4s_vid_out_1_sof_state_out_UNCONNECTED,
      status(31 downto 0) => NLW_v_axi4s_vid_out_1_status_UNCONNECTED(31 downto 0),
      underflow => NLW_v_axi4s_vid_out_1_underflow_UNCONNECTED,
      vid_active_video => v_axi4s_vid_out_1_vid_active_video,
      vid_data(31 downto 0) => v_axi4s_vid_out_1_vid_data(31 downto 0),
      vid_field_id => NLW_v_axi4s_vid_out_1_vid_field_id_UNCONNECTED,
      vid_hblank => NLW_v_axi4s_vid_out_1_vid_hblank_UNCONNECTED,
      vid_hsync => NLW_v_axi4s_vid_out_1_vid_hsync_UNCONNECTED,
      vid_io_out_ce => '1',
      vid_io_out_clk => axi_dynclk_1_PXL_CLK_O,
      vid_io_out_reset => '0',
      vid_vblank => NLW_v_axi4s_vid_out_1_vid_vblank_UNCONNECTED,
      vid_vsync => NLW_v_axi4s_vid_out_1_vid_vsync_UNCONNECTED,
      vtg_active_video => v_tc_1_vtiming_out_ACTIVE_VIDEO,
      vtg_ce => v_axi4s_vid_out_1_vtg_ce,
      vtg_field_id => '0',
      vtg_hblank => v_tc_1_vtiming_out_HBLANK,
      vtg_hsync => v_tc_1_vtiming_out_HSYNC,
      vtg_vblank => v_tc_1_vtiming_out_VBLANK,
      vtg_vsync => v_tc_1_vtiming_out_VSYNC
    );
v_tc_0: component rehsdZynq_BD_v_tc_0_0
     port map (
      active_video_out => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      clk => axi_dynclk_0_PXL_CLK_O,
      clken => '1',
      fsync_in => '0',
      fsync_out(0) => NLW_v_tc_0_fsync_out_UNCONNECTED(0),
      gen_clken => v_axi4s_vid_out_0_vtg_ce,
      hblank_out => v_tc_0_vtiming_out_HBLANK,
      hsync_out => v_tc_0_vtiming_out_HSYNC,
      irq => v_tc_0_irq,
      resetn => '1',
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => smartconnect_0_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axi_arready => smartconnect_0_M03_AXI_ARREADY,
      s_axi_arvalid => smartconnect_0_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => smartconnect_0_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => smartconnect_0_M03_AXI_AWREADY,
      s_axi_awvalid => smartconnect_0_M03_AXI_AWVALID,
      s_axi_bready => smartconnect_0_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_0_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_0_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_0_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => smartconnect_0_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_0_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_0_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_0_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => smartconnect_0_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_0_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_0_M03_AXI_WVALID,
      sof_state => '0',
      vblank_out => v_tc_0_vtiming_out_VBLANK,
      vsync_out => v_tc_0_vtiming_out_VSYNC
    );
v_tc_1: component rehsdZynq_BD_v_tc_0_1
     port map (
      active_video_out => v_tc_1_vtiming_out_ACTIVE_VIDEO,
      clk => axi_dynclk_1_PXL_CLK_O,
      clken => '1',
      fsync_in => '0',
      fsync_out(0) => NLW_v_tc_1_fsync_out_UNCONNECTED(0),
      gen_clken => v_axi4s_vid_out_1_vtg_ce,
      hblank_out => v_tc_1_vtiming_out_HBLANK,
      hsync_out => v_tc_1_vtiming_out_HSYNC,
      irq => v_tc_1_irq,
      resetn => '1',
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => axi_peripheral_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_100_peripheral_aresetn(0),
      s_axi_arready => axi_peripheral_M05_AXI_ARREADY,
      s_axi_arvalid => axi_peripheral_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_peripheral_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_peripheral_M05_AXI_AWREADY,
      s_axi_awvalid => axi_peripheral_M05_AXI_AWVALID,
      s_axi_bready => axi_peripheral_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_peripheral_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_peripheral_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_peripheral_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_peripheral_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_peripheral_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_peripheral_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_peripheral_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_peripheral_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_peripheral_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_peripheral_M05_AXI_WVALID,
      sof_state => '0',
      vblank_out => v_tc_1_vtiming_out_VBLANK,
      vsync_out => v_tc_1_vtiming_out_VSYNC
    );
xlconcat_0: component rehsdZynq_BD_xlconcat_0_1
     port map (
      In0(0) => v_tc_0_irq,
      In1(0) => axi_vdma_0_mm2s_introut,
      In10(0) => axi_vdma_1_s2mm_introut,
      In11(0) => v_tc_1_irq,
      In2(0) => axi_gpio_hdmi_ip2intc_irpt,
      In3(0) => audio_formatter_0_irq_mm2s,
      In4(0) => audio_formatter_0_irq_s2mm,
      In5(0) => i2s_receiver_0_irq,
      In6(0) => i2s_transmitter_0_irq,
      In7(0) => axi_iic_0_iic2intc_irpt,
      In8(0) => axi_vdma_0_s2mm_introut,
      In9(0) => axi_vdma_1_mm2s_introut,
      dout(11 downto 0) => xlconcat_0_dout(11 downto 0)
    );
xlconstant_2: component rehsdZynq_BD_xlconstant_2_0
     port map (
      dout(2 downto 0) => ver(2 downto 0)
    );
end STRUCTURE;
