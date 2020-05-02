module sr11_tb();

	wire [10:0] sOut;
	reg sIn, enable, clk, rst;

	initial begin 
		clk <= 1;
	end
	
	always #3 clk <= !clk; // generate clock signal
	

	
	always begin
	rst = 1;
	#5;
	enable <= 1;
	#10;
	sIn <= 1;
	#10;
	sIn <= 0;
	#10;
	sIn <= 0;
	#10;
	sIn <= 0;
	#10;
	sIn <= 1;
	#10;
	sIn <= 0;
	#10;
	sIn <= 0;
	#10;
	sIn <= 0;
	#10;
	sIn <= 1;
	#10;
	sIn <= 1;
	#10;
	sIn <= 1;
	#10;
	$stop;
	
	end
	
	sr11	i0(.sIn(sIn),.sOut(sOut), .clk(clk), .enable(enable));


endmodule 