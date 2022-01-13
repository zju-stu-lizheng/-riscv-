onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib IP2CPU_opt

do {wave.do}

view wave
view structure
view signals

do {IP2CPU.udo}

run -all

quit -force
