onerror {quit -f}
vlib work
vlog -work work memMIPS.vo
vlog -work work memMIPS.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.memMIPS_vlg_vec_tst
vcd file -direction memMIPS.msim.vcd
vcd add -internal memMIPS_vlg_vec_tst/*
vcd add -internal memMIPS_vlg_vec_tst/i1/*
add wave /*
run -all
