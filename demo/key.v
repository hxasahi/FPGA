module key
(
	input wire clk,
	input wire rst_n,
	input wire key_in,
	output reg key_flag
);

reg [19:0] cnt_20ms;
parameter cnt_max = 20'd999_999;
//parameter cnt_max = 20'd5;
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt_20ms <= 0;
	else
		if(key_in)
			cnt_20ms <= 0;
		else if(cnt_20ms==cnt_max)
			cnt_20ms <= cnt_20ms;
		else
			cnt_20ms <= cnt_20ms + 1;
end

always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		key_flag <= 0;
	else if(cnt_20ms == cnt_max-1)
		key_flag <= 1;
	else
		key_flag <= 0;
end
endmodule