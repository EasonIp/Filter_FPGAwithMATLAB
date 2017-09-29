transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_7/E7_3/Equalizer {D:/FilterVerilog/Chapter_7/E7_3/Equalizer/mult.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_7/E7_3/Equalizer/source {D:/FilterVerilog/Chapter_7/E7_3/Equalizer/source/Equalizer.v}

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_7/E7_3/Equalizer/simulation/modelsim {D:/FilterVerilog/Chapter_7/E7_3/Equalizer/simulation/modelsim/Equalizer.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Equalizer_vlg_tst

add wave *
view structure
view signals
run -all
