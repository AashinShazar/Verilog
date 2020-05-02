module SegmentDisplay(Switches,Buttons,Segments1, Segments2, Segments3);

input wire [2:0] Buttons; //mode select
input wire [3:0] Switches; //binary input to system
output reg [6:0] Segments1; //mode display
output reg [6:0] Segments2; //MSB output
output reg [6:0] Segments3; //LSB output
	
always@(*) begin
	case(Buttons)
	3'b011: begin //hexidecimal output
				Segments1 <= 7'b0001011; //set mode display to hex
				Segments2 <= 7'b1111111; //MSB = 0
				case(Switches)
					default: Segments3 <= 7'b1000000; //digits 0-9 LSB
					4'b0001: Segments3 <= 7'b1111001; //for 7 segment display 
					4'b0010: Segments3 <= 7'b0100100; //active low
					4'b0011: Segments3 <= 7'b0110000;
					4'b0100: Segments3 <= 7'b0011001;
					4'b0101: Segments3 <= 7'b0010010;
					4'b0110: Segments3 <= 7'b0000010;
					4'b0111: Segments3 <= 7'b1111000;
					4'b1000: Segments3 <= 7'b0000000;
					4'b1001: Segments3 <= 7'b0010000;
					4'b1010: Segments3 <= 7'b0001000; //digits 10-15 hex
					4'b1011: Segments3 <= 7'b0000011;
					4'b1100: Segments3 <= 7'b1000110;
					4'b1101: Segments3 <= 7'b0100001; 
					4'b1110: Segments3 <= 7'b0000110; 
					4'b1111: Segments3 <= 7'b0001110;
				endcase
			end
	3'b101: 
			begin // decimal count to 9 in LSB,  7 segment display active low
				Segments1 <= 7'b0000011; //mode display to b for BCD
				Segments2 <= 7'b1111111; //set MSB to zero
				case(Switches)
					4'b0000: Segments3 <= 7'b1000000; //digits 0-9 LSB
					4'b0001: Segments3 <= 7'b1111001; //for 7 segment display 
					4'b0010: Segments3 <= 7'b0100100; //active low
					4'b0011: Segments3 <= 7'b0110000;
					4'b0100: Segments3 <= 7'b0011001;
					4'b0101: Segments3 <= 7'b0010010;
					4'b0110: Segments3 <= 7'b0000010;
					4'b0111: Segments3 <= 7'b1111000;
					4'b1000: Segments3 <= 7'b0000000;
					4'b1001: Segments3 <= 7'b0010000;
					4'b1010: Segments3 <= 7'b0010000;
					4'b1011: Segments3 <= 7'b0010000;
					4'b1100: Segments3 <= 7'b0010000;
					4'b1101: Segments3 <= 7'b0010000; 
					4'b1110: Segments3 <= 7'b0010000;
					4'b1111: Segments3 <= 7'b0010000;
				endcase
			end
	3'b110: 
			begin //BCD count up to 15, 7 segment display active low
				Segments1 <= 7'b0100001; //display D for decimal 
				case(Switches)
					4'b0000: begin Segments3 <= 7'b1000000; Segments2<=7'b1000000; end  
					4'b0001: begin Segments3 <= 7'b1111001; Segments2<=7'b1000000; end  
					4'b0010: begin Segments3 <= 7'b0100100; Segments2<=7'b1000000; end 
					4'b0011: begin Segments3 <= 7'b0110000; Segments2<=7'b1000000; end
					4'b0100: begin Segments3 <= 7'b0011001; Segments2<=7'b1000000; end
					4'b0101: begin Segments3 <= 7'b0010010; Segments2<=7'b1000000; end
					4'b0110: begin Segments3 <= 7'b0000010; Segments2<=7'b1000000; end
					4'b0111: begin Segments3 <= 7'b1111000; Segments2<=7'b1000000; end
					4'b1000: begin Segments3 <= 7'b0000000; Segments2<=7'b1000000; end
					4'b1001: begin Segments3 <= 7'b0010000; Segments2<=7'b1000000; end
					4'b1010: begin Segments3 <= 7'b1000000; Segments2<=7'b1111001; end 
					4'b1011: begin Segments3 <= 7'b1111001; Segments2<=7'b1111001; end
					4'b1100: begin Segments3 <= 7'b0100100; Segments2<=7'b1111001; end
					4'b1101: begin Segments3 <= 7'b0110000; Segments2<=7'b1111001; end
					4'b1110: begin Segments3 <= 7'b0011001; Segments2<=7'b1111001; end
					4'b1111: begin Segments3 <= 7'b0010010; Segments2<=7'b1111001; end
				endcase
			end
			3'b011: begin //hexidecimal output
				Segments1 <= 7'b0001011; //set mode display to hex
				Segments2 <= 7'b1111111; //MSB = 0
				case(Switches)
					default: Segments3 <= 7'b1000000; //digits 0-9 LSB
					4'b0001: Segments3 <= 7'b1111001; //for 7 segment display 
					4'b0010: Segments3 <= 7'b0100100; //active low
					4'b0011: Segments3 <= 7'b0110000;
					4'b0100: Segments3 <= 7'b0011001;
					4'b0101: Segments3 <= 7'b0010010;
					4'b0110: Segments3 <= 7'b0000010;
					4'b0111: Segments3 <= 7'b1111000;
					4'b1000: Segments3 <= 7'b0000000;
					4'b1001: Segments3 <= 7'b0010000;
					4'b1010: Segments3 <= 7'b0001000; //digits 10-15 hex
					4'b1011: Segments3 <= 7'b0000011;
					4'b1100: Segments3 <= 7'b1000110;
					4'b1101: Segments3 <= 7'b0100001; 
					4'b1110: Segments3 <= 7'b0000110; 
					4'b1111: Segments3 <= 7'b0001110;
				endcase
			end
			
			default: 
			begin //bleckout all digits if no button held
				Segments1 <= 7'b1111111; //display D for decimal 
				Segments2 <= 7'b1111111; //display D for decimal 
				Segments3 <= 7'b1111111; //display D for decimal 

			end
			
	endcase
end

endmodule

	



