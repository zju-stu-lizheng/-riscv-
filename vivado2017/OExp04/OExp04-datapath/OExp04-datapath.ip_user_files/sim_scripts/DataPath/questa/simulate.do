onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib DataPath_opt

do {wave.do}

view wave
view structure
view signals

do {DataPath.udo}

run -all

quit -force
