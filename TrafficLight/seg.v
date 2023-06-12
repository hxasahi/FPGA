module seg(
input wire clk,
input rst_n,
input wire[13:0] dat,
input wire pos,
output reg[7:0] seg_out,
output reg[3:0] sel
);
reg[31:0] cnt;
wire[3:0] dat1;
wire[3:0] dat2;
wire[3:0] dat3;
wire[3:0] dat4;
reg[3:0] seg_num;
//cnt 1 ms
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt<=32'd0;
	else if(cnt==32'd49_999)
		cnt<=32'd0;
	else
		cnt<=cnt+32'd1;
end
//sel
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)					
		sel<=4'b1110;		
	else if(cnt==32'd49_999)
		sel<={sel[2:0],sel[3]};
	else
		sel<=sel;
end
assign dat1 = dat % 10;
assign dat2 = dat / 10 % 10;
assign dat3 = dat / 100 % 10;
assign dat4 = dat / 1000 % 10;
//seg_num
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)		
		seg_num<=8'hff;					
	else				
		case(sel)
			4'b1110: seg_num <= dat4;
			4'b1101: seg_num <= dat3;
			4'b1011: seg_num <= dat2;
			4'b0111: seg_num <= dat1;			
			default:seg_num <= 4'd0;
		endcase					
end
//seg_out
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		seg_out<=8'hff;
	else
	case(seg_num)
		4'd0: seg_out <= 8'hc0;
		4'd1: seg_out <= 8'hf9;
		4'd2: seg_out <= 8'ha4;
		4'd3: seg_out <= 8'hb0;
		4'd4: seg_out <= 8'h99;
		4'd5: seg_out <= 8'h92;
		4'd6: seg_out <= 8'h82;
		4'd7: seg_out <= 8'hf8;
		4'd8: seg_out <= 8'h80;
		4'd9: seg_out <= 8'h90;
		default:seg_out <= 8'hff;
	endcase
end
endmodule