transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/project/FPGA/demo {E:/project/FPGA/demo/bcd_8421.v}
vlog -vlog01compat -work work +incdir+E:/project/FPGA/demo {E:/project/FPGA/demo/adjust_shift.v}
vlog -vlog01compat -work work +incdir+E:/project/FPGA/demo {E:/project/FPGA/demo/demo.v}

vlog -vlog01compat -work work +incdir+E:/project/FPGA/demo/simulation/modelsim {E:/project/FPGA/demo/simulation/modelsim/demo.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  demo_vlg_tst

add wave *
view structure
view signals
run -all
