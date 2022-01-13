vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_12
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_1
vlib modelsim_lib/msim/util_vector_logic_v2_0_1

vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1

vlog -work dist_mem_gen_v8_0_12 -64 -incr \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/scpu_sim/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/scpu_sim/ip/scpu_sim_dist_mem_gen_0_0/sim/scpu_sim_dist_mem_gen_0_0.v" \
"../../../bd/scpu_sim/ip/scpu_sim_RAM_B_0/sim/scpu_sim_RAM_B_0.v" \

vlog -work xlslice_v1_0_1 -64 -incr \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/scpu_sim/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/scpu_sim/ip/scpu_sim_xlslice_0_0/sim/scpu_sim_xlslice_0_0.v" \
"../../../bd/scpu_sim/ip/scpu_sim_xlslice_0_1/sim/scpu_sim_xlslice_0_1.v" \

vlog -work util_vector_logic_v2_0_1 -64 -incr \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/scpu_sim/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/scpu_sim/ip/scpu_sim_util_vector_logic_0_0/sim/scpu_sim_util_vector_logic_0_0.v" \
"../../../bd/scpu_sim/sim/scpu_sim.v" \
"../../../bd/scpu_sim/ipshared/7490/src/AND.v" \
"../../../bd/scpu_sim/ipshared/7490/src/Alu.v" \
"../../../bd/scpu_sim/ipshared/7490/src/DataPath_more.v" \
"../../../bd/scpu_sim/ipshared/7490/src/ImmGen.v" \
"../../../bd/scpu_sim/ipshared/7490/src/MUX2T1_32.v" \
"../../../bd/scpu_sim/ipshared/7490/src/MUX4T1_32.v" \
"../../../bd/scpu_sim/ipshared/7490/src/OR.v" \
"../../../bd/scpu_sim/ipshared/7490/src/REG32.v" \
"../../../bd/scpu_sim/ipshared/7490/src/Regs.v" \
"../../../bd/scpu_sim/ipshared/7490/src/SCPU_ctrl_more.v" \
"../../../bd/scpu_sim/ipshared/7490/src/add_32.v" \
"../../../bd/scpu_sim/ipshared/7490/src/SCPU.v" \
"../../../bd/scpu_sim/ip/scpu_sim_SCPU_0_0/sim/scpu_sim_SCPU_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

