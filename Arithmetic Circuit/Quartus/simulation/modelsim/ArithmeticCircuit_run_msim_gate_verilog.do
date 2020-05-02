transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ArithmeticCircuit.vo}

vlog -vlog01compat -work work +incdir+C:/Users/aashi/OneDrive/Desktop/Lab2/Quartus/../Verilog {C:/Users/aashi/OneDrive/Desktop/Lab2/Quartus/../Verilog/tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
