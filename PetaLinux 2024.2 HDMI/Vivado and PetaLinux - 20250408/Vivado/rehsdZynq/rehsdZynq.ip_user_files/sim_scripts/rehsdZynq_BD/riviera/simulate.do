transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+rehsdZynq_BD  -L xil_defaultlib -L xilinx_vip -L xpm -L lib_cdc_v1_0_3 -L lib_pkg_v1_0_4 -L fifo_generator_v13_2_11 -L lib_fifo_v1_0_20 -L blk_mem_gen_v8_4_9 -L lib_bmg_v1_0_18 -L lib_srl_fifo_v1_0_4 -L axi_datamover_v5_1_35 -L axi_vdma_v6_3_21 -L proc_sys_reset_v5_0_16 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_1_14 -L v_vid_in_axi4s_v4_0_11 -L v_axi4s_vid_out_v4_0_19 -L v_tc_v6_2_9 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_35 -L xlconstant_v1_1_9 -L smartconnect_v1_0 -L axi_register_slice_v2_1_33 -L xlconcat_v2_1_6 -L audio_formatter_v1_0_15 -L i2s_transmitter_v1_0_9 -L i2s_receiver_v1_0_9 -L axi_iic_v2_1_9 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.rehsdZynq_BD xil_defaultlib.glbl

do {rehsdZynq_BD.udo}

run 1000ns

endsim

quit -force
