#uses "xillib.tcl"

proc generate {drv_handle} {
	::hsi::utils::define_include_file $drv_handle "xparameters.h" "DDYNCLK" "NUM_INSTANCES" "DEVICE_ID"  "C_S_AXI_LITE_BASEADDR" "C_S_AXI_LITE_HIGHADDR"
	::hsi::utils::define_config_file $drv_handle "ddynclk_g.c" "DDynClk" "DEVICE_ID"  "C_S_AXI_LITE_BASEADDR"
}
