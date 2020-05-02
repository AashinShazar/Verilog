module tb_keyboard();

	wire [6:0] prev_seg1, prev_seg0, curr_seg1, curr_seg0;
	reg ps2c, ps2d, clk;

	initial begin 
		ps2c <= 1;
		clk <= 1;
	end
	
	always #25 ps2c <= !ps2c; // generate keyboard clock signal
	always #3 clk <= !clk;
	
	Keyboard	i0(.ps2c(ps2c),.ps2d(ps2d), .clk(clk), .prev_seg1(prev_seg1), .prev_seg0(prev_seg0), .curr_seg1(curr_seg1), .curr_seg0(curr_seg0));
	
	
	always begin
	//sending letter M (0x3A)
	
	#50 ps2d <= 1; // start
	#50 ps2d <= 0; // d0
	#50 ps2d <= 1; // d1
	#50 ps2d <= 0; // d2
	#50 ps2d <= 1; // d3
	#50 ps2d <= 1; // d4
	#50 ps2d <= 1; // d5
	#50 ps2d <= 0; // d6
	#50 ps2d <= 0; // d7
	#50 ps2d <= 1; // pariry bit
	#50 ps2d <= 1; // stop bit 1
	
	// sending left Alt (0x11)
	#50 ps2d <= 1;
	#50 ps2d <= 0;
	#50 ps2d <= 0;
	#50 ps2d <= 0;
	#50 ps2d <= 1;
	#50 ps2d <= 0;
	#50 ps2d <= 0;
	#50 ps2d <= 0;
	#50 ps2d <= 1;
	#50 ps2d <= 1;
	#50 ps2d <= 1;
	#50
	$stop;
	//
	end
	

endmodule 