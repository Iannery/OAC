onerror {quit -f}
vlib work
vlog -work work Processador_mips.vo
vlog -work work Processador_mips.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Processador_mips_final_vlg_vec_tst
vcd file -direction Processador_mips.msim.vcd
vcd add -internal Processador_mips_final_vlg_vec_tst/*
vcd add -internal Processador_mips_final_vlg_vec_tst/i1/*
add wave /*
run -all
