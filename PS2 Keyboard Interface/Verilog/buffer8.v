module buffer8(sIn, sOut, enable, clk, rst);
	
	input clk, enable, rst;
	
	input [10:0] sIn;
	output reg [10:0] sOut;
	
	always @(posedge clk) begin
		if (rst) begin
			if (enable) sOut <= sIn;
		
		end
	
		else
			sOut <= 4'd0;
		
	end

endmodule
