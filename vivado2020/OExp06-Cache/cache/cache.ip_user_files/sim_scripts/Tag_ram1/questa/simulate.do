onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Tag_ram1_opt

do {wave.do}

view wave
view structure
view signals

do {Tag_ram1.udo}

run -all

quit -force
