onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+intro_test_01  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.intro_test_01 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {intro_test_01.udo}

run 1000ns

endsim

quit -force
