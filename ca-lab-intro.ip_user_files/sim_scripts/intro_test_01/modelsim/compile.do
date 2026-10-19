vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/intro_test_01/ip/intro_test_01_toggle_0_0/sim/intro_test_01_toggle_0_0.v" \
"../../../bd/intro_test_01/ip/intro_test_01_debouncer_0_0/sim/intro_test_01_debouncer_0_0.v" \
"../../../bd/intro_test_01/ip/intro_test_01_debouncer_0_1/sim/intro_test_01_debouncer_0_1.v" \
"../../../bd/intro_test_01/sim/intro_test_01.v" \


vlog -work xil_defaultlib \
"glbl.v"

