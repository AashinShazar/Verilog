`timescale 1ns/1ps
module tb();
	
	reg [3:0] A, B;
	reg s0, s1, Cin;
	wire Cout;
	wire [3:0] F;
	
	initial 
	begin
		A = 4'b1001;
		B = 4'b1100;
		
		{Cin, s1, s0} = 3'b000;
		#20;
		{Cin, s1, s0} = 3'b001;
		#20;
		{Cin, s1, s0} = 3'b010;
		#20;
		{Cin, s1, s0} = 3'b011;
		#20;
		{Cin, s1, s0} = 3'b100;
		#20;
		{Cin, s1, s0} = 3'b101;
		#20;
		{Cin, s1, s0} = 3'b110;
		#20;
		{Cin, s1, s0} = 3'b111;
		#20;
		$stop;
	end
	
	ArithmeticCircuit	i0(.A(A), .B(B), .Cin(Cin), .s1(s1), .s0(s0), .Cout(Cout), .F(F));
	
endmodule

