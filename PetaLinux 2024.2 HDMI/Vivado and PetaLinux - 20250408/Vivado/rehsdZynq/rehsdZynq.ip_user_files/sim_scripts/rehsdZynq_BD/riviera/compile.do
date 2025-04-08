transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_3
vlib riviera/lib_pkg_v1_0_4
vlib riviera/fifo_generator_v13_2_11
vlib riviera/lib_fifo_v1_0_20
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/lib_bmg_v1_0_18
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_datamover_v5_1_35
vlib riviera/axi_vdma_v6_3_21
vlib riviera/xil_defaultlib
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_19
vlib riviera/processing_system7_vip_v1_0_21
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/v_tc_v6_1_14
vlib riviera/v_vid_in_axi4s_v4_0_11
vlib riviera/v_axi4s_vid_out_v4_0_19
vlib riviera/v_tc_v6_2_9
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_35
vlib riviera/xlconstant_v1_1_9
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_33
vlib riviera/xlconcat_v2_1_6
vlib riviera/audio_formatter_v1_0_15
vlib riviera/i2s_transmitter_v1_0_9
vlib riviera/i2s_receiver_v1_0_9
vlib riviera/axi_iic_v2_1_9

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_11 riviera/fifo_generator_v13_2_11
vmap lib_fifo_v1_0_20 riviera/lib_fifo_v1_0_20
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap lib_bmg_v1_0_18 riviera/lib_bmg_v1_0_18
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_35 riviera/axi_datamover_v5_1_35
vmap axi_vdma_v6_3_21 riviera/axi_vdma_v6_3_21
vmap xil_defaultlib riviera/xil_defaultlib
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 riviera/processing_system7_vip_v1_0_21
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_14 riviera/v_tc_v6_1_14
vmap v_vid_in_axi4s_v4_0_11 riviera/v_vid_in_axi4s_v4_0_11
vmap v_axi4s_vid_out_v4_0_19 riviera/v_axi4s_vid_out_v4_0_19
vmap v_tc_v6_2_9 riviera/v_tc_v6_2_9
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 riviera/axi_gpio_v2_0_35
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 riviera/axi_register_slice_v2_1_33
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6
vmap audio_formatter_v1_0_15 riviera/audio_formatter_v1_0_15
vmap i2s_transmitter_v1_0_9 riviera/i2s_transmitter_v1_0_9
vmap i2s_receiver_v1_0_9 riviera/i2s_receiver_v1_0_9
vmap axi_iic_v2_1_9 riviera/axi_iic_v2_1_9

vlog -work xilinx_vip  -incr "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"/home/rich/xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/rich/xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/rich/xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_20 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/e160/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_18 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/cd15/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_35 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/4277/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_21  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_21 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_axi_vdma_0_0/sim/rehsdZynq_BD_axi_vdma_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_proc_sys_reset_0_0/sim/rehsdZynq_BD_proc_sys_reset_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_processing_system7_0_0/sim/rehsdZynq_BD_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/d57c/src/ClockGen.vhd" \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/d57c/src/SyncAsync.vhd" \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/d57c/src/SyncAsyncReset.vhd" \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/d57c/src/DVI_Constants.vhd" \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/d57c/src/OutputSERDES.vhd" \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/d57c/src/TMDS_Encoder.vhd" \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/d57c/src/rgb2dvi.vhd" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_rgb2dvi_0_0/sim/rehsdZynq_BD_rgb2dvi_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_14 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/fd54/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_11  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/4705/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_19  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/e4ff/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_v_axi4s_vid_out_0_0/sim/rehsdZynq_BD_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_9 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/1b22/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_v_tc_0_0/sim/rehsdZynq_BD_v_tc_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/2a7c/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ipshared/2a7c/src/SyncAsync.vhd" \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/2a7c/src/axi_dynclk_S00_AXI.vhd" \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/2a7c/src/axi_dynclk.vhd" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_axi_dynclk_0_0/sim/rehsdZynq_BD_axi_dynclk_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_axi_gpio_hdmi_0/sim/rehsdZynq_BD_axi_gpio_hdmi_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_xlconstant_2_0/sim/rehsdZynq_BD_xlconstant_2_0.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/sim/bd_3bda.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_3bda_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_3bda_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_3bda_arinsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_3bda_rinsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_3bda_awinsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_3bda_winsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_3bda_binsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_3bda_aroutsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_3bda_routsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_3bda_awoutsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_3bda_woutsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_3bda_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_3bda_arni_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_3bda_rni_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_3bda_awni_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_3bda_wni_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_3bda_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_3bda_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_3bda_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_3bda_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_3bda_s00a2s_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_3bda_sarn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_3bda_srn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_3bda_sawn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_3bda_swn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_3bda_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_3bda_m00s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_3bda_m00arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_3bda_m00rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_3bda_m00awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_3bda_m00wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_3bda_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_3bda_m00e_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_3bda_m01s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_3bda_m01arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_3bda_m01rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_3bda_m01awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_3bda_m01wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_3bda_m01bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_3bda_m01e_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_3bda_m02s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_3bda_m02arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_3bda_m02rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_3bda_m02awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_3bda_m02wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_3bda_m02bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_3bda_m02e_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_3bda_m03s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_3bda_m03arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_3bda_m03rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_3bda_m03awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_3bda_m03wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_3bda_m03bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_53/sim/bd_3bda_m03e_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_54/sim/bd_3bda_m04s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_55/sim/bd_3bda_m04arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_56/sim/bd_3bda_m04rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_57/sim/bd_3bda_m04awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_58/sim/bd_3bda_m04wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_59/sim/bd_3bda_m04bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_60/sim/bd_3bda_m04e_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_61/sim/bd_3bda_m05s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_62/sim/bd_3bda_m05arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_63/sim/bd_3bda_m05rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_64/sim/bd_3bda_m05awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_65/sim/bd_3bda_m05wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_66/sim/bd_3bda_m05bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_67/sim/bd_3bda_m05e_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_68/sim/bd_3bda_m06s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_69/sim/bd_3bda_m06arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_70/sim/bd_3bda_m06rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_71/sim/bd_3bda_m06awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_72/sim/bd_3bda_m06wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_73/sim/bd_3bda_m06bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/bd_0/ip/ip_74/sim/bd_3bda_m06e_0.sv" \

vlog -work axi_register_slice_v2_1_33  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_0/sim/rehsdZynq_BD_smartconnect_0_0.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/sim/bd_fb8b.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_0/sim/bd_fb8b_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_1/sim/bd_fb8b_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_2/sim/bd_fb8b_arsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_3/sim/bd_fb8b_rsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_4/sim/bd_fb8b_awsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_5/sim/bd_fb8b_wsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_6/sim/bd_fb8b_bsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_7/sim/bd_fb8b_s00mmu_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_8/sim/bd_fb8b_s00tr_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_9/sim/bd_fb8b_s00sic_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_10/sim/bd_fb8b_s00a2s_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_11/sim/bd_fb8b_sarn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_12/sim/bd_fb8b_srn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_13/sim/bd_fb8b_s01mmu_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_14/sim/bd_fb8b_s01tr_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_15/sim/bd_fb8b_s01sic_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_16/sim/bd_fb8b_s01a2s_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_17/sim/bd_fb8b_sawn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_18/sim/bd_fb8b_swn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_19/sim/bd_fb8b_sbn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_20/sim/bd_fb8b_s02mmu_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_21/sim/bd_fb8b_s02tr_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_22/sim/bd_fb8b_s02sic_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_23/sim/bd_fb8b_s02a2s_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_24/sim/bd_fb8b_sarn_1.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_25/sim/bd_fb8b_srn_1.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_26/sim/bd_fb8b_s03mmu_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_27/sim/bd_fb8b_s03tr_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_28/sim/bd_fb8b_s03sic_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_29/sim/bd_fb8b_s03a2s_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_30/sim/bd_fb8b_sawn_1.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_31/sim/bd_fb8b_swn_1.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_32/sim/bd_fb8b_sbn_1.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_33/sim/bd_fb8b_m00s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_34/sim/bd_fb8b_m00arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_35/sim/bd_fb8b_m00rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_36/sim/bd_fb8b_m00awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_37/sim/bd_fb8b_m00wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_38/sim/bd_fb8b_m00bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/bd_0/ip/ip_39/sim/bd_fb8b_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_0/sim/rehsdZynq_BD_smartconnect_1_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_proc_sys_reset_0_2/sim/rehsdZynq_BD_proc_sys_reset_0_2.vhd" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_xlconcat_0_1/sim/rehsdZynq_BD_xlconcat_0_1.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_clk_wiz_0_1/rehsdZynq_BD_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_clk_wiz_0_1/rehsdZynq_BD_clk_wiz_0_1.v" \

vlog -work audio_formatter_v1_0_15  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/9ef4/hdl/audio_formatter_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_audio_formatter_0_2/sim/rehsdZynq_BD_audio_formatter_0_2.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/sim/bd_fb1b.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_0/sim/bd_fb1b_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_fb1b_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_2/sim/bd_fb1b_arsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_3/sim/bd_fb1b_rsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_4/sim/bd_fb1b_awsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_5/sim/bd_fb1b_wsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_6/sim/bd_fb1b_bsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_7/sim/bd_fb1b_s00mmu_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_8/sim/bd_fb1b_s00tr_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_9/sim/bd_fb1b_s00sic_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_10/sim/bd_fb1b_s00a2s_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_11/sim/bd_fb1b_sarn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_12/sim/bd_fb1b_srn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_13/sim/bd_fb1b_s01mmu_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_14/sim/bd_fb1b_s01tr_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_15/sim/bd_fb1b_s01sic_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_16/sim/bd_fb1b_s01a2s_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_17/sim/bd_fb1b_sawn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_18/sim/bd_fb1b_swn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_19/sim/bd_fb1b_sbn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_20/sim/bd_fb1b_m00s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_21/sim/bd_fb1b_m00arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_22/sim/bd_fb1b_m00rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_23/sim/bd_fb1b_m00awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_24/sim/bd_fb1b_m00wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_25/sim/bd_fb1b_m00bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/bd_0/ip/ip_26/sim/bd_fb1b_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_0_1/sim/rehsdZynq_BD_smartconnect_0_1.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/sim/bd_3b4a.v" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_0/sim/bd_3b4a_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_1/sim/bd_3b4a_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_2/sim/bd_3b4a_arinsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_3/sim/bd_3b4a_rinsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_4/sim/bd_3b4a_awinsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_5/sim/bd_3b4a_winsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_6/sim/bd_3b4a_binsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_7/sim/bd_3b4a_aroutsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_8/sim/bd_3b4a_routsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_9/sim/bd_3b4a_awoutsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_10/sim/bd_3b4a_woutsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_11/sim/bd_3b4a_boutsw_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_12/sim/bd_3b4a_arni_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_13/sim/bd_3b4a_rni_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_14/sim/bd_3b4a_awni_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_15/sim/bd_3b4a_wni_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_16/sim/bd_3b4a_bni_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_17/sim/bd_3b4a_s00mmu_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_18/sim/bd_3b4a_s00tr_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_19/sim/bd_3b4a_s00sic_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_20/sim/bd_3b4a_s00a2s_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_21/sim/bd_3b4a_sarn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_22/sim/bd_3b4a_srn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_23/sim/bd_3b4a_sawn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_24/sim/bd_3b4a_swn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_25/sim/bd_3b4a_sbn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_26/sim/bd_3b4a_m00s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_27/sim/bd_3b4a_m00arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_28/sim/bd_3b4a_m00rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_29/sim/bd_3b4a_m00awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_30/sim/bd_3b4a_m00wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_31/sim/bd_3b4a_m00bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_32/sim/bd_3b4a_m00e_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_33/sim/bd_3b4a_m01s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_34/sim/bd_3b4a_m01arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_35/sim/bd_3b4a_m01rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_36/sim/bd_3b4a_m01awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_37/sim/bd_3b4a_m01wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_38/sim/bd_3b4a_m01bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_39/sim/bd_3b4a_m01e_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_40/sim/bd_3b4a_m02s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_41/sim/bd_3b4a_m02arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_42/sim/bd_3b4a_m02rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_43/sim/bd_3b4a_m02awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_44/sim/bd_3b4a_m02wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_45/sim/bd_3b4a_m02bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_46/sim/bd_3b4a_m02e_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_47/sim/bd_3b4a_m03s2a_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_48/sim/bd_3b4a_m03arn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_49/sim/bd_3b4a_m03rn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_50/sim/bd_3b4a_m03awn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_51/sim/bd_3b4a_m03wn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_52/sim/bd_3b4a_m03bn_0.sv" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/bd_0/ip/ip_53/sim/bd_3b4a_m03e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_smartconnect_1_1/sim/rehsdZynq_BD_smartconnect_1_1.v" \

vlog -work i2s_transmitter_v1_0_9  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/11b6/hdl/i2s_transmitter_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_i2s_transmitter_0_2/sim/rehsdZynq_BD_i2s_transmitter_0_2.sv" \

vlog -work i2s_receiver_v1_0_9  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/9f54/hdl/i2s_receiver_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_i2s_receiver_0_2/sim/rehsdZynq_BD_i2s_receiver_0_2.sv" \

vcom -work axi_iic_v2_1_9 -93  -incr \
"../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/2eec/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_axi_iic_0_2/sim/rehsdZynq_BD_axi_iic_0_2.vhd" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_VGA_Testing_Top_0_0/sim/rehsdZynq_BD_VGA_Testing_Top_0_0.vhd" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_axi_vdma_0_1/sim/rehsdZynq_BD_axi_vdma_0_1.vhd" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_audio_clock_0_0/sim/rehsdZynq_BD_audio_clock_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_v_axi4s_vid_out_0_1/sim/rehsdZynq_BD_v_axi4s_vid_out_0_1.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_v_tc_0_1/sim/rehsdZynq_BD_v_tc_0_1.vhd" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_proc_sys_reset_0_3/sim/rehsdZynq_BD_proc_sys_reset_0_3.vhd" \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_axi_dynclk_0_1/sim/rehsdZynq_BD_axi_dynclk_0_1.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/audio_clock_regeneration_packet.sv" \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/audio_info_frame.sv" \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/audio_sample_packet.sv" \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/auxiliary_video_information_info_frame.sv" \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/hdmi.sv" \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/packet_assembler.sv" \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/packet_picker.sv" \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/serializer.sv" \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/source_product_description_info_frame.sv" \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/tmds_channel.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ipshared/4ce2/src/hdmi_wrapper.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/6548/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/ec67/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/86fe/hdl" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/0127/hdl/verilog" "+incdir+../../../../rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ipshared/3cbc" "+incdir+/home/rich/xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l xil_defaultlib -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l xlconcat_v2_1_6 -l audio_formatter_v1_0_15 -l i2s_transmitter_v1_0_9 -l i2s_receiver_v1_0_9 -l axi_iic_v2_1_9 \
"../../../bd/rehsdZynq_BD/ip/rehsdZynq_BD_rehsd_hdmi_0_0/sim/rehsdZynq_BD_rehsd_hdmi_0_0.sv" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/rehsdZynq_BD/sim/rehsdZynq_BD.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

