module edge_det(ps2c,clk,validsr, rst);
	
	input ps2c, clk, rst;
	output validsr;
	
	wire a, b;
	
	
	my_dff	i0(.D(ps2c), .clk(clk), .Q(a), .rst(rst));
	my_dff	i1(.D(a), .clk(clk), .Q(b), .rst(rst));
	
	assign validsr = ~a*b;
	

endmodule 