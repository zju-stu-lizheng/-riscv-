vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xlslice_v1_0_1
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/xlconstant_v1_1_3
vlib activehdl/util_vector_logic_v2_0_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlslice_v1_0_1 activehdl/xlslice_v1_0_1
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap xlconstant_v1_1_3 activehdl/xlconstant_v1_1_3
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/DataPath/ipshared/99ce/src/Regs.v" \
"../../../bd/DataPath/ip/DataPath_regs_0_0/sim/DataPath_regs_0_0.v" \

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../datapath.srcs/sources_1/bd/DataPath/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/DataPath/ip/DataPath_xlslice_0_0/sim/DataPath_xlslice_0_0.v" \
"../../../bd/DataPath/ip/DataPath_xlslice_0_1/sim/DataPath_xlslice_0_1.v" \
"../../../bd/DataPath/ip/DataPath_xlslice_1_0/sim/DataPath_xlslice_1_0.v" \
"../../../bd/DataPath/ipshared/258b/src/and32.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_and32_0_0.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_xlslice_0_0.v" \
"../../../bd/DataPath/ipshared/258b/src/xor32.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_xor32_0_0.v" \
"../../../bd/DataPath/ipshared/258b/src/nor32.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_nor32_0_0.v" \
"../../../bd/DataPath/ipshared/258b/src/MUX8T1_32.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_MUX8T1_32_0_0.v" \
"../../../bd/DataPath/ipshared/258b/src/or_bit_32.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_or_bit_32_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 \
"../../../../datapath.srcs/sources_1/bd/DataPath/ipshared/258b/src/xlconcat_v2_1_1/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/DataPath/ipshared/258b/sim/ALU_xlconcat_0_0.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_xor32_1_0.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_xlslice_1_0.v" \

vlog -work xlconstant_v1_1_3  -v2k5 \
"../../../../datapath.srcs/sources_1/bd/DataPath/ipshared/258b/src/xlconstant_v1_1_3/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/DataPath/ipshared/258b/sim/ALU_xlconstant_0_0.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_xlslice_1_1.v" \
"../../../bd/DataPath/ipshared/258b/src/srl32.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_srl32_0_0.v" \
"../../../bd/DataPath/ipshared/258b/src/or32.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_or32_0_1.v" \
"../../../bd/DataPath/ipshared/258b/src/SignalExt_32.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_SignalExt_32_0_1.v" \
"../../../bd/DataPath/ipshared/258b/src/ADC32.v" \
"../../../bd/DataPath/ipshared/258b/sim/ALU_ADC32_0_1.v" \
"../../../bd/DataPath/ipshared/258b/src/ALU.v" \
"../../../bd/DataPath/ipshared/258b/src/ALU_wrapper.v" \
"../../../bd/DataPath/ip/DataPath_ALU_wrapper_0_0/sim/DataPath_ALU_wrapper_0_0.v" \
"../../../bd/DataPath/ipshared/9980/REG32.v" \
"../../../bd/DataPath/ip/DataPath_REG32_0_0/sim/DataPath_REG32_0_0.v" \
"../../../bd/DataPath/ip/DataPath_xlconstant_0_0/sim/DataPath_xlconstant_0_0.v" \
"../../../bd/DataPath/ipshared/59fa/src/add_32.v" \
"../../../bd/DataPath/ip/DataPath_add_32_0_0/sim/DataPath_add_32_0_0.v" \
"../../../bd/DataPath/ip/DataPath_add_32_0_1/sim/DataPath_add_32_0_1.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../datapath.srcs/sources_1/bd/DataPath/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/DataPath/ip/DataPath_util_vector_logic_0_0/sim/DataPath_util_vector_logic_0_0.v" \
"../../../bd/DataPath/ip/DataPath_xlconstant_0_1/sim/DataPath_xlconstant_0_1.v" \
"../../../bd/DataPath/ipshared/ce46/src/ImmGen.v" \
"../../../bd/DataPath/ip/DataPath_ImmGen_0_0/sim/DataPath_ImmGen_0_0.v" \
"../../../bd/DataPath/sim/DataPath.v" \

vlog -work xil_defaultlib \
"glbl.v"

