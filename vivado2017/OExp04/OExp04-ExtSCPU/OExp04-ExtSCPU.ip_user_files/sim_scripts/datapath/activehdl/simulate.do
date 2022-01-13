onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+datapath -L util_vector_logic_v2_0_1 -L xil_defaultlib -L xlconstant_v1_1_3 -L xlslice_v1_0_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.datapath xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {datapath.udo}

run -all

endsim

quit -force
