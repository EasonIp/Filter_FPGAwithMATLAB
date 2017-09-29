transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand {D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/hf_1.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand {D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/hf_2.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand {D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/hf_3.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand {D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/hf_4.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand {D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/hf_5.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand {D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/hf_6.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/source {D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/source/MultiHalfBand.v}

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/simulation/modelsim {D:/FilterVerilog/Chapter_6/E6_11/MultiHalfBand/simulation/modelsim/MultiHalfBand.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  MultiHalfBand_vlg_tst

add wave *
view structure
view signals
run -all
