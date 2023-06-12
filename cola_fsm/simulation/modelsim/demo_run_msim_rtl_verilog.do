transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/project/FPGA/cola_fsm {E:/project/FPGA/cola_fsm/demo.v}
vlog -vlog01compat -work work +incdir+E:/project/FPGA/cola_fsm {E:/project/FPGA/cola_fsm/key.v}

vlog -vlog01compat -work work +incdir+E:/project/FPGA/cola_fsm/simulation/modelsim {E:/project/FPGA/cola_fsm/simulation/modelsim/demo.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  demo_vlg_tst

add wave *
view structure
view signals
run -all
