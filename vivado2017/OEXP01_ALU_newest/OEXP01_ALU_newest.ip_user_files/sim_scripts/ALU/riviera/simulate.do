onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ALU -L xil_defaultlib -L xlslice_v1_0_1 -L xlconcat_v2_1_1 -L xlconstant_v1_1_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ALU xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ALU.udo}

run -all

endsim

quit -force
