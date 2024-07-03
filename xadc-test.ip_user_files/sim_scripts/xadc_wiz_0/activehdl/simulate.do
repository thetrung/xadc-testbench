transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+xadc_wiz_0  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.xadc_wiz_0 xil_defaultlib.glbl

do {xadc_wiz_0.udo}

run

endsim

quit -force
