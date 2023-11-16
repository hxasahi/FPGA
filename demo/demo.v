module demo
(
	input wire clk,
	input wire rst_n,
	input wire key,
	output wire[7:0] seg,
	output wire[3:0] pos
);
//seg
reg[7:0] dat1 = 8'd12;
reg[7:0] dat2 = 8'd34;
seg seg1(.clk(clk),.rst_n(rst_n),.dat1(dat1),.dat2(dat2),.seg_out(seg),.sel(pos));

//key	
wire flag;	
key key1(.clk(clk),.rst_n(rst_n),.key_in(key),.key_flag(flag));

//fsm
reg[2:0] state;
parameter IDLE = 3'b001;
parameter ONE  = 3'b010;
parameter TWO  = 3'b100;

//state
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		state <= IDLE;
	else
		case(state)
			IDLE:
				if(flag)
					state<=ONE;
				else
					state<=IDLE;
			ONE:
				if(flag)
					state<=TWO;
				else
					state<=ONE;
			TWO:
				if(flag)
					state<=IDLE;
				else
					state<=TWO;
			default:
				state<=state;
		endcase	
end
		
//dat1  dat2
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		dat1 <= 8'd12;
		dat2 <= 8'd34;
	end
	else
	begin
		if(state==IDLE)
			dat1 <= 8'd0;
		else if(state==ONE)
			dat1 <= 8'd1;
		//满足这个条件等于满足state==TWO，所以这个放前面
		else if(state==TWO && flag)		
			dat2 <= 8'd33;	
		else if(state==TWO)
			dat1 <= 8'd2;	
	end	
end

endmodule
