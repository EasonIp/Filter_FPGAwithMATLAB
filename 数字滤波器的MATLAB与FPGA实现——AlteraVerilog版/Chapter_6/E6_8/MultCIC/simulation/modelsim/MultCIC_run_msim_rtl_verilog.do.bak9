transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_8/MultCIC/source {D:/FilterVerilog/Chapter_6/E6_8/MultCIC/source/Integrated.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_8/MultCIC/source {D:/FilterVerilog/Chapter_6/E6_8/MultCIC/source/Decimate.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_8/MultCIC/source {D:/FilterVerilog/Chapter_6/E6_8/MultCIC/source/Comb.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_8/MultCIC/source {D:/FilterVerilog/Chapter_6/E6_8/MultCIC/source/MultCIC.v}

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_8/MultCIC/simulation/modelsim {D:/FilterVerilog/Chapter_6/E6_8/MultCIC/simulation/modelsim/MultCIC.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  MultCIC_vlg_tst

add wave *
view structure
view signals
run -all
