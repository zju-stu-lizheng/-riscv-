vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_2
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/dist_mem_gen_v8_0_13
vlib riviera/xlconstant_v1_1_7
vlib riviera/xlconcat_v2_1_4

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap dist_mem_gen_v8_0_13 riviera/dist_mem_gen_v8_0_13
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ipshared/d1b1/SAnti_jitter.v" \
"../../../bd/CSSTE/ip/CSSTE_SAnti_jitter_0_0/sim/CSSTE_SAnti_jitter_0_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_1/sim/CSSTE_xlslice_0_1.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_2/sim/CSSTE_xlslice_0_2.v" \
"../../../bd/CSSTE/ipshared/0ee6/sources_1/new/clk_div.v" \
"../../../bd/CSSTE/ip/CSSTE_clk_div_0_0/sim/CSSTE_clk_div_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_util_vector_logic_0_0/sim/CSSTE_util_vector_logic_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_util_vector_logic_0_1/sim/CSSTE_util_vector_logic_0_1.v" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 \
"../../../../OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_dist_mem_gen_0_0/sim/CSSTE_dist_mem_gen_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_3/sim/CSSTE_xlslice_0_3.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_4/sim/CSSTE_xlslice_0_4.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_5/sim/CSSTE_xlslice_0_5.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_6/sim/CSSTE_xlslice_0_6.v" \
"../../../bd/CSSTE/ipshared/22cf/Counter_x.v" \
"../../../bd/CSSTE/ip/CSSTE_Counter_x_0_0/sim/CSSTE_Counter_x_0_0.v" \
"../../../bd/CSSTE/ipshared/6153/MIO_BUS.v" \
"../../../bd/CSSTE/ip/CSSTE_MIO_BUS_0_0/sim/CSSTE_MIO_BUS_0_0.v" \
"../../../bd/CSSTE/ipshared/1191/imports/new/MUX8T1_32.v" \
"../../../bd/CSSTE/ipshared/1191/imports/new/MUX8T1_8.v" \
"../../../bd/CSSTE/ipshared/1191/new/Multi_8CH32.v" \
"../../../bd/CSSTE/ip/CSSTE_Multi_8CH32_0_0/sim/CSSTE_Multi_8CH32_0_0.v" \
"../../../bd/CSSTE/ipshared/fd22/sources_1/new/LED_P2S.v" \
"../../../bd/CSSTE/ipshared/fd22/sources_1/new/SPIO.v" \
"../../../bd/CSSTE/ip/CSSTE_SPIO_0_0/sim/CSSTE_SPIO_0_0.v" \
"../../../bd/CSSTE/ipshared/67de/HexTo8SEG.v" \
"../../../bd/CSSTE/ipshared/67de/MC14495_ZJU.v" \
"../../../bd/CSSTE/ipshared/67de/MUX2T1_64.v" \
"../../../bd/CSSTE/ipshared/67de/P2S.v" \
"../../../bd/CSSTE/ipshared/67de/SSeg_map.v" \
"../../../bd/CSSTE/ipshared/67de/SSeg7_Dev.v" \
"../../../bd/CSSTE/ip/CSSTE_SSeg7_Dev_0_0/sim/CSSTE_SSeg7_Dev_0_0.v" \
"../../../bd/CSSTE/ipshared/5c73/imports/Framework/VgaController.v" \
"../../../bd/CSSTE/ipshared/5c73/imports/Framework/VgaDebugger.v" \
"../../../bd/CSSTE/ipshared/5c73/imports/Framework/VgaDisplay.v" \
"../../../bd/CSSTE/ipshared/5c73/imports/Framework/VGA.v" \
"../../../bd/CSSTE/ip/CSSTE_VGA_0_0/sim/CSSTE_VGA_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 \
"../../../../OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_xlconstant_0_0/sim/CSSTE_xlconstant_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_7/sim/CSSTE_xlslice_0_7.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_8/sim/CSSTE_xlslice_0_8.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_9/sim/CSSTE_xlslice_0_9.v" \

vlog -work xlconcat_v2_1_4  -v2k5 \
"../../../../OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_xlconcat_0_0/sim/CSSTE_xlconcat_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlconcat_0_1/sim/CSSTE_xlconcat_0_1.v" \
"../../../bd/CSSTE/ip/CSSTE_xlconstant_0_1/sim/CSSTE_xlconstant_0_1.v" \
"../../../bd/CSSTE/ip/CSSTE_div20_0/sim/CSSTE_div20_0.v" \
"../../../bd/CSSTE/ip/CSSTE_sw7_5_0/sim/CSSTE_sw7_5_0.v" \
"../../../bd/CSSTE/ip/CSSTE_div20_1/sim/CSSTE_div20_1.v" \
"../../../bd/CSSTE/ip/CSSTE_dist_mem_gen_0_1/sim/CSSTE_dist_mem_gen_0_1.v" \
"../../../bd/CSSTE/ip/CSSTE_sw8_1/sim/CSSTE_sw8_1.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/AND.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Alu.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Ex_reg_Mem.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/ID_reg_Ex.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/IF_reg_ID.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/ImmGen.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Instruction Decoder.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Instruction_Fetch.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/MUX2T1_32.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/MUX4T1_32.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Mem_reg_WB.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/OR.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Pipeline_EX.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Pipeline_Mem.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Pipeline_WB.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/REG32.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Regs.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/SCPU_ctrl_more.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/add_32.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/stall.v" \
"../../../bd/CSSTE/ipshared/9eb5/src/Pipeline_CPU.v" \
"../../../bd/CSSTE/ip/CSSTE_Pipeline_CPU_0_0/sim/CSSTE_Pipeline_CPU_0_0.v" \
"../../../bd/CSSTE/sim/CSSTE.v" \

vlog -work xil_defaultlib \
"glbl.v"

