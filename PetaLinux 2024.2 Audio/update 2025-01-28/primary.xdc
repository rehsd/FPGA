### HDMI ###################################################################################
# TDMS Clock
set_property -dict {PACKAGE_PIN C18 IOSTANDARD TMDS_33} [get_ports TMDS_clk_n]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD TMDS_33} [get_ports TMDS_clk_p]

# TDMS Data (qty. 3)
set_property -dict {PACKAGE_PIN C19 IOSTANDARD TMDS_33} [get_ports {TMDS_data_n[0]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD TMDS_33} [get_ports {TMDS_data_p[0]}]
set_property -dict {PACKAGE_PIN A19 IOSTANDARD TMDS_33} [get_ports {TMDS_data_n[1]}]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD TMDS_33} [get_ports {TMDS_data_p[1]}]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD TMDS_33} [get_ports {TMDS_data_n[2]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD TMDS_33} [get_ports {TMDS_data_p[2]}]

# HPD
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {HDMI_HPD_tri_i[0]}]

# I2C
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports HDMI_DDC_scl_io]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports HDMI_DDC_sda_io]


### RIGHT I/O Port ##### !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

### VERSION OUTPUT #########################################
#                                                           (IO_L7P_T1_13)
set_property PACKAGE_PIN AA12 [get_ports ver[0]]
set_property IOSTANDARD LVCMOS33 [get_ports ver[0]]

#                                                           (IO_L8P_T1_13)
set_property PACKAGE_PIN AA11 [get_ports ver[1]]
set_property IOSTANDARD LVCMOS33 [get_ports ver[1]]

#                                                           (IO_L9P_T1_DQS_13)
set_property PACKAGE_PIN AB10 [get_ports ver[2]]
set_property IOSTANDARD LVCMOS33 [get_ports ver[2]]


### AUDIO ##################################################

set_property -dict { PACKAGE_PIN AA9  IOSTANDARD LVCMOS33 PULLUP true}      [get_ports { IIC_0_scl_io }];       #IIC_0  I2C SCL       IO_L11P_T1_SRCC_13    AA9      EBBI_RIGHT_42
set_property -dict { PACKAGE_PIN Y9   IOSTANDARD LVCMOS33 PULLUP true}      [get_ports { IIC_0_sda_io }];       #IIC_0  I2C SDA       IO_L12P_T1_SRCC_13    Y9       EBBI_RIGHT_08
set_property -dict { PACKAGE_PIN Y8   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { muten[0] }];           #MUTEN                IO_L12N_T1_SRCC_13    Y8       EBBI_RIGHT_09

set_property -dict { PACKAGE_PIN Y6   IOSTANDARD LVCMOS33 PULLUP false}     [get_ports { mclk_in }];            #I2S_MCLK             IO_L13P_T2_MRCC_13    Y6       EBBI_RIGHT_48 
set_property -dict { PACKAGE_PIN Y5   IOSTANDARD LVCMOS33 PULLUP false}     [get_ports { lrclk_out }];          #I2S_LRCLK            IO_L13N_T2_MRCC_13    Y5       EBBI_RIGHT_49 
set_property -dict { PACKAGE_PIN AA6  IOSTANDARD LVCMOS33 PULLUP false}     [get_ports { sclk_out }];           #I2S_CLK              IO_L14N_T2_SRCC_13    AA6      EBBI_RIGHT_12
set_property -dict { PACKAGE_PIN AB7  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { sdata_0_in }];         #I2S_SDIN             IO_L17P_T2_13         AB7      EBBI_RIGHT_45
#set_property -dict { PACKAGE_PIN Y5   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { lrclk_in }];           #I2S_LRCLK            IO_L13N_T2_MRCC_13    Y5       EBBI_RIGHT_49 
#set_property -dict { PACKAGE_PIN AA6  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { sclk_in }];            #I2S_CLK              IO_L14N_T2_SRCC_13    AA6      EBBI_RIGHT_12

#set_property -dict { PACKAGE_PIN AB5  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { sdata_0_out }];        #I2S_SDOUT            IO_L16P_T2_13         AB5      EBBI_RIGHT_14 
set_property -dict { PACKAGE_PIN AB2  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { sdata_0_out }];        #I2S_SDOUT            IO_L15P_T2_DQS_13     AB2      EBBI_RIGHT_52
 

### SPI_0 ##################################################
# SPI Clock                                                 (IO_L19P_T3_13)
set_property PACKAGE_PIN R6 [get_ports SPI_0_0_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_0_sck_io]

# SPI Master Out Slave In (MOSI)                            (IO_L20P_T3_13)
set_property PACKAGE_PIN T4 [get_ports SPI_0_0_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_0_io0_io]

# SPI Master In Slave Out (MISO)                            (IO_L22P_T3_13)
set_property PACKAGE_PIN U6 [get_ports SPI_0_0_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_0_io1_io]

# SPI Chip Select (CS0)                                     (IO_L21P_T3_DQS_13)
set_property PACKAGE_PIN V5 [get_ports SPI_0_0_ss_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_0_ss_io]

# SPI Chip Select (CS1)                                     (IO_L23P_T3_13)
set_property PACKAGE_PIN V7 [get_ports SPI_0_0_ss1_o]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_0_ss1_o]

# SPI Chip Select (CS2)                                     (IO_L24P_T3_13)
set_property PACKAGE_PIN W6 [get_ports SPI_0_0_ss2_o]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_0_ss2_o]


#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!