# Last updated 18 MARCH 2025

### HDMI PRIMARY ################################################################################
#
set_property -dict { PACKAGE_PIN C18  IOSTANDARD TMDS_33  PULLUP false }    [get_ports TMDS_clk_n];             # TMDS CLK N
set_property -dict { PACKAGE_PIN C17  IOSTANDARD TMDS_33  PULLUP false }    [get_ports TMDS_clk_p];             # TMDS CLK P

set_property -dict { PACKAGE_PIN C19  IOSTANDARD TMDS_33  PULLUP false }    [get_ports {TMDS_data_n[0]}];       # TMDS DATA0 N
set_property -dict { PACKAGE_PIN D18  IOSTANDARD TMDS_33  PULLUP false }    [get_ports {TMDS_data_p[0]}];       # TMDS DATA0 P
set_property -dict { PACKAGE_PIN A19  IOSTANDARD TMDS_33  PULLUP false }    [get_ports {TMDS_data_n[1]}];       # TMDS DATA1 N
set_property -dict { PACKAGE_PIN A18  IOSTANDARD TMDS_33  PULLUP false }    [get_ports {TMDS_data_p[1]}];       # TMDS DATA1 P
set_property -dict { PACKAGE_PIN C20  IOSTANDARD TMDS_33  PULLUP false }    [get_ports {TMDS_data_n[2]}];       # TMDS DATA2 N
set_property -dict { PACKAGE_PIN D20  IOSTANDARD TMDS_33  PULLUP false }    [get_ports {TMDS_data_p[2]}];       # TMDS DATA2 P

set_property -dict { PACKAGE_PIN H15  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports {HDMI_HPD_tri_i[0]}];    # HPD

set_property -dict { PACKAGE_PIN B16  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports HDMI_DDC_scl_io];        # I2C SCL
set_property -dict { PACKAGE_PIN B17  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports HDMI_DDC_sda_io];        # I2C SDA

# CEC - not using


### HDMI SECONDARY ############################################################################
#
set_property -dict { PACKAGE_PIN M20  IOSTANDARD TMDS_33  PULLUP false }    [get_ports TMDS2_clk_n];            # TMDS CLK N                                M20     EBBI_TOP_11
set_property -dict { PACKAGE_PIN M19  IOSTANDARD TMDS_33 PULLUP false }     [get_ports TMDS2_clk_p];            # TMDS CLK P                                M19     EBBI_TOP_45

set_property -dict { PACKAGE_PIN P22  IOSTANDARD TMDS_33  PULLUP false }    [get_ports {TMDS2_data_n[0]}];      # TMDS DATA0 N                              P22     EBBI_TOP_15
set_property -dict { PACKAGE_PIN N22  IOSTANDARD TMDS_33 PULLUP false }     [get_ports {TMDS2_data_p[0]}];      # TMDS DATA0 P                              N22     EBBI_TOP_49
set_property -dict { PACKAGE_PIN M22  IOSTANDARD TMDS_33  PULLUP false }    [get_ports {TMDS2_data_n[1]}];      # TMDS DATA1 N                              M22     EBBI_TOP_14
set_property -dict { PACKAGE_PIN M21  IOSTANDARD TMDS_33 PULLUP false }     [get_ports {TMDS2_data_p[1]}];      # TMDS DATA1 P                              M21     EBBI_TOP_48
set_property -dict { PACKAGE_PIN N20  IOSTANDARD TMDS_33  PULLUP false }    [get_ports {TMDS2_data_n[2]}];      # TMDS DATA2 N                              N20     EBBI_TOP_12
set_property -dict { PACKAGE_PIN N19  IOSTANDARD TMDS_33 PULLUP false }     [get_ports {TMDS2_data_p[2]}];      # TMDS DATA2 P                              N19     EBBI_TOP_46

#set_property -dict { PACKAGE_PIN R15  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports {HDMI2_HPD_tri_i[0]}];   # HPD                                       R15     EBBI_TOP_43

#set_property -dict { PACKAGE_PIN K19  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports HDMI2_DDC_scl_io];       # I2C SCL                                   K19     EBBI_TOP_08
#set_property -dict { PACKAGE_PIN K20  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports HDMI2_DDC_sda_io];       # I2C SDA                                   K20     EBBI_TOP_42

# CEC - not using       # EBBI_TOP_42


### VGA #############################################################################################
#
set_property -dict { PACKAGE_PIN Y18  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_clock }];          # VGA CLOCK           IO_L12P_T1_MRCC_33    Y18     EBBI_TOP_63
set_property -dict { PACKAGE_PIN T22  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_hsync }];          # VGA HSYNC           IO_L2P_T0_33          T22     EBBI_TOP_17
set_property -dict { PACKAGE_PIN T21  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_vsync }];          # VGA VSYNC           IO_L1P_T0_33          T21     EBBI_TOP_51

set_property -dict { PACKAGE_PIN U20  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[15] }];        # RED 4               IO_L5P_T0_33          U20     EBBI_TOP_18
set_property -dict { PACKAGE_PIN U19  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[14] }];        # RED 3               IO_0_33               U19     EBBI_TOP_52
set_property -dict { PACKAGE_PIN U22  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[13] }];        # RED 2               IO_L2N_T0_33          U22     EBBI_TOP_20
set_property -dict { PACKAGE_PIN U21  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[12] }];        # RED 1               IO_L1N_T0_33          U21     EBBI_TOP_54
set_property -dict { PACKAGE_PIN V19  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[11] }];        # RED 0               IO_L6N_T0_VREF_33     V19     EBBI_TOP_21
set_property -dict { PACKAGE_PIN V18  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[10] }];        # GREEN 5             IO_L6P_T0_33          V18     EBBI_TOP_55
set_property -dict { PACKAGE_PIN V22  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[9] }];         # GREEN 4             IO_L3P_T0_DQS_33      V22     EBBI_TOP_23
set_property -dict { PACKAGE_PIN V20  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[8] }];         # GREEN 3             IO_L5N_T0_33          V20     EBBI_TOP_57
set_property -dict { PACKAGE_PIN W21  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[7] }];         # GREEN 2             IO_L4N_T0_33          W21     EBBI_TOP_24
set_property -dict { PACKAGE_PIN W20  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[6] }];         # GREEN 1             IO_L4P_T0_33          W20     EBBI_TOP_58
set_property -dict { PACKAGE_PIN Y21  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[5] }];         # GREEN 0             IO_L9N_T1_33          Y21     EBBI_TOP_26
set_property -dict { PACKAGE_PIN W22  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[4] }];         # BLUE 4              IO_L3N_T0_DQS_33      W22     EBBI_TOP_60
set_property -dict { PACKAGE_PIN Y19  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[3] }];         # BLUE 3              IO_L11P_T1_SRCC_33    Y19     EBBI_TOP_27
set_property -dict { PACKAGE_PIN Y20  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[2] }];         # BLUE 2              IO_L9P_T1_33          Y20     EBBI_TOP_61
set_property -dict { PACKAGE_PIN AA21 IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[1] }];         # BLUE 1              IO_L8P_T1_33          AA21    EBBI_TOP_29
set_property -dict { PACKAGE_PIN AA18 IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { VGA_rgb[0] }];         # BLUE 0              IO_L12N_T1_MRCC_33    AA18    EBBI_TOP_30


### VERSION OUTPUT #########################################
#
set_property -dict { PACKAGE_PIN AB10 IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { ver[2] }];             # VERSION 2           IO_L9P_T1_DQS_13      AB10    EBBI_RIGHT_xx
set_property -dict { PACKAGE_PIN AA11 IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { ver[1] }];             # VERSION 1           IO_L8P_T1_13          AA11    EBBI_RIGHT_xx
set_property -dict { PACKAGE_PIN AA12 IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { ver[0] }];             # VERSION 0           IO_L7P_T1_13          AA12    EBBI_RIGHT_xx


### AUDIO ##################################################
#
set_property -dict { PACKAGE_PIN AA9  IOSTANDARD LVCMOS33 PULLUP true  }    [get_ports { IIC_0_scl_io }];       # IIC_0  I2C SCL      IO_L11P_T1_SRCC_13    AA9     EBBI_RIGHT_42
set_property -dict { PACKAGE_PIN Y9   IOSTANDARD LVCMOS33 PULLUP true  }    [get_ports { IIC_0_sda_io }];       # IIC_0  I2C SDA      IO_L12P_T1_SRCC_13    Y9      EBBI_RIGHT_08
set_property -dict { PACKAGE_PIN Y8   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { muten[0] }];           # MUTEN               IO_L12N_T1_SRCC_13    Y8      EBBI_RIGHT_09
set_property -dict { PACKAGE_PIN Y5   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { lrclk_out }];          # I2S_LRCLK           IO_L13N_T2_MRCC_13    Y5      EBBI_RIGHT_49 
set_property -dict { PACKAGE_PIN AA6  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { sclk_out }];           # I2S_CLK             IO_L14N_T2_SRCC_13    AA6     EBBI_RIGHT_12
set_property -dict { PACKAGE_PIN AB7  IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { sdata_0_in }];         # I2S_SDIN            IO_L17P_T2_13         AB7     EBBI_RIGHT_45
set_property -dict { PACKAGE_PIN Y6   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { sdata_0_out }];        # I2S_SDOUT           IO_L13P_T2_MRCC_13    Y6      EBBI_RIGHT_48
 

### SPI_0 ##################################################
#
set_property -dict { PACKAGE_PIN R6   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { SPI_0_0_sck_io }];     # SPI Clock           IO_L19P_T3_13         R6      EBBI_RIGHT_xx
set_property -dict { PACKAGE_PIN T4   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { SPI_0_0_io0_io }];     # MOSI                IO_L20P_T3_13         T4      EBBI_RIGHT_xx
set_property -dict { PACKAGE_PIN U6   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { SPI_0_0_io1_io }];     # MISO                IO_L22P_T3_13         U6      EBBI_RIGHT_xx
set_property -dict { PACKAGE_PIN W6   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { SPI_0_0_ss2_o }];      # CS2                 IO_L24P_T3_13         W6      EBBI_RIGHT_xx
set_property -dict { PACKAGE_PIN V7   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { SPI_0_0_ss1_o }];      # CS1                 IO_L23P_T3_13         V7      EBBI_RIGHT_xx
set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 PULLUP false }    [get_ports { SPI_0_0_ss_io }];      # CS0                 IO_L21P_T3_DQS_13     V5      EBBI_RIGHT_xx