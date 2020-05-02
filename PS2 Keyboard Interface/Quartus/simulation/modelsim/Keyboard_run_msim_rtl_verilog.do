transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5\ S20/ENGR\ 378/Lab5/Lab5/Verilog {C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5 S20/ENGR 378/Lab5/Lab5/Verilog/hex_display.v}
vlog -vlog01compat -work work +incdir+C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5\ S20/ENGR\ 378/Lab5/Lab5/Verilog {C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5 S20/ENGR 378/Lab5/Lab5/Verilog/my_dff.v}
vlog -vlog01compat -work work +incdir+C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5\ S20/ENGR\ 378/Lab5/Lab5/Verilog {C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5 S20/ENGR 378/Lab5/Lab5/Verilog/edge_det.v}
vlog -vlog01compat -work work +incdir+C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5\ S20/ENGR\ 378/Lab5/Lab5/Verilog {C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5 S20/ENGR 378/Lab5/Lab5/Verilog/sr11.v}
vlog -vlog01compat -work work +incdir+C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5\ S20/ENGR\ 378/Lab5/Lab5/Verilog {C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5 S20/ENGR 378/Lab5/Lab5/Verilog/buffer8.v}
vlog -vlog01compat -work work +incdir+C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5\ S20/ENGR\ 378/Lab5/Lab5/Verilog {C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5 S20/ENGR 378/Lab5/Lab5/Verilog/counter4.v}
vlog -vlog01compat -work work +incdir+C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5\ S20/ENGR\ 378/Lab5/Lab5/Verilog {C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5 S20/ENGR 378/Lab5/Lab5/Verilog/Keyboard.v}

vlog -vlog01compat -work work +incdir+C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5\ S20/ENGR\ 378/Lab5/Lab5/Quartus/../Verilog {C:/Users/aashi/OneDrive/Desktop/school/SFSU/semester5 S20/ENGR 378/Lab5/Lab5/Quartus/../Verilog/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
