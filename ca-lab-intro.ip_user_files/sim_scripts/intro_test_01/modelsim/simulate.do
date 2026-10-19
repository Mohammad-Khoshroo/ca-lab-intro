onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc "  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.intro_test_01 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {intro_test_01.udo}

run 1000ns

quit -force
