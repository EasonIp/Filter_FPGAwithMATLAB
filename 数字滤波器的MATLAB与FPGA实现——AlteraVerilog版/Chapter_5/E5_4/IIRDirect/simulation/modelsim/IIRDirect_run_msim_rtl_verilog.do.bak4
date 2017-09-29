transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/source {D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/source/IIRDirect.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/ipcore {D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/ipcore/multc12.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/source {D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/source/ZeroParallel.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/source {D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/source/PoleParallel.v}

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/simulation/modelsim {D:/FilterVerilog/Chapter_5/E5_4/IIRDirect/simulation/modelsim/IIRDirect.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  IIRDirect_vlg_tst

add wave *
view structure
view signals
run -all
