module template(
input clk,
input rst_n,
input wire[3:0] key,
output reg[5:0] led,
output wire[7:0] seg_out,
output wire[3:0] sel
);

wire keyEMG;
wire keySET;
wire keyUP;
wire keyDOWN;
wire[3:0] seg_num;
wire[11:0] bcd;
reg [7:0] dat1;
reg [7:0] dat2;
reg[31:0] cnt_1s,cnt_500ms;
reg[7:0] sec_g,sec_y,sec_r;
reg[7:0] sec,sec_max;
reg[3:0] state;
parameter IDLE       = 4'd1;
parameter M_GREEN    = 4'd2;
parameter M_YELLOW   = 4'd3;
parameter M_RED      = 4'd4;
parameter S_YELLOW   = 4'd5;
parameter EMG1       = 4'd6;
parameter EMG2       = 4'd7;
parameter EMG3       = 4'd8;
parameter SET_G      = 4'd9;
parameter SET_Y      = 4'd10;
parameter SET_R      = 4'd11;
parameter CNT_1S_MAX = 31'd49_999_999;
parameter CNT_500MS_MAX = 31'd24_999_999;

key key_1(.clk(clk),.rst_n(rst_n),.key_in(key[0]),.key_flag(keyEMG));
key key_2(.clk(clk),.rst_n(rst_n),.key_in(key[1]),.key_flag(keySET));
key key_3(.clk(clk),.rst_n(rst_n),.key_in(key[2]),.key_flag(keyUP));
key key_4(.clk(clk),.rst_n(rst_n),.key_in(key[3]),.key_flag(keyDOWN));
seg seg_1(.clk(clk),.rst_n(rst_n),.dat1(dat1),.dat2(dat2),.seg_out(seg_out),.sel(sel));

//cnt_1s
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)	
		cnt_1s<=32'd0;			
	else if(sec==sec_max)		
		cnt_1s<=32'd0;		
	else if(cnt_1s == CNT_1S_MAX)		
		cnt_1s<=32'd0;			
	else	
		cnt_1s<=cnt_1s+32'd1;	
end
//cnt_500ms
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt_500ms<=32'd0;
	else if(cnt_500ms==CNT_500MS_MAX)
		cnt_500ms<=32'd0;
	else
		cnt_500ms<=cnt_500ms+32'd1;
end
//sec
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		sec<=8'd0;
	else if(state==EMG1 || state==EMG2 || state==EMG3 || state==SET_G || state==SET_Y || state==SET_R)
		sec<=8'd0;
	else if(sec==sec_max)
		sec<=8'd0;	
	else if(cnt_1s == CNT_1S_MAX)
		sec<=sec+8'd1;
	else ;
end
//dat1 dat2
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		dat1<=8'd0;
		dat2<=8'd0;
	end
	else if(state==EMG1 || state==EMG2 || state==EMG3)
	begin
		dat1<=8'd99;
		dat2<=8'd99;
	end	
	else if(state==SET_G)
	begin
		dat1<=sec_g;
		dat2<=sec_g;
	end
	else if(state==SET_Y)
	begin
		dat1<=sec_y;
		dat2<=sec_y;
	end
	else if(state==SET_R)
	begin
		dat1<=sec_r;
		dat2<=sec_r;
	end
	else
	begin
		dat1<=(sec_max-sec);
		dat2<=(sec_max-sec);
	end
end
//led
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		led<=6'd0;
	else
		case(state)
			M_GREEN:
				led<=6'b001_100;
			M_YELLOW:
			begin
				if(led==6'b010_100 && cnt_500ms==CNT_500MS_MAX)
					led<=6'b000_100;
				else if(cnt_500ms==CNT_500MS_MAX)
					led<=6'b010_100;
				else ;
			end
			M_RED:
				led<=6'b100_001;
			S_YELLOW:
			begin
				if(led==6'b100_010 && cnt_500ms==CNT_500MS_MAX)
					led<=6'b100_000;
				else if(cnt_500ms==CNT_500MS_MAX)
					led<=6'b100_010;
				else ;
			end				
			EMG1:
				led<=6'b100_100;
			EMG2:
				led<=6'b100_001;
			EMG3:
				led<=6'b001_100;
			default:
				led<=6'b000_000;
		endcase
end
//state
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		state<=IDLE;
		sec_max<=8'd22;	
		sec_g<=8'd22;
		sec_y<=8'd33;
		sec_r<=8'd44;		
	end
	else
	begin
		case(state)
			IDLE:
			begin				
				state<=M_GREEN;
			end
			M_GREEN:
			begin
				sec_max<=sec_g;
				if(keyEMG)
					state<=EMG1;
				else if(keySET)
					state<=SET_G;
				else if(sec==sec_max)			
					state<=M_YELLOW;			
				else			
					state<=M_GREEN;							
			end
			M_YELLOW:
			begin
				sec_max<=sec_y;
				if(keyEMG)
					state<=EMG1;
				else if(keySET)
					state<=SET_G;
				else if(sec==sec_max)
					state<=M_RED;
				else
					state<=M_YELLOW;
			end
			M_RED:
			begin
				sec_max<=sec_r;
				if(keyEMG)
					state<=EMG1;
				else if(keySET)
					state<=SET_G;
				else if(sec==sec_max)
					state<=S_YELLOW;
				else
					state<=M_RED;
			end
			S_YELLOW:
			begin
				sec_max<=sec_y;
				if(keyEMG)
					state<=EMG1;
				else if(keySET)
					state<=SET_G;
				else if(sec==sec_max)
					state<=M_GREEN;
				else
					state<=S_YELLOW;
			end
			EMG1:
			begin
				if(keyEMG)
					state<=EMG2;
				else
					state<=EMG1;
			end
			EMG2:
			begin
				if(keyEMG)
					state<=EMG3;
				else
					state<=EMG2;
			end
			EMG3:
			begin
				if(keyEMG)
					state<=IDLE;
				else
					state<=EMG3;
			end
			SET_G:
			begin
				if(keyEMG)
					state<=EMG1;
				else if(keySET)
					state<=SET_Y;
				else if(keyUP && sec_g!=8'd99)
					sec_g<=sec_g+8'd1;
				else if(keyDOWN && sec_g!=8'd0)
					sec_g<=sec_g-8'd1;
				else
					state<=SET_G;
			end
			SET_Y:
			begin
				if(keyEMG)
					state<=EMG1;
				else if(keySET)
					state<=SET_R;
				else if(keyUP && sec_y!=8'd99)
					sec_y<=sec_y+8'd1;
				else if(keyDOWN && sec_y!=8'd0)
					sec_y<=sec_y-8'd1;
				else
					state<=SET_Y;
			end
			SET_R:
			begin
				if(keyEMG)
					state<=EMG1;
				else if(keySET)
					state<=IDLE;
				else if(keyUP && sec_r!=8'd99)
					sec_r<=sec_r+8'd1;
				else if(keyDOWN && sec_r!=8'd0)
					sec_r<=sec_r-8'd1;
				else
					state<=SET_R;
			end
			default:state<=IDLE;		
		endcase
	end
end
endmodule
