onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+IP2CPU -L xil_defaultlib -L xlslice_v1_0_1 -L util_vector_logic_v2_0_1 -L xlconstant_v1_1_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.IP2CPU xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {IP2CPU.udo}

run -all

endsim

quit -force
