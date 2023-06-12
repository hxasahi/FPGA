transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/project/FPGA/key {E:/project/FPGA/key/demo.v}
vlog -vlog01compat -work work +incdir+E:/project/FPGA/key {E:/project/FPGA/key/key.v}

