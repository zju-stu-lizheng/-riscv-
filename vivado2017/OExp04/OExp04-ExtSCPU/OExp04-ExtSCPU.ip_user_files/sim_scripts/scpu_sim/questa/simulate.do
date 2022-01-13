onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib scpu_sim_opt

do {wave.do}

view wave
view structure
view signals

do {scpu_sim.udo}

run -all

quit -force
