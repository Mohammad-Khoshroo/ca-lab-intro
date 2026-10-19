onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib intro_test_01_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {intro_test_01.udo}

run 1000ns

quit -force
