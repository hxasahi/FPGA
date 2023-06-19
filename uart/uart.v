module uart
(
input clk,
input rst_n,
input rx,
output reg[7:0] dat
);
parameter baud = 5208;
reg[31:0] cnt;
reg bit_flag;
//cnt 5208
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt<=32'd0;
	else if(cnt>=baud-1)
		cnt<=32'd0;
	else
		cnt<=cnt+32'd1;
end
//bit_flag
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		bit_flag<=0;
	else if(cnt==2604)
		bit_flag<=1'd1;
	else
		bit_flag<=1'd0;
endmodule
