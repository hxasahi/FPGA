module demo(clk,key,beep,led);
input wire clk;
input wire[4:0] key;
output reg beep=1'b0;
output reg[4:0] led;
reg[31:0] cnt;
reg[31:0] freq = 32'd100_000;
always @ (posedge clk)
begin	
	case(key)
		~5'b00001:
		begin
			freq<=32'd100_000;
			cnt<=0;
		end
		~5'b00010:
		begin
			freq<=32'd200_000;
			cnt<=0;
		end
		~5'b00100:
		begin
			freq<=32'd300_000;
			cnt<=0;
		end
		~5'b01000:
		begin
			freq<=32'd400_000;
			cnt<=0;
		end
		~5'b10000:
		begin
			freq<=32'd500_000;			
			cnt<=0;
		end
		default:
		begin
			freq<=32'd600_000;				
			cnt<=0;
		end
	endcase
	case(freq)
		32'd100_000:led=5'b00001;
		32'd200_000:led=5'b00011;
		32'd300_000:led=5'b00111;
		32'd400_000:led=5'b01111;
		32'd500_000:led=5'b11111;
		32'd600_000:led=5'b00000;
		default:led=5'b10101;
	endcase
	cnt<=cnt+32'd1;		
	if(cnt==freq)
	begin
		cnt<=32'd0;
		beep<=~beep;	
	end
end
endmodule