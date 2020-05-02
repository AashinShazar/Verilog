module Keyboard(ps2c,ps2d, clk, prev_seg1, prev_seg0, curr_seg1, curr_seg0, rst);

	input ps2c, ps2d , clk, rst;
	output [6:0] prev_seg1, prev_seg0, curr_seg1, curr_seg0;
	
	wire validsr, validb;
	wire [10:0] out_prevb, out_currb;
	wire [10:0] out_sr;
	
	
	edge_det		i0(.ps2c(ps2c),.clk(clk),.validsr(validsr), .rst(rst));	// negative edge detector
																								// enabler for shift register
	sr11			i1(.sIn(ps2d),.sOut(out_sr), .clk(clk), .enable(validsr)); //	11-bit shift register that holds
																								  //	11-bit data packet from the keyboard
	
	counter4		i2(.in(validsr),.out(validb),.clk(clk), .rst(rst)); //	enabler for buffer
																						 //	outputs 1 w/ 11-bit shift registers
																							
		
	buffer8		i3(.sIn(out_sr), .sOut(out_currb), .enable(validb), .clk(clk), .rst(rst)); // holds the current
																														// shift register's data packet
	
	buffer8		i4(.sIn(out_currb), .sOut(out_prevb), .enable(validb), .clk(clk), .rst(rst));	// holds previous register's
																															// data packet

	hex_display	h0(.seg_in(out_currb[4:1]), .seg_out(curr_seg0));	// current display
	hex_display	h1(.seg_in(out_currb[8:5]), .seg_out(curr_seg1));
	hex_display	h2(.seg_in(out_prevb[4:1]), .seg_out(prev_seg0));	// previous display
	hex_display	h3(.seg_in(out_prevb[8:5]), .seg_out(prev_seg1));

	
endmodule 