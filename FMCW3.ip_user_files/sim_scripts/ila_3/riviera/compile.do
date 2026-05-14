transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l smartconnect_v1_0 -l axi_vip_v1_1_22 "+incdir+/tools/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/tools/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l smartconnect_v1_0 -l axi_vip_v1_1_22 "+incdir+../../../../../../../../../../../tools/2025.2/data/rsb/busdef" "+incdir+../../../../FMCW3.gen/sources_1/ip/ila_3/hdl/verilog" "+incdir+/tools/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/tools/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../FMCW3.gen/sources_1/ip/ila_3/sim/ila_3.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

