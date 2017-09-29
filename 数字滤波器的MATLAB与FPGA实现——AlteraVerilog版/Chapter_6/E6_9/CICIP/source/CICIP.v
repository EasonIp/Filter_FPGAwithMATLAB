module CICIP(
	clk,
	clken,
	reset_n,
	in_data,
	in_valid,
	out_ready,
	in_error,
	out_data,
	in_ready,
	out_valid,
	out_error);


	input		clk;       			//系统时钟/数据输入频率/FPGA工作时钟
	input		clken;     			//时钟允许信号，高电平有效
	input		reset_n;   			//复位信号，低电平有效
	input	[9:0]	in_data;			//输入数据
	input		in_valid;  			//输入数据有效信号，高电平有效
	input		out_ready; 			//输出准备好信号，高电平有效
	input	[1:0]	in_error;		//输入数据状态信号，‘‘00’’表示数据正确
	output	[16:0]	out_data;//输出数据
	output		in_ready;      //接收输入数据准备好信号
	output		out_valid;     //输出数据有效信号
	output	[1:0]	out_error;  //输出数据状态信号，“00”表示数据正确


	CicFilter	CicFilter_cic_inst(
		.clk(clk),
		.clken(clken),
		.reset_n(reset_n),
		.in_data(in_data),
		.in_valid(in_valid),
		.out_ready(out_ready),
		.in_error(in_error),
		.out_data(out_data),
		.in_ready(in_ready),
		.out_valid(out_valid),
		.out_error(out_error));
		
endmodule
