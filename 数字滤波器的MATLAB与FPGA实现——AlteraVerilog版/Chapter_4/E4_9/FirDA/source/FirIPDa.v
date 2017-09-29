//这是FirIPDa.v文件的程序清单
module FirIPDa (
	reset_n,clk,Xin,
	Yout);
	
	input		reset_n;   //复位信号，低电平有效
	input		clk;       //FPGA系统时钟/数据速率：2kHz
	input	 signed [11:0]	Xin;  //数据输入频率为2kHZ
	output signed [24:0]	Yout; //滤波后的输出数据
	wire ast_sink_valid,ast_source_ready,ast_source_valid;
	wire [1:0] ast_source_error;
	wire [1:0] ast_sink_error;
	assign ast_sink_valid=1'b1;
	assign ast_source_ready=1'b1;
	assign ast_sink_error=2'd0;
	fir_par	fir_inst(
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(Xin),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(Yout),
		.ast_sink_ready(ast_sink_ready),
		.ast_source_valid(ast_source_valid),
		.ast_source_error(ast_source_error));
		
endmodule
