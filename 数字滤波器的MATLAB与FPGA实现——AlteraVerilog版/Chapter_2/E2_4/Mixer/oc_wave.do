transcript on
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 30
add wave -noupdate -format Logic -radix binary /oc_tb/clk
add wave -noupdate -format Logic -radix binary /oc_tb/reset_n
add wave -noupdate -format Logic -radix binary /oc_tb/clken


add wave -noupdate -divider -height 50 {Phase Increment Value}
add wave -noupdate -format Literal -radix unsigned /oc_tb/phi

add wave -noupdate -divider -height 30 {Output value}
add wave -noupdate -format Logic -radix binary /oc_tb/out_valid
add wave -noupdate -color Yellow -format Literal -radix decimal  /oc_tb/sin_val

add wave -noupdate -divider -height 80 {sine waveform}
add wave -noupdate -color Yellow -format Analog-Step -radix decimal -scale 0.064 /oc_tb/sin_val

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {356 ns}
WaveRestoreZoom {0 ns} {2132 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
