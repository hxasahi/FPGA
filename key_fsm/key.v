module key(clk,key_in,key_flag);
input clk;
input key_in;
output key_flag;

reg key_flag;
reg [19:0] cnt_20ms;
parameter cnt_max = 20'd999_999;

always @ (posedge clk)
begin
	if(key_in==1'b1)
		cnt_20ms <= 20'b0;
	else if(cnt_20ms==cnt_max && key_in==1'b0)
		cnt_20ms <= cnt_20ms;
	else
		cnt_20ms <= cnt_20ms + 1'b1;
end

always @ (posedge clk)
begin
	if(cnt_20ms == cnt_max-1'b1)
		key_flag <= 1'b1;
	else
		key_flag <= 1'b0;
end
endmodule