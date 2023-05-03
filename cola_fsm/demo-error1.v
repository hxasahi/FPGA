module demo(clk,rst_n,key,led);
input clk;
input rst_n;
input wire[1:0] key;
output reg[7:0] led;

reg[3:0] cnt;
reg[31:0] cnt_5s;
parameter cnt_5s_max = 32'd2_5000_0000;

reg[31:0] led_10s;
parameter led_10s_max = 32'd5_0000_0000;

reg [7:0] led_temp;
reg[31:0] led_500ms;
parameter led_500ms_max = 32'd2500_0000;

wire key_1;
wire key0_5;
parameter IDLE  = 4'd1;
parameter S0_5  = 4'd2;
parameter S1    = 4'd3;
parameter S1_5  = 4'd4;
parameter S2    = 4'd5;
parameter S2_5  = 4'd6;
parameter S3    = 4'd7;
reg[3:0] state;

key key1(.clk(clk),.key_in(key[0]),.key_flag(key_1));
key key2(.clk(clk),.key_in(key[1]),.key_flag(key0_5));
//5s重置
always @ (posedge clk or negedge rst_n)
begin
	if(rst_n==1'b0)
		cnt_5s <= 32'd0;
	else if(state==IDLE)
		cnt_5s <= 32'd0;
	else if(key_1==1'd1 || key0_5==1'd1)
		cnt_5s <= 32'd0;
	else if(cnt_5s == cnt_5s_max)
		cnt_5s <= cnt_5s;
	else
		cnt_5s <= cnt_5s + 32'd1;
end
//流水灯时钟
always @ (posedge clk or negedge rst_n)
begin
	if(rst_n==1'b0)
		led_500ms<=0;
	else if(led_500ms==led_500ms_max)
		led_500ms<=0;
	else
		led_500ms<=led_500ms+1;
end
//流水灯
always @ (posedge clk or negedge rst_n)
begin
	if(state==LED1)
		if(rst_n==1'b0)
			led_temp<=8'b0000_0001;
		else if(led_temp==8'b1000_0000 && led_500ms==led_500ms_max-1)
			led_temp<=8'b0000_0001;
		else if(led_500ms==led_500ms_max-1)
			led_temp<=led_temp<<1;		
	else if(state==LED2)
		if(rst_n==1'b0)
				led_temp<=8'b1000_0000;
			else if(led_temp==8'b0000_0001 && led_500ms==led_500ms_max-1)
				led_temp<=8'b1000_0000;
			else if(led_500ms==led_500ms_max-1)
				led_temp<=led_temp>>1;		
end

always @ (posedge clk or negedge rst_n)
begin
	if(rst_n==1'b0)
		state<=IDLE;
	else
	begin
		case(state)
		IDLE: if(key0_5)			
					state<=S0_5;							
				else if(key_1)
					state<=S1;
				else
					state<=IDLE;
		S0_5 : if(key0_5)
					state<=S1;
				else if(key_1)
					state<=S1_5;				
				else
					state<=S0_5;
		S1  : if(key0_5)
					state<=S1_5;
				else if(key_1)
					state<=S2;
				else
					state<=S1;
		S1_5 : if(key0_5)
					state<=S2;
				else if(key_1)
					state<=S2_5;				
				else
					state<=S1_5;		
		S2 : if(key0_5)
					state<=S2_5;
				else if(key_1)
					state<=S3;				
				else
					state<=S2;			
		S2_5 : state<=S2_5;
		S3   : state<=S3;
		default: state<=IDLE;
		endcase
		if(cnt_5s==cnt_5s_max-32'd1)
				state<=IDLE;
	end
end
always @ (posedge clk or negedge rst_n)
begin
	if(rst_n==1'b0)
		led<=8'b0000_0000;	
	else
	begin
		//出可乐		
		/*
		if(state==S1_5 && key_1==1'b1)
			led<=8'b1100_0000;
		else if(state==S2 && key0_5==1'b1)	
			led<=8'b1110_0000;	
		else if(state==S2 && key_1==1'b1)	
			led<=8'b1111_0000;		
		*/
		if(state==S2_5)
			led<=led_temp;
		else if(state==S3)
			led<=led_temp;
		else if(state==S0_5)
			led<=8'b0000_0001;
		else if(state==S1)
			led<=8'b0000_0011;	
		else if(state==S1_5)
			led<=8'b0000_0111;
		else if(state==S2)	
			led<=8'b0000_1111;				
		else if(state==IDLE)
			led<=8'b0000_0000;
	end
end
endmodule