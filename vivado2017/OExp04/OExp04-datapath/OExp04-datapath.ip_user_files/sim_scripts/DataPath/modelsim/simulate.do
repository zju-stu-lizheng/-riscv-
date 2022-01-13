onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xlconstant_v1_1_7 -L xil_defaultlib -L util_vector_logic_v2_0_1 -L xlslice_v1_0_2 -L xlslice_v1_0_1 -L xlconcat_v2_1_1 -L xlconstant_v1_1_3 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.DataPath xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {DataPath.udo}

run -all

quit -force
