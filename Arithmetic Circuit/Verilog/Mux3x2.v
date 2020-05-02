module Mux3X2(i0, i1, i2, s0, s1, F);
	input i0, i1, i2, s0, s1;
	output F;
	
	wire A;
	
	Mux2x1	a0(.i0(i1), .i1(i2), .S(s0), .F(A));
	Mux2x1	a1(.i0(i0), .i1(A), .S(s1), .F(F));
	
endmodule
	