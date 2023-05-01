module demo(clk,key,led);
input clk;
input key;
output reg[7:0] led;

reg[3:0] cnt;
reg key_flag;
reg [19:0] cnt_20ms;
parameter cnt_max = 20'd999_999;

always @ (posedge clk)
begin
	if(key==1'b1)
		cnt_20ms <= 20'b0;
	else if(cnt_20ms==cnt_max && key==1'b0)
		cnt_20ms <= cnt_20ms;
	else
		cnt_20ms <= cnt_20ms + 1'b1;
end

always @ (posedge clk)
begin
	if(cnt_20ms == cnt_max-1'b1)
		key_flag <= 1'b1;
	else
		key_flag <= 1'b0;
end

always @ (posedge key_flag)
begin
	cnt<=cnt+1'b1;
	if(cnt==4'd9)
		cnt<=4'd0;
end
always @ (posedge clk)
begin
	case(cnt)
	4'd0:led=8'b0000_0000;
	4'd1:led=8'b0000_0001;
	4'd2:led=8'b0000_0010;
	4'd3:led=8'b0000_0100;
	4'd4:led=8'b0000_1000;
	4'd5:led=8'b0001_0000;
	4'd6:led=8'b0010_0000;
	4'd7:led=8'b0100_0000;
	4'd8:led=8'b1000_0000;
	default:led=8'b1111_1111;
	endcase
end
endmodule