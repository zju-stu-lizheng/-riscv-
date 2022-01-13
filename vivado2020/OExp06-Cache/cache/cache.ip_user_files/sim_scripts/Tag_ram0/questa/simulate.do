onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Tag_ram0_opt

do {wave.do}

view wave
view structure
view signals

do {Tag_ram0.udo}

run -all

quit -force
