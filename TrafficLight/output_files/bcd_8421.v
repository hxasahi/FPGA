module bcd_8421(
  input  wire[7:0]    bin,  
  output wire[11:0]   bcd
);
wire      [19:0]  adjust_shift_data_0;
wire      [19:0]  adjust_shift_data_1;
wire      [19:0]  adjust_shift_data_2;
wire      [19:0]  adjust_shift_data_3;
wire      [19:0]  adjust_shift_data_4;
wire      [19:0]  adjust_shift_data_5;
wire      [19:0]  adjust_shift_data_6;
wire      [19:0]  adjust_shift_data_7;
adjust_shift  adjust_shift_inst0 (.idata({12'd0,bin}),.odata(adjust_shift_data_0));
adjust_shift  adjust_shift_inst1 (.idata(adjust_shift_data_0),.odata(adjust_shift_data_1));
adjust_shift  adjust_shift_inst2 (.idata(adjust_shift_data_1),.odata(adjust_shift_data_2));
adjust_shift  adjust_shift_inst3 (.idata(adjust_shift_data_2),.odata(adjust_shift_data_3));
adjust_shift  adjust_shift_inst4 (.idata(adjust_shift_data_3),.odata(adjust_shift_data_4));
adjust_shift  adjust_shift_inst5 (.idata(adjust_shift_data_4),.odata(adjust_shift_data_5));
adjust_shift  adjust_shift_inst6 (.idata(adjust_shift_data_5),.odata(adjust_shift_data_6));
adjust_shift  adjust_shift_inst7 (.idata(adjust_shift_data_6),.odata(adjust_shift_data_7));
assign bcd = adjust_shift_data_7[19:8];
endmodule
