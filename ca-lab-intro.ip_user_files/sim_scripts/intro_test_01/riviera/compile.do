vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/intro_test_01/ip/intro_test_01_toggle_0_0/sim/intro_test_01_toggle_0_0.v" \
"../../../bd/intro_test_01/ip/intro_test_01_debouncer_0_0/sim/intro_test_01_debouncer_0_0.v" \
"../../../bd/intro_test_01/ip/intro_test_01_debouncer_0_1/sim/intro_test_01_debouncer_0_1.v" \
"../../../bd/intro_test_01/sim/intro_test_01.v" \


vlog -work xil_defaultlib \
"glbl.v"

