module demo(clk,seg,sel);
input wire clk;
output reg[7:0] seg=8'hff;
output wire[7:0] sel;
reg[31:0] cnt;
reg[3:0] temp;
assign sel = ~8'b0000_0001;
always @ (posedge clk)
begin
	cnt=cnt+1;
	if(cnt==32'd50_000_000)
	begin
		cnt=0;
		case(temp)
			4'd0: seg = 8'hc0;
			4'd1: seg = 8'hf9;
			4'd2: seg = 8'ha4;
			4'd3: seg = 8'hb0;
			4'd4: seg = 8'h99;
			4'd5: seg = 8'h92;
			4'd6: seg = 8'h82;
			4'd7: seg = 8'hf8;
			4'd8: seg = 8'h80;
			4'd9: seg = 8'h90;
			default:seg = 8'hff;
		endcase
		temp=temp+1;
		if(temp==4'd10)
			temp=0;
	end
end
endmodule