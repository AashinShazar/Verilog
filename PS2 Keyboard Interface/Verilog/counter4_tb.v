module counter4_tb();

	reg clk, in;
	wire out;
	
	wire [3:0] count;
	
	assign count = i0.sta;
	
	counter4	i0(in,out,clk);
	
	initial begin 
		clk <= 1;
	end
	
	always #2 clk <= !clk; // generate clock signal
	
	always begin
	
	#5;
	in <= 0;
	#15;
	in <= 1;
	#15;
	in <= 0;
	#15;
	in <= 1;
	#15;
	in <= 1;
	#15;
	in <= 0;
	#15;
	in <= 1;
	#15;
	in <= 1;
	#15;
	in <= 1;
	#15;
	in <= 1;
	#15;
	in <= 1;
	#15;
	in <= 1;
	#15;
	in <= 0;
	#15;
	$stop;
	
	
	
	end
	

endmodule 