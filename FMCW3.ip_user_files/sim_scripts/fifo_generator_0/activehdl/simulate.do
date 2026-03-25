transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fifo_generator_0  -L xil_defaultlib -L xilinx_vip -L xpm -L fifo_generator_v13_2_14 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_generator_0 xil_defaultlib.glbl

do {fifo_generator_0.udo}

run 1000ns

endsim

quit -force
