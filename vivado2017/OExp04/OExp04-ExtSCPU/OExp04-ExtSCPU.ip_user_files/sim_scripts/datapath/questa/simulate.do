onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib datapath_opt

do {wave.do}

view wave
view structure
view signals

do {datapath.udo}

run -all

quit -force
