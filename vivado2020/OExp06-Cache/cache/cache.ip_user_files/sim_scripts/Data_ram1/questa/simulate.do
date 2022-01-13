onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Data_ram1_opt

do {wave.do}

view wave
view structure
view signals

do {Data_ram1.udo}

run -all

quit -force
