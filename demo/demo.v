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

//dat1  dat2
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		dat1 <= 8'd12;
		dat2 <= 8'd34;
	end
	else if(flag)
	begin
		dat1 <= dat1+1;
		dat2 <= dat2-1;
	end
end

endmodule
