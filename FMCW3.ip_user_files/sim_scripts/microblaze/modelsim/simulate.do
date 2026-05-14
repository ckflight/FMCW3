onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xilinx_vip -L xpm -L microblaze_v11_0_16 -L lmb_v10_v3_0_16 -L lmb_bram_if_cntlr_v4_0_27 -L blk_mem_gen_v8_4_12 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_36 -L axi_vip_v1_1_22 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_22 -L mdm_v3_2_29 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_37 -L axi_timer_v2_0_37 -L axi_fifo_mm_s_v4_3_7 -L dist_mem_gen_v8_0_17 -L axi_quad_spi_v3_2_35 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.microblaze xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {microblaze.udo}

run 1000ns

quit -force
