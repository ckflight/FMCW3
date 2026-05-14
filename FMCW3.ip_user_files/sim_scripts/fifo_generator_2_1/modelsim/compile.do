vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/fifo_generator_v13_2_14
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap fifo_generator_v13_2_14 modelsim_lib/msim/fifo_generator_v13_2_14
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+/tools/2025.2/data/xilinx_vip/include" \
"/tools/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../../../../../../../../tools/2025.2/data/rsb/busdef" "+incdir+/tools/2025.2/data/xilinx_vip/include" \
"/tools/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_14 -64 -incr -mfcu  "+incdir+../../../../../../../../../../../tools/2025.2/data/rsb/busdef" "+incdir+/tools/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14 -64 -93  \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14 -64 -incr -mfcu  "+incdir+../../../../../../../../../../../tools/2025.2/data/rsb/busdef" "+incdir+/tools/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../../../tools/2025.2/data/rsb/busdef" "+incdir+/tools/2025.2/data/xilinx_vip/include" \
"../../../../FMCW3.gen/sources_1/ip/fifo_generator_2_1/sim/fifo_generator_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

