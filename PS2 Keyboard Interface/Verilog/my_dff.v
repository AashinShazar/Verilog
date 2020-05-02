module my_dff(D, clk, Q, rst);

	input D, clk, rst;
	output Q;
	
	reg Qint;

	always @(posedge clk) begin
			
		if (rst) 
			Qint <= D;
		
		else 
			Qint <= 1'b0;
			
	end
		
		assign Q = Qint;

endmodule 