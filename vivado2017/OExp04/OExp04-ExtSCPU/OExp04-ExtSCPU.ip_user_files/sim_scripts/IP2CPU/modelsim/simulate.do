onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xlslice_v1_0_1 -L util_vector_logic_v2_0_1 -L xlconstant_v1_1_3 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.IP2CPU xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {IP2CPU.udo}

run -all

quit -force
