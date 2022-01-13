onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ALU_opt

do {wave.do}

view wave
view structure
view signals

do {ALU.udo}

run -all

quit -force
