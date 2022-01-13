onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib CSSTE_opt

do {wave.do}

view wave
view structure
view signals

do {CSSTE.udo}

run -all

quit -force
