transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Ian/Desktop/IanNeryBandeira170144739/ULA32B.vhd}

vcom -93 -work work {C:/Users/Ian/Desktop/IanNeryBandeira170144739/ULA32B_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  ULA32B_tb

add wave *
view structure
view signals
run 100 ps
