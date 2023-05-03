module demo(clk,rst_n,key,led);
input clk;
input rst_n;
input wire[1:0] key;
output reg[7:0] led;

reg[3:0] cnt;
wire key_1;
wire key0_5;
parameter IDLE  = 4'd1;
parameter S0_5  = 4'd2;
parameter S1    = 4'd3;
parameter S1_5  = 4'd4;
parameter S2    = 4'd5;
reg[3:0] state;

key key1(.clk(clk),.key_in(key[0]),.key_flag(key_1));
key key2(.clk(clk),.key_in(key[1]),.key_flag(key0_5));

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
					state<=IDLE;				
				else
					state<=S1_5;		
		S2 : if(key0_5)
					state<=IDLE;
				else if(key_1)
					state<=IDLE;				
				else
					state<=S2;
		default: state<=IDLE;
		endcase
	end
end
always @ (posedge clk or negedge rst_n)
begin
	if(rst_n==1'b0)
		led=8'b0000_0000;
	else
	begin
		//出可乐		
		if(state==S1_5 && key_1==1'b1)
			led<=8'b1100_0000;
		else if(state==S2 && key0_5==1'b1)	
			led<=8'b1110_0000;	
		else if(state==S2 && key_1==1'b1)	
			led<=8'b1111_0000;		
		
		else if(state==S0_5)
			led<=8'b0000_0001;
		else if(state==S1)
			led<=8'b0000_0011;	
		else if(state==S1_5)
			led<=8'b0000_0111;
		else if(state==S2)	
			led<=8'b0000_1111;			
	end
end
endmodule