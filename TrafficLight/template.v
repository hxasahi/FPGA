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
wire[11:0] bcd;
reg pos;
reg [7:0] dat1;
reg [7:0] dat2;
reg[31:0] cnt_1s;
key key_1(.clk(clk),.rst_n(rst_n),.key_in(key),.key_flag(key1));
seg seg_1(.clk(clk),.rst_n(rst_n),.dat1(dat1),.dat2(dat2),.pos(pos),.seg_out(seg_out),.sel(sel));
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
		dat1<=8'd0;
		dat2<=8'd20;
		pos<=4'd1;
		cnt_1s<=31'd0;
		led<=1'd0;
	end
	else		
	begin
		if(cnt_1s==31'd49_999_999)
		begin
			cnt_1s<=31'd0;
			if(dat1>8'd25)
				dat1<=8'd0;
			else
				dat1<=dat1+8'd1;		
			if(dat2==8'd0)
				dat2<=8'd20;
			else
				dat2<=dat2-8'd1;
		end
		else
			cnt_1s<=cnt_1s+31'd1;
	end
end
endmodule
