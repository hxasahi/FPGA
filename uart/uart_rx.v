module uart_rx
(
input clk,
input rst_n,
input rx,
output reg[7:0] dat
);
parameter rx_baud = 5208;
reg[31:0] cnt;
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
	
end
endmodule
