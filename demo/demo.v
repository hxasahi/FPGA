module demo
(
	input wire clk,
	input wire rst_n,
	output reg[7:0] seg,
	output reg[3:0] pos
);
reg[3:0] data1;
reg[3:0] data2;
reg[3:0] data3;
reg[3:0] data4;
reg[3:0] data;

reg[12:0] cnt;
parameter max_cnt = 5_0;
initial
begin
	data1<=4'd1;
	data2<=4'd2;
	data3<=4'd3;
	data4<=4'd4;
end

//delay
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt<=0;
	else if(cnt==max_cnt-1)
		cnt<=0;
	else
		cnt<=cnt+1;	
end

//pos
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)	
		pos<=4'b1110;			
	else if(cnt==max_cnt-1)
		pos<={pos[0],pos[3:1]};
	else
		pos<=pos;
end

//data
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)	
		data<=4'd0;	
	else
	case(pos)
		4'b1110:data<=data1;
		4'b1101:data<=data2;
		4'b1011:data<=data3;
		4'b0111:data<=data4;
		default:data<=4'd11;
	endcase
end

//seg
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)	
		seg<=8'hff;			
	else	
		case(data)
			0:seg<=8'hc0;
			1:seg<=8'hf9;
			2:seg<=8'ha4;
			3:seg<=8'hb0;
			4:seg<=8'h99;
			5:seg<=8'h92;
			6:seg<=8'h82;
			7:seg<=8'hf8;
			8:seg<=8'h80;
			9:seg<=8'h90;
			default:seg<=8'hff;			
		endcase		
end
endmodule
		