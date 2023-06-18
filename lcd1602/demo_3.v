
module demo ( 
	input 				clk		,//ϵͳʱ������50M
	input rst_n,
 	output 	reg[7:0] dat		,//LCD��8λ���ݿ�
 	output   reg		rs		,//��������ѡ���źţ��ߵ�ƽ��ʾ���ݣ��͵�ƽ��ʾ����
 	output				rw		,//��д��־���ߵ�ƽ��ʾ�����͵�ƽ��ʾд���ó�������ֻ��Һ��������д����
 	output	wire		en,		//LCD�Ŀ��ƽ�
	output reg clkr,
	output reg e
 );
 reg	[15:0]	counter	; 
 reg 	[ 5:0] 	current	; 
 //reg 			clkr	; 
 //reg			e		;
always @(posedge clk)     //��ʱ��
begin 
	if(!rst_n)
	begin
		counter<=16'h0;
		clkr<=1'd0;
	end
	else
	begin
		counter<=counter+1; 
		if(counter==16'hff)
		begin
			clkr<=~clkr; 		
			counter<=0;
		end
		else
			;
	end
end 
always @(posedge clkr) 
begin 
	if(!rst_n)
	begin
		rs<=0;
		e<=0;
		dat<=8'h00;
	end
	else
	begin
		case(current) 
		6'd0:   begin  rs<=0; e<=0;dat<=8'h38; current<=current+1; 	end //*����8λ��ʽ,2��,5*7*
		6'd1:   begin  rs<=0; e<=0;dat<=8'h0C; current<=current+1; 	end //*������ʾ,�ع��,����˸*/  
		6'd2:   begin  rs<=0; e<=0;dat<=8'h06; current<=current+1; 	end //*�趨���뷽ʽ,��������λ*/  
		6'd3:   begin  rs<=0; e<=0;dat<=8'h01; current<=current+1; 	end //*�����ʾ*/   
		6'd4:   begin  rs<=0; e<=0;dat<=8'h80; current<=current+1; 	end //������ʾ��
		6'd5:   begin  rs<=1; e<=0;dat<="H"; 	current<=6'hf1; 		end    		
		6'hF1:  begin  rs<=0; e<=1;       									end
		default:   current<=6'd0; 
		endcase 
	end
 end 
assign en=clkr|e;
assign rw=0; 
endmodule  
