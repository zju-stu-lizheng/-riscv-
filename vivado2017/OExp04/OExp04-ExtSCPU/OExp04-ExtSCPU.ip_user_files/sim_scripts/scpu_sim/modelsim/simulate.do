onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L dist_mem_gen_v8_0_12 -L xil_defaultlib -L xlslice_v1_0_1 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.scpu_sim xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {scpu_sim.udo}

run -all

quit -force
