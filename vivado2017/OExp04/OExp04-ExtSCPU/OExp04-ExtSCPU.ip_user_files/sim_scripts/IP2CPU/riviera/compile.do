vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_1
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/xlconstant_v1_1_3

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap xlconstant_v1_1_3 riviera/xlconstant_v1_1_3

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/IP2CPU/sim/IP2CPU.v" \

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../OExp04-ExtSCPU.srcs/sources_1/bd/IP2CPU/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/IP2CPU/ip/IP2CPU_inst6_2_0/sim/IP2CPU_inst6_2_0.v" \
"../../../bd/IP2CPU/ip/IP2CPU_inst14_12_0/sim/IP2CPU_inst14_12_0.v" \
"../../../bd/IP2CPU/ip/IP2CPU_inst30_0/sim/IP2CPU_inst30_0.v" \
"../../../bd/IP2CPU/ipshared/c095/src/SCPU_ctrl.v" \
"../../../bd/IP2CPU/ip/IP2CPU_SCPU_ctrl_0_1/sim/IP2CPU_SCPU_ctrl_0_1.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../ipstatic/util_vector_logic_v2_0_1/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_util_vector_logic_0_0.v" \

vlog -work xlconstant_v1_1_3  -v2k5 \
"../../../ipstatic/xlconstant_v1_1_3/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_xlconstant_0_0.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_not1_0.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_AND3_0.v" \
"../../../bd/IP2CPU/ipshared/1524/src/ImmGen.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_ImmGen_0_0.v" \
"../../../bd/IP2CPU/ipshared/1524/src/add_32.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_add_32_0_0.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_add_32_0_1.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_util_vector_logic_0_1.v" \
"../../../bd/IP2CPU/ipshared/1524/src/MUX4T1_32.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_MUX4T1_32_0_0.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_xlslice_0_0.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_Rs1_0.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_Rs1_1.v" \
"../../../bd/IP2CPU/ipshared/1524/src/MUX2T1_32.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_MUX2T1_32_0_0.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_MUX4T1_32_0_1.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_MUX2T1_32_0_1.v" \
"../../../bd/IP2CPU/ipshared/1524/src/Regs.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_regs_0_0.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_xlconstant_0_1.v" \
"../../../bd/IP2CPU/ipshared/1524/src/REG32.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_REG32_0_0.v" \
"../../../bd/IP2CPU/ipshared/1524/src/ALU.v" \
"../../../bd/IP2CPU/ipshared/1524/sim/datapath_ALU_0_0.v" \
"../../../bd/IP2CPU/ipshared/1524/src/datapath.v" \
"../../../bd/IP2CPU/ipshared/1524/src/datapath_wrapper.v" \
"../../../bd/IP2CPU/ip/IP2CPU_datapath_wrapper_0_1/sim/IP2CPU_datapath_wrapper_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

