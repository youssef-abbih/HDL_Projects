onerror {quit -f}
vlib work
vlog -work work multiplication.vo
vlog -work work multiplication.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multiplication_vlg_vec_tst
vcd file -direction multiplication.msim.vcd
vcd add -internal multiplication_vlg_vec_tst/*
vcd add -internal multiplication_vlg_vec_tst/i1/*
add wave /*
run -all
