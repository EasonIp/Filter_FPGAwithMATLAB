//这是Dpsk.v文件的程序清单
module Dpsk (
	rst,clk,din,
	datai,dataq,df); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟：32MHz
	input	 signed [7:0]	din;    //输入数据：4MHz
	output signed [27:0]	datai;  //同相支路输出数据
	output signed [27:0]	dataq;  //正交支路输出数据
	output signed [27:0]	df;     //环路滤波器输出数据
	
	//实例化DDS核
	wire reset_n,out_valid,clken;
	wire signed [33:0] carrier;
	wire signed [9:0]sine,cosine ;
	wire signed [33:0] frequency_df;//,fre;
	assign reset_n = !rst;
	assign clken = 1'b1;
	assign carrier=34'd3221225472;//6MHz
	dds	u0 (
		.phi_inc_i (carrier),
		.clk (clk),
		.reset_n (reset_n),
		.clken (clken),
		.freq_mod_i (frequency_df),
		.fsin_o (sine),
		.fcos_o (cosine),
		.out_valid (out_valid));
	//assign carrier = frequency_df + 34'd3221225472;
	//assign fre = frequency_df;// + 34'd3221225472;
	
   //实例化2个乘法器核	
	wire signed [17:0] mdq,mdi;	
   mult u1 (
	   .clock (clk),
		.dataa (din),
		.datab (cosine),
		.result (mdq));
   mult u2 (
	   .clock (clk),
		.dataa (din),
		.datab (sine),
		.result (mdi));

   //实例化2个低通滤波器核
	wire signed [27:0] di,dq;
	wire ast_sink_valid,ast_source_ready;
	wire ast_sink_readyi,ast_sink_readyq,ast_source_validi,ast_source_validq;
	wire [1:0] ast_sink_error,ast_source_errori,ast_source_errorq;
	assign ast_sink_valid = 1'b1;
	assign ast_source_ready = 1'b1;
	assign ast_sink_error=2'b00;
	lpf u3 (
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data(mdi[16:1]),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(di),
		.ast_sink_ready(ast_sink_readyi),
		.ast_source_valid(ast_source_validi),
		.ast_source_error(ast_source_errori));

	lpf u4 (
		.clk (clk),
		.reset_n (reset_n),
		.ast_sink_data(mdq[16:1]),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(dq),
		.ast_sink_ready(ast_sink_readyq),
		.ast_source_valid(ast_source_validq),
		.ast_source_error(ast_source_errorq));	
		
   PD_LoopFilter u5(
	   .rst (rst),
		.clk (clk),
		.di  (di),
		.dq  (dq),
		.frequency_df(frequency_df));
		
	assign df = frequency_df[27:0];
   assign datai = di;
	assign dataq = dq;
	
endmodule
