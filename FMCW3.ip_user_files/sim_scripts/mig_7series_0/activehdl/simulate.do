transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mig_7series_0  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mig_7series_0 xil_defaultlib.glbl

do {mig_7series_0.udo}

run 1000ns

endsim

quit -force
