module demo(clk,rst_n,key,led);
input clk;
input rst_n;
//input wire[1:0] key;
input wire key;
output reg[7:0] led;

reg[3:0] cnt;
wire key_1;

parameter IDLE  = 4'b0001;
parameter ONE   = 4'b0010;
parameter TWO   = 4'b0100;
parameter THREE = 4'b1000;
reg[3:0] state;
key key1(.clk(clk),.key_in(key),.key_flag(key_1));

always @ (posedge clk or negedge rst_n)
begin
	if(rst_n==1'b0)
		state<=IDLE;
	else
	begin
		case(state)
		IDLE: if(key_1)			
					state<=ONE;							
				else
					state<=IDLE;
		ONE : if(key_1)
					state<=TWO;
				else
					state<=ONE;
		TWO : if(key_1)
					state<=THREE;				
				else
					state<=TWO;
		THREE:if(key_1)
					state<=IDLE;
				else
					state<=THREE;
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
		if(state==ONE)
			led=8'b0000_0001;
		else if(state==TWO)
			led=8'b0000_0010;	
		else if(state==THREE && key_1==1'b0)
			led=8'b0000_0100;
		else if(state==IDLE)	
			led=8'b1010_1010;	
	end
end
endmodule