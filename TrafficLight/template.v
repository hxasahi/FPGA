module template(
input clk,
input rst_n,
input wire key,
output reg led,
output wire[7:0] seg_out,
output wire[3:0] sel
);

wire key1;
wire[3:0] seg_num;
reg[13:0] dat;
reg pos;
reg[31:0] cnt_1s;
key key_1(.clk(clk),.rst_n(rst_n),.key_in(key),.key_flag(key1));
seg seg_1(.clk(clk),.rst_n(rst_n),.dat(dat),.pos(pos),.seg_out(seg_out),.sel(sel));
/*
always @ (posedge clk or negedge rst_n)
begin
	if(rst_n==1'b0)
		led<=0;
	else
		led<=~led;
end
*/
always @ (posedge clk or negedge rst_n)
begin
	if(rst_n==1'b0)
	begin
		dat<=14'd0;
		pos<=4'd1;
		cnt_1s<=31'd0;
		led<=1'd0;
	end
	else		
	begin
		if(cnt_1s==31'd49_999_999)
		begin
			cnt_1s<=31'd0;		
			if(dat>14'd5)
				dat<=14'd0;
			else
				dat<=dat+14'd1;				
		end
		else
			cnt_1s<=cnt_1s+31'd1;
	end
end
endmodule
