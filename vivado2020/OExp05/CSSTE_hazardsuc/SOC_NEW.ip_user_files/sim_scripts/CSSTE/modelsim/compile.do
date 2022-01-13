vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/dist_mem_gen_v8_0_13
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/util_vector_logic_v2_0_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1

vlog -work xil_defaultlib  -incr \
"../../../bd/CSSTE/ipshared/0ee6/sources_1/new/clk_div.v" \
"../../../bd/CSSTE/ip/CSSTE_clk_div_0_0/sim/CSSTE_clk_div_0_0.v" \
"../../../bd/CSSTE/ipshared/6f6e/imports/Framework/VgaController.v" \
"../../../bd/CSSTE/ipshared/6f6e/imports/Framework/VgaDebugger.v" \
"../../../bd/CSSTE/ipshared/6f6e/imports/Framework/VgaDisplay.v" \
"../../../bd/CSSTE/ipshared/6f6e/imports/Framework/VGA.v" \
"../../../bd/CSSTE/ip/CSSTE_VGA_0_0/sim/CSSTE_VGA_0_0.v" \
"../../../bd/CSSTE/ipshared/67de/HexTo8SEG.v" \
"../../../bd/CSSTE/ipshared/67de/MC14495_ZJU.v" \
"../../../bd/CSSTE/ipshared/67de/MUX2T1_64.v" \
"../../../bd/CSSTE/ipshared/67de/P2S.v" \
"../../../bd/CSSTE/ipshared/67de/SSeg_map.v" \
"../../../bd/CSSTE/ipshared/67de/SSeg7_Dev.v" \
"../../../bd/CSSTE/ip/CSSTE_SSeg7_Dev_0_0/sim/CSSTE_SSeg7_Dev_0_0.v" \

vlog -work dist_mem_gen_v8_0_13  -incr \
"../../../../SOC_NEW.srcs/sources_1/bd/CSSTE/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/CSSTE/ip/CSSTE_dist_mem_gen_0_0/sim/CSSTE_dist_mem_gen_0_0.v" \

vlog -work xlconcat_v2_1_4  -incr \
"../../../../SOC_NEW.srcs/sources_1/bd/CSSTE/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/CSSTE/ip/CSSTE_xlconcat_0_0/sim/CSSTE_xlconcat_0_0.v" \

vlog -work xlslice_v1_0_2  -incr \
"../../../../SOC_NEW.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_0/sim/CSSTE_xlslice_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_1/sim/CSSTE_xlslice_0_1.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_2/sim/CSSTE_xlslice_0_2.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_3/sim/CSSTE_xlslice_0_3.v" \

vlog -work xlconstant_v1_1_7  -incr \
"../../../../SOC_NEW.srcs/sources_1/bd/CSSTE/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/CSSTE/ip/CSSTE_xlconstant_0_0/sim/CSSTE_xlconstant_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_5/sim/CSSTE_xlslice_0_5.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_6/sim/CSSTE_xlslice_0_6.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_7/sim/CSSTE_xlslice_0_7.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_8/sim/CSSTE_xlslice_0_8.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_9/sim/CSSTE_xlslice_0_9.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_10/sim/CSSTE_xlslice_0_10.v" \
"../../../bd/CSSTE/ip/CSSTE_xlconcat_1_0/sim/CSSTE_xlconcat_1_0.v" \

vlog -work util_vector_logic_v2_0_1  -incr \
"../../../../SOC_NEW.srcs/sources_1/bd/CSSTE/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/CSSTE/ip/CSSTE_util_vector_logic_0_0/sim/CSSTE_util_vector_logic_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_util_vector_logic_0_1/sim/CSSTE_util_vector_logic_0_1.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_11/sim/CSSTE_xlslice_0_11.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_12/sim/CSSTE_xlslice_0_12.v" \
"../../../bd/CSSTE/ip/CSSTE_xlconstant_0_1/sim/CSSTE_xlconstant_0_1.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/AND.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Alu.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Ex_reg_Mem.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/ID_reg_Ex.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/IF_reg_ID.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/ImmGen.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Instruction Decoder.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Instruction_Fetch.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/MUX2T1_32.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/MUX4T1_32.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Mem_reg_WB.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/OR.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Pipeline_EX.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Pipeline_Mem.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Pipeline_WB.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/REG32.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Regs.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/SCPU_ctrl_more.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/add_32.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/stall.v" \
"../../../bd/CSSTE/ipshared/3cd8/src/Pipeline_CPU.v" \
"../../../bd/CSSTE/ip/CSSTE_Pipeline_CPU_0_0/sim/CSSTE_Pipeline_CPU_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_dist_mem_gen_0_1/sim/CSSTE_dist_mem_gen_0_1.v" \
"../../../bd/CSSTE/ip/CSSTE_SW8_0/sim/CSSTE_SW8_0.v" \
"../../../bd/CSSTE/sim/CSSTE.v" \

vlog -work xil_defaultlib \
"glbl.v"

