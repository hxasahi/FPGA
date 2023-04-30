module demo ( 
	input 				clk		,//系统时钟输入50M
	input				rst_n	,//复位，低电平有效
 	output 	reg	[7:0] 	dat		,//LCD的8位数据口
 	output  reg			rs		,//数据命令选择信号，高电平表示数据，低电平表示命令
 	output				rw		,//读写标志，高电平表示读，低电平表示写，该程序我们只对液晶屏进行写操作
 	output				en		//LCD的控制脚
 );
 reg	[15:0]	counter	; 
 reg 	[ 5:0] 	current	; 
 reg 			clkr	; 
 reg			e		;
 //定义了LCD状态机需要的状态。
 parameter  set0 =6'd0; 
 parameter  set1 =6'd1; 
 parameter  set2 =6'd2; 
 parameter  set3 =6'd3; 
 parameter  set4 =6'd4;   
 parameter  dat0 =6'd5; 
 parameter  dat1 =6'd6; 
 parameter  dat2 =6'd7; 
 parameter  dat3 =6'd8; 
 parameter  dat4 =6'd9; 
 parameter  dat5 =6'd10;
 parameter  dat6 =6'd11; 
 parameter  dat7 =6'd12; 
 parameter  dat8 =6'd13; 
 parameter  dat9 =6'd14;
 parameter  dat10=6'd15; 
 parameter  dat11=6'd16;
 parameter	dat12=6'd17;  
 parameter	dat13=6'd18; 
 parameter	dat14=6'd19; 
 parameter	dat15=6'd20; 
 parameter  fini=6'hF1; 
always @(posedge clk or negedge rst_n)         //da de data_w1 zhong pinlv 
 begin 
 	if(!rst_n)
 		begin
 			counter<=0;
 			clkr<=0;
 		end
 	else
 		begin
  			counter<=counter+1; 
  			if(counter==16'h000f)  
  				clkr<=~clkr; 
  			else
  				;
  		end
end 
always @(posedge clkr or negedge rst_n) 
begin 
	if(!rst_n)
		begin
			current<=set0;
			dat<=0;
			rs<=0;
			e<=1;
		end
	else
		begin
  			case(current) 
    		set0:   begin  e<=0;rs<=0; dat<=8'h38; 	current<=set1; 		end //*设置8位格式,2行,5*7*
    		set1:   begin  e<=0;rs<=0; dat<=8'h0C; 	current<=set2; 		end //*整体显示,关光标,不闪烁*/  
    		set2:   begin  e<=0;rs<=0; dat<=8'h06; 	current<=set3; 		end //*设定输入方式,增量不移位*/  
    		set3:   begin  e<=0;rs<=0; dat<=8'h01; 	current<=set4; 		end //*清除显示*/   
			set4:   begin  e<=0;rs<=0; dat<=8'hc0; 	current<=dat0; 		end //设置显示第一行
    		dat0:   begin  e<=0;rs<=1; dat<="H"; 	current<=dat1; 		end    
    		dat1:   begin  e<=0;rs<=1; dat<="E"; 	current<=dat2; 		end 
    		dat2:   begin  e<=0;rs<=1; dat<="L"; 	current<=dat3; 		end 
    		dat3:   begin  e<=0;rs<=1; dat<="L";	current<=dat4; 		end 
    		dat4:   begin  e<=0;rs<=1; dat<="O"; 	current<=dat5; 		end 
    		dat5:   begin  e<=0;rs<=1; dat<=" "; 	current<=dat6; 		end 
    		dat6:   begin  e<=0;rs<=1; dat<="F"; 	current<=dat7; 		end 
    		dat7:   begin  e<=0;rs<=1; dat<="P";	current<=dat8; 		end 
    		dat8:   begin  e<=0;rs<=1; dat<="G"; 	current<=dat9; 		end 
    		dat9:   begin  e<=0;rs<=1; dat<="A";	current<=dat10 ; 	end 
    		dat10:  begin  e<=0;rs<=1; dat<="!"; 	current<=dat11; 	end 
    		dat11:  begin  e<=0;rs<=1; dat<="1"; 	current<=dat12; 	end 
    		dat12:  begin  e<=0;rs<=1; dat<="2"; 	current<=dat13; 	end 
			dat13:  begin  e<=0;rs<=1; dat<="3"; 	current<=dat14; 	end 
			dat14:  begin  e<=0;rs<=1; dat<="4"; 	current<=dat15; 	end 
			dat15:  begin  e<=0;rs<=1; dat<="6"; 	current<=fini; 		end 
    		fini:   begin  e<=1;rs<=0; dat<=8'h00;       				end
   			default:   current<=set0; 
    		endcase 
    	end
 end 
assign en=clkr|e; 
assign rw=0; 
endmodule  
