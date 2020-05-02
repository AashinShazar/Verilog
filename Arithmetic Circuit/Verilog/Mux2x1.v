module Mux2x1(i0, i1, S, F);
	input i0, i1, S;
	output F;
	
	reg F;
	
	always @(*)
	begin
		case (S)
			1'b0 : F = i0;
			1'b1 : F = i1;
		endcase
	end
	
endmodule
	