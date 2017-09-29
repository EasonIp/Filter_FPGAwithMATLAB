transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/fft256.vo}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/source {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/source/TransformFilter.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/shifter12_128.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/source {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/source/window.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/shifter16_2048.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/rom12_256.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/mult12_12.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/dram16_256.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/source {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/source/fftfilter.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/shifter16_256.v}
vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/source {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/source/ifftout.v}

vlog -vlog01compat -work work +incdir+D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/simulation/modelsim {D:/FilterVerilog/Chapter_8/E8_2/TransformFilter/simulation/modelsim/TransformFilter.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  TransformFilter_vlg_tst

add wave *
view structure
view signals
run -all
