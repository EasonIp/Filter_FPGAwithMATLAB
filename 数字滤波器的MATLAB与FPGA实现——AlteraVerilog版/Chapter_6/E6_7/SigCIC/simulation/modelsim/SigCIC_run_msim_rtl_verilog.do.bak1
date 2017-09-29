transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_7/SigCIC/source {D:/FilterVerilog/Chapter_6/E6_7/SigCIC/source/SigCIC.v}

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_7/SigCIC/simulation/modelsim {D:/FilterVerilog/Chapter_6/E6_7/SigCIC/simulation/modelsim/SigCIC.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  SigCIC_vlg_tst

add wave *
view structure
view signals
run -all
