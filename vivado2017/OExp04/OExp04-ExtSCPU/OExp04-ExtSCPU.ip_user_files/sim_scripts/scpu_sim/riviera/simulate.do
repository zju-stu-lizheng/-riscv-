onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+scpu_sim -L dist_mem_gen_v8_0_12 -L xil_defaultlib -L xlslice_v1_0_1 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.scpu_sim xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {scpu_sim.udo}

run -all

endsim

quit -force
