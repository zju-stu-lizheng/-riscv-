vlib work
vlib riviera

vlib riviera/util_vector_logic_v2_0_1
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_3
vlib riviera/xlslice_v1_0_1

vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_3 riviera/xlconstant_v1_1_3
vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/datapath/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/datapath/ip/datapath_util_vector_logic_0_0/sim/datapath_util_vector_logic_0_0.v" \

vlog -work xlconstant_v1_1_3  -v2k5 \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/datapath/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/datapath/ip/datapath_xlconstant_0_0/sim/datapath_xlconstant_0_0.v" \
"../../../bd/datapath/ip/datapath_not1_0/sim/datapath_not1_0.v" \
"../../../bd/datapath/ip/datapath_AND3_0/sim/datapath_AND3_0.v" \
"../../../bd/datapath/ipshared/ced4/src/ImmGen.v" \
"../../../bd/datapath/ip/datapath_ImmGen_0_0/sim/datapath_ImmGen_0_0.v" \
"../../../bd/datapath/ipshared/59fa/src/add_32.v" \
"../../../bd/datapath/ip/datapath_add_32_0_0/sim/datapath_add_32_0_0.v" \
"../../../bd/datapath/ip/datapath_add_32_0_1/sim/datapath_add_32_0_1.v" \
"../../../bd/datapath/ip/datapath_util_vector_logic_0_1/sim/datapath_util_vector_logic_0_1.v" \
"../../../bd/datapath/ipshared/07da/src/MUX4T1_32.v" \
"../../../bd/datapath/ip/datapath_MUX4T1_32_0_0/sim/datapath_MUX4T1_32_0_0.v" \

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/datapath/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/datapath/ip/datapath_xlslice_0_0/sim/datapath_xlslice_0_0.v" \
"../../../bd/datapath/ip/datapath_Rs1_0/sim/datapath_Rs1_0.v" \
"../../../bd/datapath/ip/datapath_Rs1_1/sim/datapath_Rs1_1.v" \
"../../../bd/datapath/ipshared/c86a/src/MUX2T1_32.v" \
"../../../bd/datapath/ip/datapath_MUX2T1_32_0_0/sim/datapath_MUX2T1_32_0_0.v" \
"../../../bd/datapath/ip/datapath_MUX4T1_32_0_1/sim/datapath_MUX4T1_32_0_1.v" \
"../../../bd/datapath/ip/datapath_MUX2T1_32_0_1/sim/datapath_MUX2T1_32_0_1.v" \
"../../../bd/datapath/ipshared/99ce/src/Regs.v" \
"../../../bd/datapath/ip/datapath_regs_0_0/sim/datapath_regs_0_0.v" \
"../../../bd/datapath/ip/datapath_xlconstant_0_1/sim/datapath_xlconstant_0_1.v" \
"../../../bd/datapath/ipshared/9980/src/REG32.v" \
"../../../bd/datapath/ip/datapath_REG32_0_0/sim/datapath_REG32_0_0.v" \
"../../../bd/datapath/ipshared/3410/src/ALU.v" \
"../../../bd/datapath/ip/datapath_ALU_0_0/sim/datapath_ALU_0_0.v" \
"../../../bd/datapath/sim/datapath.v" \

vlog -work xil_defaultlib \
"glbl.v"

