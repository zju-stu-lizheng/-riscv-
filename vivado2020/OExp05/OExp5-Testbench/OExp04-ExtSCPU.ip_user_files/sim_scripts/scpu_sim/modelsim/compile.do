vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_13
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/util_vector_logic_v2_0_1

vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1

vlog -work dist_mem_gen_v8_0_13  -incr \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/scpu_sim/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/scpu_sim/ip/scpu_sim_dist_mem_gen_0_0/sim/scpu_sim_dist_mem_gen_0_0.v" \
"../../../bd/scpu_sim/ip/scpu_sim_RAM_B_0/sim/scpu_sim_RAM_B_0.v" \

vlog -work xlslice_v1_0_2  -incr \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/scpu_sim/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/scpu_sim/ip/scpu_sim_xlslice_0_0/sim/scpu_sim_xlslice_0_0.v" \
"../../../bd/scpu_sim/ip/scpu_sim_xlslice_0_1/sim/scpu_sim_xlslice_0_1.v" \

vlog -work util_vector_logic_v2_0_1  -incr \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/scpu_sim/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/scpu_sim/ip/scpu_sim_util_vector_logic_0_0/sim/scpu_sim_util_vector_logic_0_0.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/AND.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Alu.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Ex_reg_Mem.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/ID_reg_Ex.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/IF_reg_ID.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/ImmGen.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Instruction Decoder.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Instruction_Fetch.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/MUX2T1_32.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/MUX4T1_32.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Mem_reg_WB.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/OR.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Pipeline_EX.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Pipeline_Mem.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Pipeline_WB.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/REG32.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Regs.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/SCPU_ctrl_more.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/add_32.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/stall.v" \
"../../../bd/scpu_sim/ipshared/9eb5/src/Pipeline_CPU.v" \
"../../../bd/scpu_sim/ip/scpu_sim_Pipeline_CPU_0_0/sim/scpu_sim_Pipeline_CPU_0_0.v" \
"../../../bd/scpu_sim/sim/scpu_sim.v" \

vlog -work xil_defaultlib \
"glbl.v"

