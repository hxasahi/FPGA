module demo(clk,key,beep,led);
input wire clk;
input wire[4:0] key;
output reg beep=1'b0;
output reg[4:0] led;
reg[31:0] cnt;
integer freq = 32'd1000_000;
always @ (posedge clk)
begin	
	case(key)
		~5'b00001:freq=32'd100_000;
		~5'b00010:freq=32'd100_000;
		~5'b00100:freq=32'd100_000;
		~5'b01000:freq=32'd100_000;
		~5'b10000:freq=32'd100_000;
		default:freq=32'd1000_000;
	endcase	
	cnt=cnt+1;
	if(cnt==freq)
	begin
		cnt=0;
		beep=~beep;
	end
end
endmodule