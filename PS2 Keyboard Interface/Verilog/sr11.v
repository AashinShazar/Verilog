module sr11(sIn,sOut, clk, enable);
	
	input sIn, enable, clk;
	output reg [10:0] sOut;
	
	always @(posedge clk) begin
	
		if (enable)
			sOut <= {sIn,sOut[10:1]};
	
	end
	
endmodule 