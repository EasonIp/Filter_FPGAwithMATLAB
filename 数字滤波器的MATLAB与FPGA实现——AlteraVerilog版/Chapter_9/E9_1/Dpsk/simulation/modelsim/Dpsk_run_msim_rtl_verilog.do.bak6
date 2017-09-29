transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_9/E9_1/Dpsk {D:/FilterVerilog/Chapter_9/E9_1/Dpsk/dds.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_9/E9_1/Dpsk {D:/FilterVerilog/Chapter_9/E9_1/Dpsk/lpf.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_9/E9_1/Dpsk {D:/FilterVerilog/Chapter_9/E9_1/Dpsk/mult.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_9/E9_1/Dpsk/source {D:/FilterVerilog/Chapter_9/E9_1/Dpsk/source/Dpsk.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_9/E9_1/Dpsk/source {D:/FilterVerilog/Chapter_9/E9_1/Dpsk/source/PD_LoopFilter.v}

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_9/E9_1/Dpsk/simulation/modelsim {D:/FilterVerilog/Chapter_9/E9_1/Dpsk/simulation/modelsim/Dpsk.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Dpsk_vlg_tst

add wave *
view structure
view signals
run -all
