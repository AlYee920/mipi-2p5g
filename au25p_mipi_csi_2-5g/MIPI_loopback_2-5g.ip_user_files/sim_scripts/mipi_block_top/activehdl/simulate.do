transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mipi_block_top  -L xilinx_vip -L xpm -L xil_defaultlib -L mipi_csi2_tx_ctrl_v1_0_4 -L high_speed_selectio_wiz_v3_6_5 -L mipi_dphy_v4_3_6 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_28 -L fifo_generator_v13_2_8 -L axi_data_fifo_v2_1_27 -L axi_crossbar_v2_1_29 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L mipi_csi2_rx_ctrl_v1_0_8 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_28 -L axis_dwidth_converter_v1_1_27 -L axis_switch_v1_1_28 -L vfb_v1_0_22 -L jtag_axi -L dist_mem_gen_v8_0_13 -L blk_mem_gen_v8_4_6 -L lib_bmg_v1_0_15 -L axi_traffic_gen_v3_0_14 -L xlconstant_v1_1_7 -L smartconnect_v1_0 -L axi_vip_v1_1_14 -L oddr_v1_0_2 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mipi_block_top xil_defaultlib.glbl

do {mipi_block_top.udo}

run 1000ns

endsim

quit -force
