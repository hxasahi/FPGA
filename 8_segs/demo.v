module demo(clk,seg,sel);
input wire clk;
output reg[7:0] seg=8'hff;
output reg[7:0] sel=~8'b0000_0001;
reg[31:0] cnt;
reg[3:0] temp;
always @ (posedge clk)
begin
	cnt=cnt+1;
	if(cnt==32'd100_000)
	begin
		cnt=0;
		case(temp)
			4'd0: 
			begin
				seg = 8'hc0;
				sel=~(8'b0000_0001<<0);
			end
			4'd1: 
			begin
				seg = 8'hf9;
				sel=~(8'b0000_0001<<1);
			end
			4'd2: 
			begin
				seg = 8'ha4;
				sel=~(8'b0000_0001<<2);
			end
			4'd3: 
			begin
				seg = 8'hb0;
				sel=~(8'b0000_0001<<3);
			end
			4'd4: 
			begin
				seg = 8'h99;
				sel=~(8'b0000_0001<<4);
			end
			4'd5: 
			begin
				seg = 8'h92;
				sel=~(8'b0000_0001<<5);
			end
			4'd6: 
			begin
				seg = 8'h82;
				sel=~(8'b0000_0001<<6);
			end
			4'd7: 
			begin
				seg = 8'hf8;
				sel=~(8'b0000_0001<<7);			
			end
			default:
			begin
				seg = 8'hff;
				sel=~(8'b0000_0000);	
			end
		endcase
		temp=temp+1;
		if(temp==4'd8)
			temp=0;
	end
end
endmodule