transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+d:/FilterVerilog/Chapter_2/E2_4/Mixer {d:/FilterVerilog/Chapter_2/E2_4/Mixer/oc.vo}
vlog -vlog01compat -work work +incdir+d:/FilterVerilog/Chapter_2/E2_4/Mixer/source {d:/FilterVerilog/Chapter_2/E2_4/Mixer/source/Mixer.v}

vlog -vlog01compat -work work +incdir+d:/FilterVerilog/Chapter_2/E2_4/Mixer/simulation/modelsim {d:/FilterVerilog/Chapter_2/E2_4/Mixer/simulation/modelsim/Mixer.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Mixer_vlg_tst

add wave *
view structure
view signals
run -all
