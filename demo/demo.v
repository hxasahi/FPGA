module demo
(
	input wire clk,
	input wire rst_n,
	output reg[7:0] seg,
	output reg[3:0] pos
);

reg[3:0] data;

reg[15:0] cnt;
parameter max_cnt = 5_000;
reg[7:0] dat1;
wire[11:0] bcd1;
//此处如果dat1写成reg，则无法输出，因为没有时钟驱动它，但是可以写成wire
//如果写成reg就必须在某个always里面写
bcd_8421 bcd_8421_1(.bin(dat1),.bcd(bcd1));

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
	begin
		data<=4'd0;	
		dat1 = 8'd49;
	end
	else
	case(pos)
		4'b1110:data<=bcd1[3:0];
		4'b1101:data<=bcd1[7:4];
		4'b1011:data<=bcd1[11:8];
		4'b0111:data<=4'd11;
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
		