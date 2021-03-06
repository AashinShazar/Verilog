module ArithmeticCircuit(A, B, Cin, s1, s0, Cout, F);
	input s1, s0, Cin;
	input [3:0] A, B;
	output Cout;
	output [3:0] F;
	
	wire [2:0] Z;
	
	ArithmeticCircuitSingle		z0(.A(A[0]), .B(B[0]), .Cin(Cin), .s1(s1), .s0(s0), .Cout(Z[0]), .F(F[0]));
	ArithmeticCircuitSingle		z1(.A(A[1]), .B(B[1]), .Cin(Z[0]), .s1(s1), .s0(s0), .Cout(Z[1]), .F(F[1]));
	ArithmeticCircuitSingle		z2(.A(A[2]), .B(B[2]), .Cin(Z[1]), .s1(s1), .s0(s0), .Cout(Z[2]), .F(F[2]));
	ArithmeticCircuitSingle		z3(.A(A[3]), .B(B[3]), .Cin(Z[2]), .s1(s1), .s0(s0), .Cout(Cout), .F(F[3]));
	
endmodule
