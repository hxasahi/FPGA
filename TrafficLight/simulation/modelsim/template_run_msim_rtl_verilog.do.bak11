transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/project/FPGA/TrafficLight {E:/project/FPGA/TrafficLight/template.v}
vlog -vlog01compat -work work +incdir+E:/project/FPGA/TrafficLight {E:/project/FPGA/TrafficLight/key.v}
vlog -vlog01compat -work work +incdir+E:/project/FPGA/TrafficLight {E:/project/FPGA/TrafficLight/seg.v}
vlog -vlog01compat -work work +incdir+E:/project/FPGA/TrafficLight {E:/project/FPGA/TrafficLight/adjust_shift.v}
vlog -vlog01compat -work work +incdir+E:/project/FPGA/TrafficLight/output_files {E:/project/FPGA/TrafficLight/output_files/bcd_8421.v}

vlog -vlog01compat -work work +incdir+E:/project/FPGA/TrafficLight/simulation/modelsim {E:/project/FPGA/TrafficLight/simulation/modelsim/template.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  template_vlg_tb

add wave *
view structure
view signals
run -all
