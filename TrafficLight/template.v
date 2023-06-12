module template(
input clk,
input rst_n,
input wire key,
output reg led,
output wire[7:0] seg_out,
output wire[3:0] sel
/*
output reg[3:0] state,
output reg[7:0] sec,
output reg[7:0] sec_max
*/
);

wire key1;
wire[3:0] seg_num;
wire[11:0] bcd;
reg [7:0] dat1;
reg [7:0] dat2;
reg[31:0] cnt_1s;
reg[7:0] sec,sec_max;
reg[3:0] state;
parameter IDLE       = 4'd1;
parameter M_GREEN    = 4'd2;
parameter M_YELLOW   = 4'd3;
parameter M_RED      = 4'd4;
parameter S_YELLOW   = 4'd5;
parameter EMG        = 4'd6;
parameter CNT_1S_MAX = 31'd49_999_99;
//parameter CNT_1S_MAX = 31'd49;
key key_1(.clk(clk),.rst_n(rst_n),.key_in(key),.key_flag(key1));
seg seg_1(.clk(clk),.rst_n(rst_n),.dat1(dat1),.dat2(dat2),.seg_out(seg_out),.sel(sel));

always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin		
		sec<=4'd0;
		cnt_1s<=31'd0;		
	end
	else if(sec==sec_max)	
	begin
		cnt_1s<=31'd0;
		sec<=4'd0;
		dat1<=sec;
		dat2<=sec;
	end
	else if(cnt_1s == CNT_1S_MAX)	
	begin
		cnt_1s<=31'd0;
		sec<=sec+1'd1;
		dat1<=sec;
		dat2<=sec;
	end
	else
	begin
		cnt_1s<=cnt_1s+31'd1;
	end
end

always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		state<=IDLE;	
		sec_max=8'd22;
	end
	else
	begin
		case(state)
			IDLE:state<=M_GREEN;
			M_GREEN:
			begin
				sec_max<=8'd22;
				if(sec==sec_max)			
					state<=M_YELLOW;			
				else			
					state<=M_GREEN;							
			end
			M_YELLOW:
			begin
				sec_max<=8'd33;
				if(sec==sec_max)
					state<=M_RED;
				else
					state<=M_YELLOW;
			end
			M_RED:
			begin
				sec_max<=8'd44;
				if(sec==sec_max)
					state<=S_YELLOW;
				else
					state<=M_RED;
			end
			S_YELLOW:
			begin
				sec_max<=8'd55;
				if(sec==sec_max)
					state<=M_GREEN;
				else
					state<=S_YELLOW;
			end
			default:state<=IDLE;		
		endcase
	end
end
endmodule
