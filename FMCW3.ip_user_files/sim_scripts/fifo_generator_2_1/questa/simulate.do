onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fifo_generator_2_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fifo_generator_2.udo}

run 1000ns

quit -force
