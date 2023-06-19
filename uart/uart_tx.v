module uart_tx(
input  clk,
input rst_n,
output reg dat
/*
output reg en,
output reg[31:0] cnt,
output reg[7:0] o_dat,
output reg[3:0] bit_cnt,
output reg bit_flag,
output reg work_flag
*/
);

reg en;
reg[31:0] cnt;
reg[7:0] o_dat;
reg[3:0] bit_cnt;
reg bit_flag;
reg work_flag;

reg [31:0] cnt1s;
parameter baud = 5208;
parameter cnt_1s_max = 49_999_999;

//cnt 5208
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt<=32'd0;
	else if(cnt>=baud-1 || work_flag==1'd0)
		cnt<=32'd0;
	else
		cnt<=cnt+32'd1;
end

//cnt 1s
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		cnt1s<=32'd0;
		en<=1'd0;
	end
	else if(bit_cnt==4'd8)
		en<=1'b0;
	else if(cnt1s>=cnt_1s_max-1)
	begin
		cnt1s<=32'd0;
		en<=1'b1;
	end
	else
		cnt1s<=cnt1s+32'd1;
end

//work_flag
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		work_flag<=1'd0;
	else if(en)
		work_flag<=1'd1;
	else if(bit_flag && bit_cnt==4'd8)
		work_flag<=1'd0;
end
//bit_flag
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		bit_flag<=1'd0;
	else if(cnt==baud-1)
		bit_flag<=1'd1;
	else
		bit_flag<=1'd0;
end
//bit_cnt
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		bit_cnt<=4'd9;
	else if(bit_flag==1'd1 && bit_cnt>=4'd9)
		bit_cnt<=4'd0;
	else if(bit_flag && work_flag==1'd1)
		bit_cnt<=bit_cnt+4'd1;
end
//dat
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)	
	begin
		dat<=1'd1;
		o_dat<="a";
	end
	else
	begin	
		case (bit_cnt)
			4'd0:dat<=1'd0;
			4'd1:dat<=o_dat[0];
			4'd2:dat<=o_dat[1];
			4'd3:dat<=o_dat[2];
			4'd4:dat<=o_dat[3];
			4'd5:dat<=o_dat[4];
			4'd6:dat<=o_dat[5];
			4'd7:dat<=o_dat[6];
			4'd8:dat<=o_dat[7];
			4'd9:dat<=1'd1;
			default:dat<=1'd1;
		endcase
	end
end
endmodule
