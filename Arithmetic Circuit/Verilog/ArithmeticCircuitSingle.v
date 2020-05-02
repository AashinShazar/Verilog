module ArithmeticCircuitSingle(A, B, Cin, s1, s0, Cout, F);
	input A, B, Cin, s1, s0; 
	output Cout, F;
	
	wire X, Y;
	
	Mux3X2	x0(.i0(A), .i1(~A), .i2(1'b0), .s0(s0), .s1(s1), .F(X));
	Mux2x1	y0(.i0(B), .i1(~B), .S(s0), .F(Y));
	FullAdder	i0(.A(X), .B(Y), .Cin(Cin), .Sum(F), .Cout(Cout));

endmodule
