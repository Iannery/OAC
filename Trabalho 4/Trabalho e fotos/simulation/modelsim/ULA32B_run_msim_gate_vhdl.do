transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ULA32B.vho}

vcom -93 -work work {C:/Users/Ian/Desktop/IanNeryBandeira170144739/ULA32B_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=ULA32B_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  ULA32B_tb

add wave *
view structure
view signals
run 2000 ns
