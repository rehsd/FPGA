
################################################################
# This is a generated script based on design: rehsdZynq_BD
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2024.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   if { [string compare $scripts_vivado_version $current_vivado_version] > 0 } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2042 -severity "ERROR" " This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Sourcing the script failed since it was created with a future version of Vivado."}

   } else {
     catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   }

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source rehsdZynq_BD_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# VGA_Testing_Top, audio_clock

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name rehsdZynq_BD

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axi_vdma:6.3\
xilinx.com:ip:axis_subset_converter:1.1\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:processing_system7:5.5\
digilentinc.com:ip:rgb2dvi:1.4\
xilinx.com:ip:v_axi4s_vid_out:4.0\
xilinx.com:ip:v_tc:6.2\
digilentinc.com:ip:axi_dynclk:1.2\
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:smartconnect:1.0\
xilinx.com:ip:xlconcat:2.1\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:audio_formatter:1.0\
xilinx.com:ip:i2s_transmitter:1.0\
xilinx.com:ip:i2s_receiver:1.0\
xilinx.com:ip:axi_iic:2.1\
rehsd:user:hdmi_wrapper:1.0\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
VGA_Testing_Top\
audio_clock\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  set HDMI_DDC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 HDMI_DDC ]

  set HDMI_HPD [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 HDMI_HPD ]

  set TMDS [ create_bd_intf_port -mode Master -vlnv digilentinc.com:interface:tmds_rtl:1.0 TMDS ]

  set SPI_0_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 SPI_0_0 ]

  set IIC_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_0 ]


  # Create ports
  set ver [ create_bd_port -dir O -from 2 -to 0 ver ]
  set sdata_0_out [ create_bd_port -dir O sdata_0_out ]
  set sdata_0_in [ create_bd_port -dir I sdata_0_in ]
  set muten [ create_bd_port -dir O -from 0 -to 0 muten ]
  set lrclk_out [ create_bd_port -dir O lrclk_out ]
  set sclk_out [ create_bd_port -dir O sclk_out ]
  set VGA_clock [ create_bd_port -dir I -type clk VGA_clock ]
  set VGA_hsync [ create_bd_port -dir O VGA_hsync ]
  set VGA_rgb [ create_bd_port -dir O -from 15 -to 0 VGA_rgb ]
  set VGA_vsync [ create_bd_port -dir O VGA_vsync ]
  set TMDS2_clk_p [ create_bd_port -dir O -type clk TMDS2_clk_p ]
  set TMDS2_clk_n [ create_bd_port -dir O -type clk TMDS2_clk_n ]
  set TMDS2_data_p [ create_bd_port -dir O -from 2 -to 0 TMDS2_data_p ]
  set TMDS2_data_n [ create_bd_port -dir O -from 2 -to 0 TMDS2_data_n ]

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [list \
    CONFIG.c_include_mm2s_dre {0} \
    CONFIG.c_include_s2mm {1} \
    CONFIG.c_m_axi_mm2s_data_width {32} \
    CONFIG.c_m_axi_s2mm_data_width {32} \
    CONFIG.c_m_axis_mm2s_tdata_width {32} \
    CONFIG.c_mm2s_genlock_mode {0} \
    CONFIG.c_mm2s_linebuffer_depth {4096} \
    CONFIG.c_mm2s_max_burst_length {32} \
    CONFIG.c_num_fstores {2} \
    CONFIG.c_s2mm_linebuffer_depth {4096} \
    CONFIG.c_s2mm_max_burst_length {32} \
  ] $axi_vdma_0


  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]
  set_property -dict [list \
    CONFIG.M_HAS_TKEEP {1} \
    CONFIG.M_HAS_TLAST {1} \
    CONFIG.M_HAS_TREADY {1} \
    CONFIG.M_HAS_TSTRB {0} \
    CONFIG.M_TDATA_NUM_BYTES {4} \
    CONFIG.M_TDEST_WIDTH {0} \
    CONFIG.M_TID_WIDTH {0} \
    CONFIG.M_TUSER_WIDTH {1} \
    CONFIG.S_HAS_TKEEP {1} \
    CONFIG.S_HAS_TLAST {1} \
    CONFIG.S_HAS_TREADY {1} \
    CONFIG.S_HAS_TSTRB {0} \
    CONFIG.S_TDATA_NUM_BYTES {4} \
    CONFIG.S_TDEST_WIDTH {0} \
    CONFIG.S_TID_WIDTH {0} \
    CONFIG.S_TUSER_WIDTH {1} \
    CONFIG.TDATA_REMAP {8'b00000000,tdata[23:16],tdata[7:0],tdata[15:8]} \
    CONFIG.TKEEP_REMAP {tkeep[3:0]} \
    CONFIG.TLAST_REMAP {tlast[0]} \
    CONFIG.TUSER_REMAP {tuser[0:0]} \
  ] $axis_subset_converter_0


  # Create instance: proc_sys_reset_100, and set properties
  set proc_sys_reset_100 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_100 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [list \
    CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {866.666687} \
    CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
    CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
    CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
    CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
    CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
    CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
    CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
    CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {142.857132} \
    CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
    CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
    CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
    CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
    CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
    CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
    CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
    CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {166.666672} \
    CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
    CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {144.444443} \
    CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {144.444443} \
    CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {144.444443} \
    CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {144.444443} \
    CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {144.444443} \
    CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {144.444443} \
    CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
    CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
    CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
    CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
    CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {144.444443} \
    CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
    CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {867.0} \
    CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
    CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
    CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
    CONFIG.PCW_CLK0_FREQ {100000000} \
    CONFIG.PCW_CLK1_FREQ {142857132} \
    CONFIG.PCW_CLK2_FREQ {10000000} \
    CONFIG.PCW_CLK3_FREQ {10000000} \
    CONFIG.PCW_CORE0_FIQ_INTR {0} \
    CONFIG.PCW_CORE0_IRQ_INTR {0} \
    CONFIG.PCW_CORE1_FIQ_INTR {0} \
    CONFIG.PCW_CORE1_IRQ_INTR {0} \
    CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {867} \
    CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
    CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
    CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
    CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
    CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
    CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
    CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
    CONFIG.PCW_DM_WIDTH {4} \
    CONFIG.PCW_DQS_WIDTH {4} \
    CONFIG.PCW_DQ_WIDTH {32} \
    CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
    CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
    CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
    CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
    CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
    CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
    CONFIG.PCW_ENET0_RESET_ENABLE {1} \
    CONFIG.PCW_ENET0_RESET_IO {MIO 9} \
    CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_ENET_RESET_ENABLE {1} \
    CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
    CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
    CONFIG.PCW_EN_4K_TIMER {0} \
    CONFIG.PCW_EN_CAN0 {0} \
    CONFIG.PCW_EN_CAN1 {0} \
    CONFIG.PCW_EN_CLK0_PORT {1} \
    CONFIG.PCW_EN_CLK1_PORT {1} \
    CONFIG.PCW_EN_CLK2_PORT {0} \
    CONFIG.PCW_EN_CLK3_PORT {0} \
    CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
    CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
    CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
    CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
    CONFIG.PCW_EN_DDR {1} \
    CONFIG.PCW_EN_EMIO_CAN0 {0} \
    CONFIG.PCW_EN_EMIO_CAN1 {0} \
    CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
    CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
    CONFIG.PCW_EN_EMIO_ENET0 {0} \
    CONFIG.PCW_EN_EMIO_ENET1 {0} \
    CONFIG.PCW_EN_EMIO_GPIO {0} \
    CONFIG.PCW_EN_EMIO_I2C0 {1} \
    CONFIG.PCW_EN_EMIO_I2C1 {0} \
    CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
    CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
    CONFIG.PCW_EN_EMIO_PJTAG {0} \
    CONFIG.PCW_EN_EMIO_SDIO0 {0} \
    CONFIG.PCW_EN_EMIO_SDIO1 {0} \
    CONFIG.PCW_EN_EMIO_SPI0 {1} \
    CONFIG.PCW_EN_EMIO_SPI1 {0} \
    CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
    CONFIG.PCW_EN_EMIO_TRACE {0} \
    CONFIG.PCW_EN_EMIO_TTC0 {1} \
    CONFIG.PCW_EN_EMIO_TTC1 {0} \
    CONFIG.PCW_EN_EMIO_UART0 {0} \
    CONFIG.PCW_EN_EMIO_UART1 {0} \
    CONFIG.PCW_EN_EMIO_WDT {0} \
    CONFIG.PCW_EN_EMIO_WP_SDIO0 {1} \
    CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
    CONFIG.PCW_EN_ENET0 {1} \
    CONFIG.PCW_EN_ENET1 {0} \
    CONFIG.PCW_EN_GPIO {1} \
    CONFIG.PCW_EN_I2C0 {1} \
    CONFIG.PCW_EN_I2C1 {1} \
    CONFIG.PCW_EN_MODEM_UART0 {0} \
    CONFIG.PCW_EN_MODEM_UART1 {0} \
    CONFIG.PCW_EN_PJTAG {0} \
    CONFIG.PCW_EN_PTP_ENET0 {0} \
    CONFIG.PCW_EN_PTP_ENET1 {0} \
    CONFIG.PCW_EN_QSPI {1} \
    CONFIG.PCW_EN_RST0_PORT {1} \
    CONFIG.PCW_EN_RST1_PORT {0} \
    CONFIG.PCW_EN_RST2_PORT {0} \
    CONFIG.PCW_EN_RST3_PORT {0} \
    CONFIG.PCW_EN_SDIO0 {1} \
    CONFIG.PCW_EN_SDIO1 {0} \
    CONFIG.PCW_EN_SMC {0} \
    CONFIG.PCW_EN_SPI0 {1} \
    CONFIG.PCW_EN_SPI1 {0} \
    CONFIG.PCW_EN_TRACE {0} \
    CONFIG.PCW_EN_TTC0 {1} \
    CONFIG.PCW_EN_TTC1 {0} \
    CONFIG.PCW_EN_UART0 {1} \
    CONFIG.PCW_EN_UART1 {0} \
    CONFIG.PCW_EN_USB0 {1} \
    CONFIG.PCW_EN_USB1 {0} \
    CONFIG.PCW_EN_WDT {0} \
    CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
    CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
    CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {140} \
    CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {100} \
    CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
    CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
    CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
    CONFIG.PCW_GP0_EN_MODIFIABLE_TXN {0} \
    CONFIG.PCW_GP0_NUM_READ_THREADS {4} \
    CONFIG.PCW_GP0_NUM_WRITE_THREADS {4} \
    CONFIG.PCW_GP1_EN_MODIFIABLE_TXN {0} \
    CONFIG.PCW_GP1_NUM_READ_THREADS {4} \
    CONFIG.PCW_GP1_NUM_WRITE_THREADS {4} \
    CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
    CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
    CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
    CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
    CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
    CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
    CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
    CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
    CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_I2C0_RESET_ENABLE {0} \
    CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
    CONFIG.PCW_I2C1_I2C1_IO {MIO 12 .. 13} \
    CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {144.444443} \
    CONFIG.PCW_I2C_RESET_ENABLE {1} \
    CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
    CONFIG.PCW_I2C_RESET_SELECT {Share reset pin} \
    CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
    CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
    CONFIG.PCW_IRQ_F2P_INTR {1} \
    CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
    CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_0_PULLUP {enabled} \
    CONFIG.PCW_MIO_0_SLEW {slow} \
    CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_10_PULLUP {enabled} \
    CONFIG.PCW_MIO_10_SLEW {slow} \
    CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_11_PULLUP {enabled} \
    CONFIG.PCW_MIO_11_SLEW {slow} \
    CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_12_PULLUP {enabled} \
    CONFIG.PCW_MIO_12_SLEW {slow} \
    CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_13_PULLUP {enabled} \
    CONFIG.PCW_MIO_13_SLEW {slow} \
    CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_14_PULLUP {enabled} \
    CONFIG.PCW_MIO_14_SLEW {slow} \
    CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_15_PULLUP {enabled} \
    CONFIG.PCW_MIO_15_SLEW {slow} \
    CONFIG.PCW_MIO_16_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_16_PULLUP {disabled} \
    CONFIG.PCW_MIO_16_SLEW {fast} \
    CONFIG.PCW_MIO_17_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_17_PULLUP {disabled} \
    CONFIG.PCW_MIO_17_SLEW {fast} \
    CONFIG.PCW_MIO_18_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_18_PULLUP {disabled} \
    CONFIG.PCW_MIO_18_SLEW {fast} \
    CONFIG.PCW_MIO_19_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_19_PULLUP {disabled} \
    CONFIG.PCW_MIO_19_SLEW {fast} \
    CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_1_PULLUP {disabled} \
    CONFIG.PCW_MIO_1_SLEW {fast} \
    CONFIG.PCW_MIO_20_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_20_PULLUP {disabled} \
    CONFIG.PCW_MIO_20_SLEW {fast} \
    CONFIG.PCW_MIO_21_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_21_PULLUP {disabled} \
    CONFIG.PCW_MIO_21_SLEW {fast} \
    CONFIG.PCW_MIO_22_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_22_PULLUP {disabled} \
    CONFIG.PCW_MIO_22_SLEW {fast} \
    CONFIG.PCW_MIO_23_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_23_PULLUP {disabled} \
    CONFIG.PCW_MIO_23_SLEW {fast} \
    CONFIG.PCW_MIO_24_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_24_PULLUP {disabled} \
    CONFIG.PCW_MIO_24_SLEW {fast} \
    CONFIG.PCW_MIO_25_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_25_PULLUP {disabled} \
    CONFIG.PCW_MIO_25_SLEW {fast} \
    CONFIG.PCW_MIO_26_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_26_PULLUP {disabled} \
    CONFIG.PCW_MIO_26_SLEW {fast} \
    CONFIG.PCW_MIO_27_IOTYPE {HSTL 1.8V} \
    CONFIG.PCW_MIO_27_PULLUP {disabled} \
    CONFIG.PCW_MIO_27_SLEW {fast} \
    CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_28_PULLUP {disabled} \
    CONFIG.PCW_MIO_28_SLEW {fast} \
    CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_29_PULLUP {disabled} \
    CONFIG.PCW_MIO_29_SLEW {fast} \
    CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_2_SLEW {fast} \
    CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_30_PULLUP {disabled} \
    CONFIG.PCW_MIO_30_SLEW {fast} \
    CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_31_PULLUP {disabled} \
    CONFIG.PCW_MIO_31_SLEW {fast} \
    CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_32_PULLUP {disabled} \
    CONFIG.PCW_MIO_32_SLEW {fast} \
    CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_33_PULLUP {disabled} \
    CONFIG.PCW_MIO_33_SLEW {fast} \
    CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_34_PULLUP {disabled} \
    CONFIG.PCW_MIO_34_SLEW {fast} \
    CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_35_PULLUP {disabled} \
    CONFIG.PCW_MIO_35_SLEW {fast} \
    CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_36_PULLUP {disabled} \
    CONFIG.PCW_MIO_36_SLEW {fast} \
    CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_37_PULLUP {disabled} \
    CONFIG.PCW_MIO_37_SLEW {fast} \
    CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_38_PULLUP {disabled} \
    CONFIG.PCW_MIO_38_SLEW {fast} \
    CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_39_PULLUP {disabled} \
    CONFIG.PCW_MIO_39_SLEW {fast} \
    CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_3_SLEW {fast} \
    CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_40_PULLUP {disabled} \
    CONFIG.PCW_MIO_40_SLEW {fast} \
    CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_41_PULLUP {disabled} \
    CONFIG.PCW_MIO_41_SLEW {fast} \
    CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_42_PULLUP {disabled} \
    CONFIG.PCW_MIO_42_SLEW {fast} \
    CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_43_PULLUP {disabled} \
    CONFIG.PCW_MIO_43_SLEW {fast} \
    CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_44_PULLUP {disabled} \
    CONFIG.PCW_MIO_44_SLEW {fast} \
    CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_45_PULLUP {disabled} \
    CONFIG.PCW_MIO_45_SLEW {fast} \
    CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_46_PULLUP {enabled} \
    CONFIG.PCW_MIO_46_SLEW {slow} \
    CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_47_PULLUP {disabled} \
    CONFIG.PCW_MIO_47_SLEW {slow} \
    CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_48_PULLUP {disabled} \
    CONFIG.PCW_MIO_48_SLEW {slow} \
    CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_49_PULLUP {disabled} \
    CONFIG.PCW_MIO_49_SLEW {slow} \
    CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_4_SLEW {fast} \
    CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_50_PULLUP {disabled} \
    CONFIG.PCW_MIO_50_SLEW {slow} \
    CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_51_PULLUP {disabled} \
    CONFIG.PCW_MIO_51_SLEW {slow} \
    CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_52_PULLUP {disabled} \
    CONFIG.PCW_MIO_52_SLEW {slow} \
    CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
    CONFIG.PCW_MIO_53_PULLUP {disabled} \
    CONFIG.PCW_MIO_53_SLEW {slow} \
    CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_5_SLEW {fast} \
    CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_6_SLEW {fast} \
    CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_7_SLEW {slow} \
    CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_8_SLEW {fast} \
    CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
    CONFIG.PCW_MIO_9_PULLUP {enabled} \
    CONFIG.PCW_MIO_9_SLEW {slow} \
    CONFIG.PCW_MIO_PRIMITIVE {54} \
    CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#Quad SPI Flash#ENET Reset#GPIO#GPIO#I2C 1#I2C 1#UART 0#UART 0#Enet\
0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#USB Reset#SD 0#GPIO#GPIO#GPIO#GPIO#Enet\
0#Enet 0} \
    CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#qspi_fbclk#reset#gpio[10]#gpio[11]#scl#sda#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#reset#cd#gpio[48]#gpio[49]#gpio[50]#gpio[51]#mdc#mdio}\
\
    CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
    CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
    CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
    CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
    CONFIG.PCW_NAND_CYCLES_T_AR {1} \
    CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
    CONFIG.PCW_NAND_CYCLES_T_RC {11} \
    CONFIG.PCW_NAND_CYCLES_T_REA {1} \
    CONFIG.PCW_NAND_CYCLES_T_RR {1} \
    CONFIG.PCW_NAND_CYCLES_T_WC {11} \
    CONFIG.PCW_NAND_CYCLES_T_WP {1} \
    CONFIG.PCW_NOR_CS0_T_CEOE {1} \
    CONFIG.PCW_NOR_CS0_T_PC {1} \
    CONFIG.PCW_NOR_CS0_T_RC {11} \
    CONFIG.PCW_NOR_CS0_T_TR {1} \
    CONFIG.PCW_NOR_CS0_T_WC {11} \
    CONFIG.PCW_NOR_CS0_T_WP {1} \
    CONFIG.PCW_NOR_CS0_WE_TIME {0} \
    CONFIG.PCW_NOR_CS1_T_CEOE {1} \
    CONFIG.PCW_NOR_CS1_T_PC {1} \
    CONFIG.PCW_NOR_CS1_T_RC {11} \
    CONFIG.PCW_NOR_CS1_T_TR {1} \
    CONFIG.PCW_NOR_CS1_T_WC {11} \
    CONFIG.PCW_NOR_CS1_T_WP {1} \
    CONFIG.PCW_NOR_CS1_WE_TIME {0} \
    CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
    CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
    CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
    CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
    CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
    CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
    CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
    CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
    CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
    CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
    CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
    CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
    CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
    CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
    CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
    CONFIG.PCW_P2F_ENET0_INTR {0} \
    CONFIG.PCW_P2F_GPIO_INTR {0} \
    CONFIG.PCW_P2F_I2C0_INTR {0} \
    CONFIG.PCW_P2F_QSPI_INTR {0} \
    CONFIG.PCW_P2F_SDIO0_INTR {0} \
    CONFIG.PCW_P2F_UART0_INTR {0} \
    CONFIG.PCW_P2F_USB0_INTR {0} \
    CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.080} \
    CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.063} \
    CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.057} \
    CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.068} \
    CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.047} \
    CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.025} \
    CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.006} \
    CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.017} \
    CONFIG.PCW_PACKAGE_NAME {clg484} \
    CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
    CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} \
    CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
    CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
    CONFIG.PCW_PRESET_BANK1_VOLTAGE {HSTL 1.8V} \
    CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
    CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
    CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
    CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
    CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
    CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
    CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
    CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
    CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
    CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
    CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
    CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
    CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
    CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
    CONFIG.PCW_SD0_GRP_WP_IO {EMIO} \
    CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
    CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
    CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
    CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
    CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
    CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
    CONFIG.PCW_SMC_CYCLE_T0 {NA} \
    CONFIG.PCW_SMC_CYCLE_T1 {NA} \
    CONFIG.PCW_SMC_CYCLE_T2 {NA} \
    CONFIG.PCW_SMC_CYCLE_T3 {NA} \
    CONFIG.PCW_SMC_CYCLE_T4 {NA} \
    CONFIG.PCW_SMC_CYCLE_T5 {NA} \
    CONFIG.PCW_SMC_CYCLE_T6 {NA} \
    CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
    CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_SPI0_SPI0_IO {EMIO} \
    CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
    CONFIG.PCW_SPI_PERIPHERAL_VALID {1} \
    CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
    CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
    CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
    CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
    CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
    CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
    CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
    CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
    CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
    CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
    CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
    CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
    CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
    CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
    CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
    CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
    CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
    CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
    CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
    CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
    CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
    CONFIG.PCW_UART0_BAUD_RATE {115200} \
    CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
    CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
    CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
    CONFIG.PCW_UART1_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
    CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
    CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
    CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
    CONFIG.PCW_UIPARAM_DDR_AL {0} \
    CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
    CONFIG.PCW_UIPARAM_DDR_BL {8} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.25} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.25} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.25} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.25} \
    CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
    CONFIG.PCW_UIPARAM_DDR_CL {7} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {54.563} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {54.563} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {54.563} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {54.563} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
    CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
    CONFIG.PCW_UIPARAM_DDR_CWL {5.000000} \
    CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
    CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {101.239} \
    CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {79.5025} \
    CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {60.536} \
    CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {71.7715} \
    CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.0} \
    CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {104.5365} \
    CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {70.676} \
    CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {59.1615} \
    CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
    CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {81.319} \
    CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
    CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
    CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
    CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {534} \
    CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
    CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3 (Low Voltage)} \
    CONFIG.PCW_UIPARAM_DDR_PARTNO {Custom} \
    CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
    CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1600K} \
    CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
    CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
    CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
    CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
    CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {34.0} \
    CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
    CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
    CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
    CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
    CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
    CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
    CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
    CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_USB0_RESET_ENABLE {1} \
    CONFIG.PCW_USB0_RESET_IO {MIO 46} \
    CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
    CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
    CONFIG.PCW_USB_RESET_ENABLE {1} \
    CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
    CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
    CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
    CONFIG.PCW_USE_AXI_NONSECURE {0} \
    CONFIG.PCW_USE_CORESIGHT {0} \
    CONFIG.PCW_USE_CROSS_TRIGGER {0} \
    CONFIG.PCW_USE_CR_FABRIC {1} \
    CONFIG.PCW_USE_DDR_BYPASS {0} \
    CONFIG.PCW_USE_DEBUG {0} \
    CONFIG.PCW_USE_DMA0 {0} \
    CONFIG.PCW_USE_DMA1 {0} \
    CONFIG.PCW_USE_DMA2 {0} \
    CONFIG.PCW_USE_DMA3 {0} \
    CONFIG.PCW_USE_EXPANDED_IOP {0} \
    CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
    CONFIG.PCW_USE_HIGH_OCM {0} \
    CONFIG.PCW_USE_M_AXI_GP0 {1} \
    CONFIG.PCW_USE_M_AXI_GP1 {1} \
    CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
    CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
    CONFIG.PCW_USE_S_AXI_ACP {0} \
    CONFIG.PCW_USE_S_AXI_GP0 {0} \
    CONFIG.PCW_USE_S_AXI_GP1 {0} \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
    CONFIG.PCW_USE_S_AXI_HP1 {1} \
    CONFIG.PCW_USE_S_AXI_HP2 {0} \
    CONFIG.PCW_USE_S_AXI_HP3 {0} \
    CONFIG.PCW_USE_TRACE {0} \
    CONFIG.PCW_VALUE_SILVERSION {3} \
    CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
    CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
    CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
    CONFIG.preset {Default} \
  ] $processing_system7_0


  # Create instance: rgb2dvi_0, and set properties
  set rgb2dvi_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:rgb2dvi:1.4 rgb2dvi_0 ]
  set_property -dict [list \
    CONFIG.kD0Swap {false} \
    CONFIG.kD1Swap {false} \
    CONFIG.kD2Swap {false} \
    CONFIG.kGenerateSerialClk {false} \
    CONFIG.kRstActiveHigh {false} \
  ] $rgb2dvi_0


  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [list \
    CONFIG.C_ADDR_WIDTH {12} \
    CONFIG.C_HAS_ASYNC_CLK {1} \
    CONFIG.C_PIXELS_PER_CLOCK {1} \
    CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH {8} \
    CONFIG.C_S_AXIS_VIDEO_FORMAT {6} \
    CONFIG.C_VTG_MASTER_SLAVE {1} \
  ] $v_axi4s_vid_out_0


  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.2 v_tc_0 ]
  set_property -dict [list \
    CONFIG.VIDEO_MODE {720p} \
    CONFIG.enable_detection {false} \
  ] $v_tc_0


  # Create instance: axi_dynclk_0, and set properties
  set axi_dynclk_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:axi_dynclk:1.2 axi_dynclk_0 ]

  # Create instance: axi_gpio_hdmi, and set properties
  set axi_gpio_hdmi [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_hdmi ]
  set_property -dict [list \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_GPIO_WIDTH {1} \
    CONFIG.C_INTERRUPT_PRESENT {1} \
    CONFIG.C_IS_DUAL {0} \
  ] $axi_gpio_hdmi


  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [list \
    CONFIG.CONST_VAL {7} \
    CONFIG.CONST_WIDTH {3} \
  ] $xlconstant_2


  # Create instance: axi_peripheral, and set properties
  set axi_peripheral [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_peripheral ]
  set_property -dict [list \
    CONFIG.NUM_CLKS {1} \
    CONFIG.NUM_MI {7} \
    CONFIG.NUM_SI {1} \
  ] $axi_peripheral


  # Create instance: axi_mem, and set properties
  set axi_mem [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_mem ]
  set_property -dict [list \
    CONFIG.NUM_CLKS {1} \
    CONFIG.NUM_MI {1} \
    CONFIG.NUM_SI {4} \
  ] $axi_mem


  # Create instance: reset_12_288, and set properties
  set reset_12_288 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_12_288 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property CONFIG.NUM_PORTS {12} $xlconcat_0


  # Create instance: clk_wiz_mclk_in, and set properties
  set clk_wiz_mclk_in [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_mclk_in ]
  set_property -dict [list \
    CONFIG.CLKOUT1_JITTER {360.948} \
    CONFIG.CLKOUT1_PHASE_ERROR {301.601} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {12.288} \
    CONFIG.CLKOUT2_JITTER {335.213} \
    CONFIG.CLKOUT2_PHASE_ERROR {300.046} \
    CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {100.000} \
    CONFIG.CLKOUT2_USED {false} \
    CONFIG.CLK_OUT1_PORT {clk_mclk_12_288} \
    CONFIG.CLK_OUT2_PORT {clk_out2} \
    CONFIG.MMCM_CLKFBOUT_MULT_F {48.000} \
    CONFIG.MMCM_CLKOUT0_DIVIDE_F {78.125} \
    CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
    CONFIG.MMCM_DIVCLK_DIVIDE {5} \
    CONFIG.NUM_OUT_CLKS {1} \
    CONFIG.RESET_PORT {resetn} \
    CONFIG.RESET_TYPE {ACTIVE_LOW} \
    CONFIG.USE_LOCKED {false} \
  ] $clk_wiz_mclk_in


  # Create instance: audio_formatter_0, and set properties
  set audio_formatter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:audio_formatter:1.0 audio_formatter_0 ]
  set_property -dict [list \
    CONFIG.C_MM2S_DATAFORMAT {3} \
    CONFIG.C_PACKING_MODE_MM2S {0} \
    CONFIG.C_PACKING_MODE_S2MM {0} \
    CONFIG.C_S2MM_DATAFORMAT {1} \
  ] $audio_formatter_0


  # Create instance: smartconnect_audio_mem, and set properties
  set smartconnect_audio_mem [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_audio_mem ]

  # Create instance: smartconnect_audio_periph, and set properties
  set smartconnect_audio_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_audio_periph ]
  set_property -dict [list \
    CONFIG.NUM_MI {4} \
    CONFIG.NUM_SI {1} \
  ] $smartconnect_audio_periph


  # Create instance: i2s_transmitter_0, and set properties
  set i2s_transmitter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:i2s_transmitter:1.0 i2s_transmitter_0 ]
  set_property -dict [list \
    CONFIG.C_32BIT_LR {0} \
    CONFIG.C_DEPTH {64} \
    CONFIG.C_DWIDTH {16} \
  ] $i2s_transmitter_0


  # Create instance: i2s_receiver_0, and set properties
  set i2s_receiver_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:i2s_receiver:1.0 i2s_receiver_0 ]
  set_property -dict [list \
    CONFIG.C_32BIT_LR {0} \
    CONFIG.C_DEPTH {64} \
    CONFIG.C_DWIDTH {16} \
    CONFIG.C_IS_MASTER {0} \
  ] $i2s_receiver_0


  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.1 axi_iic_0 ]

  # Create instance: VGA_Testing_Top_0, and set properties
  set block_name VGA_Testing_Top
  set block_cell_name VGA_Testing_Top_0
  if { [catch {set VGA_Testing_Top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $VGA_Testing_Top_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_vdma_1, and set properties
  set axi_vdma_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_1 ]
  set_property -dict [list \
    CONFIG.c_include_mm2s_dre {0} \
    CONFIG.c_include_s2mm {1} \
    CONFIG.c_include_s2mm_dre {0} \
    CONFIG.c_m_axi_mm2s_data_width {32} \
    CONFIG.c_m_axi_s2mm_data_width {32} \
    CONFIG.c_m_axis_mm2s_tdata_width {32} \
    CONFIG.c_mm2s_genlock_mode {0} \
    CONFIG.c_mm2s_linebuffer_depth {8192} \
    CONFIG.c_mm2s_max_burst_length {32} \
    CONFIG.c_num_fstores {2} \
    CONFIG.c_s2mm_genlock_mode {2} \
    CONFIG.c_s2mm_linebuffer_depth {8192} \
    CONFIG.c_s2mm_max_burst_length {32} \
    CONFIG.c_use_mm2s_fsync {0} \
    CONFIG.c_use_s2mm_fsync {2} \
  ] $axi_vdma_1


  # Create instance: audio_clock_0, and set properties
  set block_name audio_clock
  set block_cell_name audio_clock_0
  if { [catch {set audio_clock_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $audio_clock_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: v_axi4s_vid_out_1, and set properties
  set v_axi4s_vid_out_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_1 ]
  set_property -dict [list \
    CONFIG.C_ADDR_WIDTH {13} \
    CONFIG.C_HAS_ASYNC_CLK {1} \
    CONFIG.C_PIXELS_PER_CLOCK {1} \
    CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH {8} \
    CONFIG.C_S_AXIS_VIDEO_FORMAT {6} \
    CONFIG.C_VTG_MASTER_SLAVE {1} \
  ] $v_axi4s_vid_out_1


  # Create instance: v_tc_1, and set properties
  set v_tc_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.2 v_tc_1 ]
  set_property -dict [list \
    CONFIG.VIDEO_MODE {720p} \
    CONFIG.enable_detection {false} \
  ] $v_tc_1


  # Create instance: proc_sys_reset_faster, and set properties
  set proc_sys_reset_faster [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_faster ]

  # Create instance: axi_dynclk_1, and set properties
  set axi_dynclk_1 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:axi_dynclk:1.2 axi_dynclk_1 ]

  # Create instance: hdmi_wrapper_0, and set properties
  set hdmi_wrapper_0 [ create_bd_cell -type ip -vlnv rehsd:user:hdmi_wrapper:1.0 hdmi_wrapper_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net audio_formatter_0_m_axi_mm2s [get_bd_intf_pins audio_formatter_0/m_axi_mm2s] [get_bd_intf_pins smartconnect_audio_mem/S00_AXI]
  connect_bd_intf_net -intf_net audio_formatter_0_m_axi_s2mm [get_bd_intf_pins audio_formatter_0/m_axi_s2mm] [get_bd_intf_pins smartconnect_audio_mem/S01_AXI]
  connect_bd_intf_net -intf_net audio_formatter_0_m_axis_mm2s [get_bd_intf_pins i2s_transmitter_0/s_axis_aud] [get_bd_intf_pins audio_formatter_0/m_axis_mm2s]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO2 [get_bd_intf_ports HDMI_HPD] [get_bd_intf_pins axi_gpio_hdmi/GPIO]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports IIC_0] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_peripheral_M04_AXI [get_bd_intf_pins axi_peripheral/M04_AXI] [get_bd_intf_pins axi_vdma_1/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_peripheral_M05_AXI [get_bd_intf_pins axi_peripheral/M05_AXI] [get_bd_intf_pins v_tc_1/ctrl]
  connect_bd_intf_net -intf_net axi_peripheral_M06_AXI [get_bd_intf_pins axi_dynclk_1/S_AXI_LITE] [get_bd_intf_pins axi_peripheral/M06_AXI]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins axis_subset_converter_0/S_AXIS]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S] [get_bd_intf_pins axi_mem/S00_AXI]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM] [get_bd_intf_pins axi_mem/S01_AXI]
  connect_bd_intf_net -intf_net axi_vdma_1_M_AXIS_MM2S [get_bd_intf_pins v_axi4s_vid_out_1/video_in] [get_bd_intf_pins axi_vdma_1/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_1_M_AXI_MM2S [get_bd_intf_pins axi_vdma_1/M_AXI_MM2S] [get_bd_intf_pins axi_mem/S02_AXI]
  connect_bd_intf_net -intf_net axi_vdma_1_M_AXI_S2MM [get_bd_intf_pins axi_vdma_1/M_AXI_S2MM] [get_bd_intf_pins axi_mem/S03_AXI]
  connect_bd_intf_net -intf_net axis_subset_converter_0_M_AXIS [get_bd_intf_pins axis_subset_converter_0/M_AXIS] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net i2s_receiver_0_m_axis_aud [get_bd_intf_pins audio_formatter_0/s_axis_s2mm] [get_bd_intf_pins i2s_receiver_0/m_axis_aud]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_0 [get_bd_intf_ports HDMI_DDC] [get_bd_intf_pins processing_system7_0/IIC_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins axi_peripheral/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP1 [get_bd_intf_pins smartconnect_audio_periph/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP1]
  connect_bd_intf_net -intf_net processing_system7_0_SPI_0 [get_bd_intf_ports SPI_0_0] [get_bd_intf_pins processing_system7_0/SPI_0]
  connect_bd_intf_net -intf_net rgb2dvi_0_TMDS [get_bd_intf_ports TMDS] [get_bd_intf_pins rgb2dvi_0/TMDS]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins axi_peripheral/M00_AXI] [get_bd_intf_pins axi_dynclk_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net smartconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_hdmi/S_AXI] [get_bd_intf_pins axi_peripheral/M01_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M02_AXI [get_bd_intf_pins axi_vdma_0/S_AXI_LITE] [get_bd_intf_pins axi_peripheral/M02_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M03_AXI [get_bd_intf_pins v_tc_0/ctrl] [get_bd_intf_pins axi_peripheral/M03_AXI]
  connect_bd_intf_net -intf_net smartconnect_1_M00_AXI [get_bd_intf_pins processing_system7_0/S_AXI_HP0] [get_bd_intf_pins axi_mem/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_audio_mem_M00_AXI [get_bd_intf_pins smartconnect_audio_mem/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP1]
  connect_bd_intf_net -intf_net smartconnect_audio_periph_M00_AXI [get_bd_intf_pins smartconnect_audio_periph/M00_AXI] [get_bd_intf_pins audio_formatter_0/s_axi_lite]
  connect_bd_intf_net -intf_net smartconnect_audio_periph_M01_AXI [get_bd_intf_pins i2s_transmitter_0/s_axi_ctrl] [get_bd_intf_pins smartconnect_audio_periph/M01_AXI]
  connect_bd_intf_net -intf_net smartconnect_audio_periph_M02_AXI [get_bd_intf_pins i2s_receiver_0/s_axi_ctrl] [get_bd_intf_pins smartconnect_audio_periph/M02_AXI]
  connect_bd_intf_net -intf_net smartconnect_audio_periph_M03_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins smartconnect_audio_periph/M03_AXI]
  connect_bd_intf_net -intf_net v_axi4s_vid_out_0_vid_io_out [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out] [get_bd_intf_pins rgb2dvi_0/RGB]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_tc_1_vtiming_out [get_bd_intf_pins v_tc_1/vtiming_out] [get_bd_intf_pins v_axi4s_vid_out_1/vtiming_in]

  # Create port connections
  connect_bd_net -net VGA_Testing_Top_0_o_VGA_HSync  [get_bd_pins VGA_Testing_Top_0/o_VGA_HSync] \
  [get_bd_ports VGA_hsync]
  connect_bd_net -net VGA_Testing_Top_0_o_VGA_RGB  [get_bd_pins VGA_Testing_Top_0/o_VGA_RGB] \
  [get_bd_ports VGA_rgb]
  connect_bd_net -net VGA_Testing_Top_0_o_VGA_VSync  [get_bd_pins VGA_Testing_Top_0/o_VGA_VSync] \
  [get_bd_ports VGA_vsync]
  connect_bd_net -net audio_clock_0_clk_out_48k  [get_bd_pins audio_clock_0/clk_out_48k] \
  [get_bd_pins hdmi_wrapper_0/clk_audio]
  connect_bd_net -net audio_formatter_0_irq_mm2s  [get_bd_pins audio_formatter_0/irq_mm2s] \
  [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net audio_formatter_0_irq_s2mm  [get_bd_pins audio_formatter_0/irq_s2mm] \
  [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net axi_dynclk_0_LOCKED_O  [get_bd_pins axi_dynclk_0/LOCKED_O] \
  [get_bd_pins rgb2dvi_0/aRst_n]
  connect_bd_net -net axi_dynclk_0_PXL_CLK_5X_O  [get_bd_pins axi_dynclk_0/PXL_CLK_5X_O] \
  [get_bd_pins rgb2dvi_0/SerialClk]
  connect_bd_net -net axi_dynclk_0_PXL_CLK_O  [get_bd_pins axi_dynclk_0/PXL_CLK_O] \
  [get_bd_pins rgb2dvi_0/PixelClk] \
  [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] \
  [get_bd_pins v_tc_0/clk]
  connect_bd_net -net axi_dynclk_1_PXL_CLK_5X_O  [get_bd_pins axi_dynclk_1/PXL_CLK_5X_O] \
  [get_bd_pins hdmi_wrapper_0/clk_pixel_x5]
  connect_bd_net -net axi_dynclk_1_PXL_CLK_O  [get_bd_pins axi_dynclk_1/PXL_CLK_O] \
  [get_bd_pins v_axi4s_vid_out_1/vid_io_out_clk] \
  [get_bd_pins v_tc_1/clk] \
  [get_bd_pins hdmi_wrapper_0/clk_pixel]
  connect_bd_net -net axi_gpio_hdmi_ip2intc_irpt  [get_bd_pins axi_gpio_hdmi/ip2intc_irpt] \
  [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net axi_iic_0_gpo  [get_bd_pins axi_iic_0/gpo] \
  [get_bd_ports muten]
  connect_bd_net -net axi_iic_0_iic2intc_irpt  [get_bd_pins axi_iic_0/iic2intc_irpt] \
  [get_bd_pins xlconcat_0/In7]
  connect_bd_net -net axi_vdma_0_mm2s_introut  [get_bd_pins axi_vdma_0/mm2s_introut] \
  [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_vdma_0_s2mm_introut  [get_bd_pins axi_vdma_0/s2mm_introut] \
  [get_bd_pins xlconcat_0/In8]
  connect_bd_net -net axi_vdma_1_mm2s_introut  [get_bd_pins axi_vdma_1/mm2s_introut] \
  [get_bd_pins xlconcat_0/In9]
  connect_bd_net -net axi_vdma_1_s2mm_introut  [get_bd_pins axi_vdma_1/s2mm_introut] \
  [get_bd_pins xlconcat_0/In10]
  connect_bd_net -net clk_wiz_mclk_in_clk_mclk24  [get_bd_pins clk_wiz_mclk_in/clk_mclk_12_288] \
  [get_bd_pins audio_formatter_0/aud_mclk] \
  [get_bd_pins i2s_receiver_0/aud_mclk] \
  [get_bd_pins i2s_transmitter_0/aud_mclk] \
  [get_bd_pins reset_12_288/slowest_sync_clk]
  connect_bd_net -net hdmi_wrapper_0_TMDS2_clk_n  [get_bd_pins hdmi_wrapper_0/TMDS2_clk_n] \
  [get_bd_ports TMDS2_clk_n]
  connect_bd_net -net hdmi_wrapper_0_TMDS2_clk_p  [get_bd_pins hdmi_wrapper_0/TMDS2_clk_p] \
  [get_bd_ports TMDS2_clk_p]
  connect_bd_net -net hdmi_wrapper_0_TMDS2_data_n  [get_bd_pins hdmi_wrapper_0/TMDS2_data_n] \
  [get_bd_ports TMDS2_data_n]
  connect_bd_net -net hdmi_wrapper_0_TMDS2_data_p  [get_bd_pins hdmi_wrapper_0/TMDS2_data_p] \
  [get_bd_ports TMDS2_data_p]
  connect_bd_net -net i2s_receiver_0_irq  [get_bd_pins i2s_receiver_0/irq] \
  [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net i2s_transmitter_0_irq  [get_bd_pins i2s_transmitter_0/irq] \
  [get_bd_pins xlconcat_0/In6]
  connect_bd_net -net i2s_transmitter_0_lrclk_out  [get_bd_pins i2s_transmitter_0/lrclk_out] \
  [get_bd_ports lrclk_out] \
  [get_bd_pins i2s_receiver_0/lrclk_in]
  connect_bd_net -net i2s_transmitter_0_sclk_out  [get_bd_pins i2s_transmitter_0/sclk_out] \
  [get_bd_ports sclk_out] \
  [get_bd_pins i2s_receiver_0/sclk_in]
  connect_bd_net -net i2s_transmitter_0_sdata_0_out  [get_bd_pins i2s_transmitter_0/sdata_0_out] \
  [get_bd_ports sdata_0_out]
  connect_bd_net -net i_VGA_Clock_0_1  [get_bd_ports VGA_clock] \
  [get_bd_pins VGA_Testing_Top_0/i_VGA_Clock]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn1  [get_bd_pins proc_sys_reset_faster/interconnect_aresetn] \
  [get_bd_pins axi_mem/aresetn]
  connect_bd_net -net proc_sys_reset_100_interconnect_aresetn  [get_bd_pins proc_sys_reset_100/interconnect_aresetn] \
  [get_bd_pins axi_vdma_0/axi_resetn] \
  [get_bd_pins axi_vdma_1/axi_resetn]
  connect_bd_net -net proc_sys_reset_100_peripheral_aresetn  [get_bd_pins proc_sys_reset_100/peripheral_aresetn] \
  [get_bd_pins audio_formatter_0/s_axi_lite_aresetn] \
  [get_bd_pins audio_formatter_0/m_axis_mm2s_aresetn] \
  [get_bd_pins audio_formatter_0/s_axis_s2mm_aresetn] \
  [get_bd_pins axi_iic_0/s_axi_aresetn] \
  [get_bd_pins clk_wiz_mclk_in/resetn] \
  [get_bd_pins i2s_receiver_0/s_axi_ctrl_aresetn] \
  [get_bd_pins i2s_receiver_0/m_axis_aud_aresetn] \
  [get_bd_pins i2s_transmitter_0/s_axi_ctrl_aresetn] \
  [get_bd_pins i2s_transmitter_0/s_axis_aud_aresetn] \
  [get_bd_pins smartconnect_audio_mem/aresetn] \
  [get_bd_pins smartconnect_audio_periph/aresetn] \
  [get_bd_pins audio_clock_0/reset_n] \
  [get_bd_pins v_tc_0/s_axi_aresetn] \
  [get_bd_pins axi_gpio_hdmi/s_axi_aresetn] \
  [get_bd_pins axi_dynclk_0/s_axi_lite_aresetn] \
  [get_bd_pins v_tc_1/s_axi_aresetn] \
  [get_bd_pins v_axi4s_vid_out_0/aresetn] \
  [get_bd_pins v_axi4s_vid_out_1/aresetn] \
  [get_bd_pins axi_peripheral/aresetn] \
  [get_bd_pins axis_subset_converter_0/aresetn] \
  [get_bd_pins axi_dynclk_1/s_axi_lite_aresetn] \
  [get_bd_pins hdmi_wrapper_0/aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0  [get_bd_pins processing_system7_0/FCLK_CLK0] \
  [get_bd_pins audio_formatter_0/s_axi_lite_aclk] \
  [get_bd_pins audio_formatter_0/m_axis_mm2s_aclk] \
  [get_bd_pins audio_formatter_0/s_axis_s2mm_aclk] \
  [get_bd_pins axi_dynclk_0/REF_CLK_I] \
  [get_bd_pins axi_dynclk_0/s_axi_lite_aclk] \
  [get_bd_pins axi_gpio_hdmi/s_axi_aclk] \
  [get_bd_pins axi_iic_0/s_axi_aclk] \
  [get_bd_pins axi_vdma_0/s_axi_lite_aclk] \
  [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] \
  [get_bd_pins clk_wiz_mclk_in/clk_in1] \
  [get_bd_pins i2s_receiver_0/s_axi_ctrl_aclk] \
  [get_bd_pins i2s_receiver_0/m_axis_aud_aclk] \
  [get_bd_pins i2s_transmitter_0/s_axi_ctrl_aclk] \
  [get_bd_pins i2s_transmitter_0/s_axis_aud_aclk] \
  [get_bd_pins proc_sys_reset_100/slowest_sync_clk] \
  [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] \
  [get_bd_pins processing_system7_0/M_AXI_GP1_ACLK] \
  [get_bd_pins axi_peripheral/aclk] \
  [get_bd_pins smartconnect_audio_mem/aclk] \
  [get_bd_pins smartconnect_audio_periph/aclk] \
  [get_bd_pins v_tc_0/s_axi_aclk] \
  [get_bd_pins VGA_Testing_Top_0/i_Clock] \
  [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] \
  [get_bd_pins v_axi4s_vid_out_0/aclk] \
  [get_bd_pins axis_subset_converter_0/aclk] \
  [get_bd_pins processing_system7_0/S_AXI_HP1_ACLK] \
  [get_bd_pins audio_clock_0/clk_in_100m] \
  [get_bd_pins v_axi4s_vid_out_1/aclk] \
  [get_bd_pins v_tc_1/s_axi_aclk] \
  [get_bd_pins axi_vdma_1/s_axis_s2mm_aclk] \
  [get_bd_pins axi_vdma_1/m_axis_mm2s_aclk] \
  [get_bd_pins axi_vdma_1/s_axi_lite_aclk] \
  [get_bd_pins axi_dynclk_1/REF_CLK_I] \
  [get_bd_pins axi_dynclk_1/s_axi_lite_aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1  [get_bd_pins processing_system7_0/FCLK_CLK1] \
  [get_bd_pins axi_vdma_1/m_axi_mm2s_aclk] \
  [get_bd_pins axi_vdma_1/m_axi_s2mm_aclk] \
  [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] \
  [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] \
  [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] \
  [get_bd_pins axi_mem/aclk] \
  [get_bd_pins proc_sys_reset_faster/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N  [get_bd_pins processing_system7_0/FCLK_RESET0_N] \
  [get_bd_pins proc_sys_reset_100/ext_reset_in] \
  [get_bd_pins reset_12_288/ext_reset_in] \
  [get_bd_pins proc_sys_reset_faster/ext_reset_in]
  connect_bd_net -net reset_24_peripheral_reset  [get_bd_pins reset_12_288/peripheral_reset] \
  [get_bd_pins audio_formatter_0/aud_mreset] \
  [get_bd_pins i2s_receiver_0/aud_mrst] \
  [get_bd_pins i2s_transmitter_0/aud_mrst]
  connect_bd_net -net sdata_0_in_1  [get_bd_ports sdata_0_in] \
  [get_bd_pins i2s_receiver_0/sdata_0_in]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce  [get_bd_pins v_axi4s_vid_out_0/vtg_ce] \
  [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net v_axi4s_vid_out_1_vid_active_video  [get_bd_pins v_axi4s_vid_out_1/vid_active_video] \
  [get_bd_pins hdmi_wrapper_0/vde]
  connect_bd_net -net v_axi4s_vid_out_1_vid_data  [get_bd_pins v_axi4s_vid_out_1/vid_data] \
  [get_bd_pins hdmi_wrapper_0/data]
  connect_bd_net -net v_axi4s_vid_out_1_vid_hsync  [get_bd_pins v_axi4s_vid_out_1/vid_hsync] \
  [get_bd_pins hdmi_wrapper_0/hsync]
  connect_bd_net -net v_axi4s_vid_out_1_vid_vsync  [get_bd_pins v_axi4s_vid_out_1/vid_vsync] \
  [get_bd_pins hdmi_wrapper_0/vsync]
  connect_bd_net -net v_axi4s_vid_out_1_vtg_ce  [get_bd_pins v_axi4s_vid_out_1/vtg_ce] \
  [get_bd_pins v_tc_1/gen_clken]
  connect_bd_net -net v_tc_0_irq  [get_bd_pins v_tc_0/irq] \
  [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net v_tc_1_irq  [get_bd_pins v_tc_1/irq] \
  [get_bd_pins xlconcat_0/In11]
  connect_bd_net -net xlconcat_0_dout  [get_bd_pins xlconcat_0/dout] \
  [get_bd_pins processing_system7_0/IRQ_F2P]
  connect_bd_net -net xlconstant_2_dout  [get_bd_pins xlconstant_2/dout] \
  [get_bd_ports ver]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x83C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs audio_formatter_0/s_axi_lite/reg0] -force
  assign_bd_address -offset 0x43C10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dynclk_0/S_AXI_LITE/S_AXI_LITE_reg] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dynclk_1/S_AXI_LITE/S_AXI_LITE_reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_hdmi/S_AXI/Reg] -force
  assign_bd_address -offset 0x81600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x43000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x43010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_1/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x83C10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs i2s_receiver_0/s_axi_ctrl/Reg] -force
  assign_bd_address -offset 0x83C20000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs i2s_transmitter_0/s_axi_ctrl/Reg] -force
  assign_bd_address -offset 0x43C40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs v_tc_0/ctrl/Reg] -force
  assign_bd_address -offset 0x43C20000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs v_tc_1/ctrl/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces audio_formatter_0/m_axi_mm2s] [get_bd_addr_segs processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces audio_formatter_0/m_axi_s2mm] [get_bd_addr_segs processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces axi_vdma_1/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces axi_vdma_1/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


