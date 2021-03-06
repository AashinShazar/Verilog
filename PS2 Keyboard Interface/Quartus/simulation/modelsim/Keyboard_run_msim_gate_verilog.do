transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Keyboard_7_1200mv_0c_slow.vo}

vlog -vlog01compat -work work +incdir+G:/Files/DigitalSystemDesign/Laboratory/Lab5/Quartus/../Verilog {G:/Files/DigitalSystemDesign/Laboratory/Lab5/Quartus/../Verilog/keyboard_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  keyboard_tb

add wave *
view structure
view signals
run -all
