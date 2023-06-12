module template(
input clk,
input rst_n,
input wire key,
output reg led,
output wire[7:0] seg_out,
output wire[7:0] sel
);

wire key1;
reg[7:0] dat;
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
		dat<=4'hff;
		pos<=4'd1;
		cnt_1s<=31'b0;
		led<=1'd0;
	end
	else
	begin		
		if(cnt_1s==31'd9)
		begin
			cnt_1s<=31'd0;		
			if(dat>4'd9)
				dat<=4'd0;
			else
				dat<=dat+1'b1;				
		end
		else
			cnt_1s<=cnt_1s+31'd1;
	end
end
endmodule
