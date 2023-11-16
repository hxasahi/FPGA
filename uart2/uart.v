module uart
(
	input wire clk,
	input wire rst_n,
	//input wire[7:0] data_in,
	output reg uart_tx
	/*
	output reg[4:0] cnt_bit,
	output reg[12:0] cnt_baud,
	output reg baud_flag,
	output reg uart_en,
	output reg[12:0] cnt_sleep
	*/
);

//记录当前位数，0为起始位，1-8为数据位，9为停止位

wire[7:0] data_in=8'b0000_1111;
reg[4:0] cnt_bit;
reg[12:0] cnt_baud;
reg baud_flag;
reg uart_en;
reg[31:0] cnt_sleep;

parameter baud_max = 5208;
parameter sleep_max = 5_000_000;
//reg[12:0] cnt_sleep;
//cnt_sleep
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt_sleep<=0;
	else if(cnt_sleep<sleep_max-1)
		cnt_sleep<=cnt_sleep+1;
	else
		cnt_sleep<=0;
end

//uart_en
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		uart_en<=0;
	else if(cnt_sleep==sleep_max-1)
		uart_en<=1;
	else if(cnt_bit==9 && baud_flag)
		uart_en<=0;		
end

//baud
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt_baud<=0;
	else if(cnt_baud==baud_max-1 || (!uart_en))
		cnt_baud<=0;
	else if(uart_en)
		cnt_baud<=cnt_baud+1;
end

//baud_flag
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		baud_flag<=0;
	else if(cnt_baud==baud_max-1)
		baud_flag<=1;-
	else
		baud_flag<=0;
end

//cnt_bit
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt_bit<=0;
	else if(cnt_bit<9 && baud_flag)
		cnt_bit<=cnt_bit+1;		
	//!uart_en貌似不起作用
	else if(cnt_bit==9 && (!uart_en))
		cnt_bit<=0;
	else
		cnt_bit<=cnt_bit;
end

//uart_tx
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		uart_tx<=1;
	else
		case(cnt_bit)
			0:
			begin
				if(uart_en)
					uart_tx<=0;
				else
					uart_tx<=1;
			end
			1:uart_tx<=data_in[0];
			2:uart_tx<=data_in[1];
			3:uart_tx<=data_in[2];
			4:uart_tx<=data_in[3];
			5:uart_tx<=data_in[4];
			6:uart_tx<=data_in[5];
			7:uart_tx<=data_in[6];
			8:uart_tx<=data_in[7];
			9:uart_tx<=1;
			default:uart_tx<=1;
		endcase			
end
endmodule
