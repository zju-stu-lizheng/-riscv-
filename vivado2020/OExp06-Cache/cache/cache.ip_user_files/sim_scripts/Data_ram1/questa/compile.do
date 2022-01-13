vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/dist_mem_gen_v8_0_13
vlib questa_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_13 questa_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13  \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  \
"../../../../cache.gen/sources_1/ip/Data_ram1/sim/Data_ram1.v" \


vlog -work xil_defaultlib \
"glbl.v"

