transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog {G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog/FullAdder.v}
vlog -vlog01compat -work work +incdir+G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog {G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog/Mux2x1.v}
vlog -vlog01compat -work work +incdir+G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog {G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog/Mux3x2.v}
vlog -vlog01compat -work work +incdir+G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog {G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog/ArithmeticCircuitSingle.v}
vlog -vlog01compat -work work +incdir+G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog {G:/Files/DigitalSystemDesign/Laboratory/Lab2/Verilog/ArithmeticCircuit.v}

vlog -vlog01compat -work work +incdir+G:/Files/DigitalSystemDesign/Laboratory/Lab2/Quartus/../Verilog {G:/Files/DigitalSystemDesign/Laboratory/Lab2/Quartus/../Verilog/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
