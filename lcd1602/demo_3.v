module demo(clk,rst_n,rs,rw,dat,en);
input	  clk;
input   rst_n;
output  reg rs;
output  rw;
output  reg[7:0] dat;
output en;

reg[15:0] cnt;
reg clkr;
reg e;
parameter set0 = 4'd1;
parameter set1 = 4'd2;
parameter set2 = 4'd3;
parameter set3 = 4'd4;
parameter set4 = 4'd5;
parameter data0 = 4'd6;
parameter finish = 4'd7;

reg[3:0] status=set0;
always @ (posedge clk)
begin
	cnt<=cnt+1;
	if(cnt==16'hffff)
	begin		
		clkr<=~clkr;
		cnt<=0;
	end	
end

always @ (posedge clkr)
begin
	case(status)
	set0:begin rs<=0;e<=0;dat<=8'h38;status<=set1;end
	set1:begin rs<=0;e<=0;dat<=8'h0c;status<=set2;end
	set2:begin rs<=0;e<=0;dat<=8'h06;status<=set3;end
	set3:begin rs<=0;e<=0;dat<=8'h01;status<=set4;end
	set4:begin rs<=0;e<=0;dat<=8'h80;status<=data0;end
	data0:begin rs<=1;e<=0;dat<="O";status<=finish;end
	finish:begin rs<=0;e<=1;end
	default:status<=set0;
	endcase
end

assign en=clkr|e;
assign rw=0;
endmodule