module demo(clk,key,led);
input clk;
input wire[1:0] key;
output reg[7:0] led;

reg[3:0] cnt;
wire key_right;
wire key_left;

key key1(.clk(clk),.key_in(key[0]),.key_flag(key_right));
key key2(.clk(clk),.key_in(key[1]),.key_flag(key_left));

always @ (posedge clk)
begin
	if(key_right)
	begin
		cnt<=cnt+1'b1;
		if(cnt==4'd9)
			cnt<=4'd0;
	end
	else if(key_left)
	begin
		if(cnt==4'd0)
			cnt<=4'd1;
		else
			cnt<=cnt-4'd1;
	end
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