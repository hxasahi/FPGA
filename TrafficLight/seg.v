module seg(
input wire clk,
input rst_n,
input wire[7:0] dat1,
input wire[7:0] dat2,
output reg[7:0] seg_out,
output reg[3:0] sel
);
reg[31:0] cnt;
reg[3:0] seg_num;
wire[7:0] bcd1;
wire[7:0] bcd2;
bcd_8421 bcd_8421_1(.bin(dat1),.bcd(bcd1));
bcd_8421 bcd_8421_2(.bin(dat2),.bcd(bcd2));
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

//seg_num
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)		
		seg_num<=8'hff;					
	else				
		case(sel)
			4'b1110: seg_num <= bcd2[7:4];
			4'b1101: seg_num <= bcd2[3:0];
			4'b1011: seg_num <= bcd1[7:4];
			4'b0111: seg_num <= bcd1[3:0];			
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