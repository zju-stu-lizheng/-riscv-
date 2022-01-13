vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlslice_v1_0_1
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/xlconstant_v1_1_3

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlslice_v1_0_1 questa_lib/msim/xlslice_v1_0_1
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap xlconstant_v1_1_3 questa_lib/msim/xlconstant_v1_1_3

vlog -work xil_defaultlib -64 \
"../../../bd/ALU/ipshared/e52d/src/and32.v" \
"../../../bd/ALU/ip/ALU_and32_0_0/sim/ALU_and32_0_0.v" \

vlog -work xlslice_v1_0_1 -64 \
"../../../../OEXP01_ALU_newest.srcs/sources_1/bd/ALU/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/ALU/ip/ALU_xlslice_0_0/sim/ALU_xlslice_0_0.v" \
"../../../bd/ALU/ipshared/b5e1/src/xor32.v" \
"../../../bd/ALU/ip/ALU_xor32_0_0/sim/ALU_xor32_0_0.v" \
"../../../bd/ALU/ipshared/8232/src/nor32.v" \
"../../../bd/ALU/ip/ALU_nor32_0_0/sim/ALU_nor32_0_0.v" \
"../../../bd/ALU/ipshared/9887/src/MUX8T1_32.v" \
"../../../bd/ALU/ip/ALU_MUX8T1_32_0_0/sim/ALU_MUX8T1_32_0_0.v" \
"../../../bd/ALU/ipshared/b6f5/src/or_bit_32.v" \
"../../../bd/ALU/ip/ALU_or_bit_32_0_0/sim/ALU_or_bit_32_0_0.v" \

vlog -work xlconcat_v2_1_1 -64 \
"../../../../OEXP01_ALU_newest.srcs/sources_1/bd/ALU/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/ALU/ip/ALU_xlconcat_0_0/sim/ALU_xlconcat_0_0.v" \
"../../../bd/ALU/ip/ALU_xor32_1_0/sim/ALU_xor32_1_0.v" \
"../../../bd/ALU/ip/ALU_xlslice_1_0/sim/ALU_xlslice_1_0.v" \

vlog -work xlconstant_v1_1_3 -64 \
"../../../../OEXP01_ALU_newest.srcs/sources_1/bd/ALU/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/ALU/ip/ALU_xlconstant_0_0/sim/ALU_xlconstant_0_0.v" \
"../../../bd/ALU/ip/ALU_xlslice_1_1/sim/ALU_xlslice_1_1.v" \
"../../../bd/ALU/sim/ALU.v" \
"../../../bd/ALU/ipshared/a97d/src/srl32.v" \
"../../../bd/ALU/ip/ALU_srl32_0_0/sim/ALU_srl32_0_0.v" \
"../../../bd/ALU/ipshared/79d4/src/or32.v" \
"../../../bd/ALU/ip/ALU_or32_0_1/sim/ALU_or32_0_1.v" \
"../../../bd/ALU/ipshared/3956/src/SignalExt_32.v" \
"../../../bd/ALU/ip/ALU_SignalExt_32_0_1/sim/ALU_SignalExt_32_0_1.v" \
"../../../bd/ALU/ipshared/3b2b/src/ADC32.v" \
"../../../bd/ALU/ip/ALU_ADC32_0_1/sim/ALU_ADC32_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

