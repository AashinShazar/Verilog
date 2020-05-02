module counter4(in,out,clk, rst);

	input clk, in, rst;
	output reg out;
	
	reg [3:0] sta;
	reg [3:0] stn;
	
	always @(*) begin
		
		case (sta)
		
			4'd0: stn = in? 4'd1:4'd0;	// if input is 1 go to next state
			4'd1: stn = in? 4'd2:4'd1;	// if input is 0, stay
			4'd2: stn = in? 4'd3:4'd2;
			4'd3: stn = in? 4'd4:4'd3;
			4'd4: stn = in? 4'd5:4'd4;
			4'd5: stn = in? 4'd6:4'd5;
			4'd6: stn = in? 4'd7:4'd6;
			4'd7: stn = in? 4'd8:4'd7;
			4'd8: stn = in? 4'd9:4'd8;
			4'd9: stn = in? 4'd10:4'd9;
			4'd10: stn = in? 4'd0:4'd10;
			default: stn = 0;
					
		endcase	
		
	end
	
	
	always @(posedge clk) begin
		if (rst) begin
			if (sta == 4'd10 && in == 4'd1)
				out <= 1'b1;
			
			else 
			out <= 1'b0;
			
			sta <= stn;
		end	
			
		else 
		sta <= 4'd0;
	end
	
endmodule 