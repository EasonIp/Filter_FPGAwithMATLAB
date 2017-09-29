transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_4/E4_8/FirParallel/source {D:/FilterVerilog/Chapter_4/E4_8/FirParallel/source/FirParallel.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_4/E4_8/FirParallel/ipcore {D:/FilterVerilog/Chapter_4/E4_8/FirParallel/ipcore/mult.v}

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_4/E4_8/FirParallel/simulation/modelsim {D:/FilterVerilog/Chapter_4/E4_8/FirParallel/simulation/modelsim/FirParallel.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  FirParallel_vlg_tst

add wave *
view structure
view signals
run -all
