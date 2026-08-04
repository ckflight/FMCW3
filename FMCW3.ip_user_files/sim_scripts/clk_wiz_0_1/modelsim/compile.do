vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
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

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../ipstatic" "+incdir+../../../../../../../../../../../tools/2025.2/data/rsb/busdef" "+incdir+/tools/2025.2/data/xilinx_vip/include" \
"/tools/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic" "+incdir+../../../../../../../../../../../tools/2025.2/data/rsb/busdef" "+incdir+/tools/2025.2/data/xilinx_vip/include" \
"../../../../FMCW3.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0_clk_wiz.v" \
"../../../../FMCW3.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

