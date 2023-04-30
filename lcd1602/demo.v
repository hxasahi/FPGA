module demo ( 
	input 				clk		,//系统时钟输入50M
 	output 	reg[7:0] dat		,//LCD的8位数据口
 	output   reg		rs		,//数据命令选择信号，高电平表示数据，低电平表示命令
 	output				rw		,//读写标志，高电平表示读，低电平表示写，该程序我们只对液晶屏进行写操作
 	output	wire		en		//LCD的控制脚
 );
 reg	[15:0]	counter	; 
 reg 	[ 5:0] 	current	; 
 reg 			clkr	; 
 reg			e		;
always @(posedge clk)     //慢时钟
begin 
	counter<=counter+1; 
	if(counter==16'hffff)
	begin
		clkr<=~clkr; 		
		counter<=0;
	end
	else
		;
end 
always @(posedge clkr) 
begin 
		case(current) 
		6'd0:   begin  rs<=0; e<=0;dat<=8'h38; current<=current+1; 	end //*设置8位格式,2行,5*7*
		6'd1:   begin  rs<=0; e<=0;dat<=8'h0C; current<=current+1; 	end //*整体显示,关光标,不闪烁*/  
		6'd2:   begin  rs<=0; e<=0;dat<=8'h06; current<=current+1; 	end //*设定输入方式,增量不移位*/  
		6'd3:   begin  rs<=0; e<=0;dat<=8'h01; current<=current+1; 	end //*清除显示*/   
		6'd4:   begin  rs<=0; e<=0;dat<=8'h80; current<=current+1; 	end //设置显示行
		6'd5:   begin  rs<=1; e<=0;dat<="H"; 	current<=6'hf1; 		end    		
		6'hF1:  begin  rs<=0; e<=1;       									end
		default:   current<=6'd0; 
		endcase 
 end 
assign en=clkr|e;
assign rw=0; 
endmodule  