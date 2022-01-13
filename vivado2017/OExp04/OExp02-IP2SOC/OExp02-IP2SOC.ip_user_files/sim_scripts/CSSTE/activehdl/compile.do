vlib work
vlib activehdl

vlib activehdl/xlslice_v1_0_1
vlib activehdl/xil_defaultlib
vlib activehdl/util_vector_logic_v2_0_1
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/dist_mem_gen_v8_0_12
vlib activehdl/xlconstant_v1_1_3

vmap xlslice_v1_0_1 activehdl/xlslice_v1_0_1
vmap xil_defaultlib activehdl/xil_defaultlib
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap dist_mem_gen_v8_0_12 activehdl/dist_mem_gen_v8_0_12
vmap xlconstant_v1_1_3 activehdl/xlconstant_v1_1_3

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_0/sim/CSSTE_xlslice_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_1/sim/CSSTE_xlslice_0_1.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_2/sim/CSSTE_xlslice_0_2.v" \
"../../../bd/CSSTE/ipshared/0ee6/sources_1/new/clk_div.v" \
"../../../bd/CSSTE/ip/CSSTE_clk_div_0_0/sim/CSSTE_clk_div_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_util_vector_logic_0_0/sim/CSSTE_util_vector_logic_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_3/sim/CSSTE_xlslice_0_3.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_4/sim/CSSTE_xlslice_0_4.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_5/sim/CSSTE_xlslice_0_5.v" \

vlog -work xlconcat_v2_1_1  -v2k5 \
"../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_xlconcat_0_0/sim/CSSTE_xlconcat_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_util_vector_logic_1_0/sim/CSSTE_util_vector_logic_1_0.v" \

vlog -work dist_mem_gen_v8_0_12  -v2k5 \
"../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_dist_mem_gen_0_0/sim/CSSTE_dist_mem_gen_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_0_6/sim/CSSTE_xlslice_0_6.v" \
"../../../bd/CSSTE/ipshared/67de/HexTo8SEG.v" \
"../../../bd/CSSTE/ipshared/67de/MC14495_ZJU.v" \
"../../../bd/CSSTE/ipshared/67de/MUX2T1_64.v" \
"../../../bd/CSSTE/ipshared/67de/P2S.v" \
"../../../bd/CSSTE/ipshared/67de/SSeg_map.v" \
"../../../bd/CSSTE/ipshared/67de/SSeg7_Dev.v" \
"../../../bd/CSSTE/ip/CSSTE_SSeg7_Dev_0_0/sim/CSSTE_SSeg7_Dev_0_0.v" \
"../../../bd/CSSTE/ipshared/2990/Hex2Ascii.v" \
"../../../bd/CSSTE/ipshared/2990/VgaController.v" \
"../../../bd/CSSTE/ipshared/2990/VgaDebugger.v" \
"../../../bd/CSSTE/ipshared/2990/VgaDisplay.v" \
"../../../bd/CSSTE/ipshared/2990/VGA.v" \
"../../../bd/CSSTE/ip/CSSTE_VGA_0_0/sim/CSSTE_VGA_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_1_0/sim/CSSTE_xlslice_1_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_1_1/sim/CSSTE_xlslice_1_1.v" \
"../../../bd/CSSTE/ip/CSSTE_div20_0/sim/CSSTE_div20_0.v" \
"../../../bd/CSSTE/ip/CSSTE_div25_0/sim/CSSTE_div25_0.v" \
"../../../bd/CSSTE/ip/CSSTE_div25_1/sim/CSSTE_div25_1.v" \

vlog -work xlconstant_v1_1_3  -v2k5 \
"../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CSSTE/ip/CSSTE_xlconstant_0_0/sim/CSSTE_xlconstant_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_b64_0_0/sim/CSSTE_b64_0_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlconcat_1_0/sim/CSSTE_xlconcat_1_0.v" \
"../../../bd/CSSTE/ip/CSSTE_xlslice_1_2/sim/CSSTE_xlslice_1_2.v" \
"../../../bd/CSSTE/sim/CSSTE.v" \
"../../../bd/CSSTE/ip/CSSTE_dist_mem_gen_0_1/sim/CSSTE_dist_mem_gen_0_1.v" \
"../../../bd/CSSTE/ipshared/36c8/src/ALU.v" \
"../../../bd/CSSTE/ipshared/36c8/src/ImmGen.v" \
"../../../bd/CSSTE/ipshared/36c8/src/MUX2T1_32.v" \
"../../../bd/CSSTE/ipshared/36c8/src/MUX4T1_32.v" \
"../../../bd/CSSTE/ipshared/36c8/src/REG32.v" \
"../../../bd/CSSTE/ipshared/36c8/src/Regs.v" \
"../../../bd/CSSTE/ipshared/36c8/src/SCPU_ctrl.v" \
"../../../bd/CSSTE/ipshared/36c8/src/datapath_code.v" \
"../../../bd/CSSTE/ipshared/36c8/src/IP2CPU.v" \
"../../../bd/CSSTE/ip/CSSTE_IP2CPU_0_0/sim/CSSTE_IP2CPU_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

