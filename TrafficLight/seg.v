module seg(
input wire clk,
input rst_n,
input wire[7:0] dat,
input wire pos,
output reg[7:0] seg_out,
output reg[7:0] sel
);
reg[31:0] cnt;
reg[7:0] temp;
always @ (posedge clk or negedge rst_n)
begin
	if(rst_n==0)
		begin		
			cnt<=0;
			seg_out<=8'hff;
			sel<=8'd0;
			temp<=8'd0;
		end
	else		
		begin
			if(temp>8'd8)
				temp<=8'd0;
			else
				temp<=temp+8'd1;
			sel<=(8'd1<<temp);
			if(cnt<32'd1)
				cnt<=cnt+32'd1;
			else
			begin
				cnt<=32'd0;				
				case(dat)
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
		end	
end
endmodule