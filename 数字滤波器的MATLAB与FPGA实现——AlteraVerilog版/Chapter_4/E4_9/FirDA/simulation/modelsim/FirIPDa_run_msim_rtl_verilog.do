transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_4/E4_9/FirDA {D:/FilterVerilog/Chapter_4/E4_9/FirDA/fir_par.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_4/E4_9/FirDA/source {D:/FilterVerilog/Chapter_4/E4_9/FirDA/source/FirIPDa.v}

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_4/E4_9/FirDA/simulation/modelsim {D:/FilterVerilog/Chapter_4/E4_9/FirDA/simulation/modelsim/FirIPDa.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  FirIPDa_vlg_tst

add wave *
view structure
view signals
run -all
