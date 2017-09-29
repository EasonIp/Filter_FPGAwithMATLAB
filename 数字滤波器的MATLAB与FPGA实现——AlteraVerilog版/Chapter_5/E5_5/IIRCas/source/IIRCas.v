//这是IIRCas.v文件的程序清单
module IIRCas (
	rst,clk,din,
	dout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为2kHz
	input	 signed [11:0]	din;  //数据输入频率为2kHZ
	output signed [11:0]	dout; //滤波后的输出数据
	
	//实例化第一级滤波器运算模块
	wire signed [7:0] Y1;
	FirstTap U1 (
		.rst (rst),
		.clk (clk),
		.Xin (din),
		.Yout (Y1));

	//实例化第二级滤波器运算模块
	wire signed [8:0] Y2;
	SecondTap U2 (
		.rst (rst),
		.clk (clk),
		.Xin (Y1),
		.Yout (Y2));

	//实例化第三级滤波器运算模块
	wire signed [10:0] Y3;
	ThirdTap U3 (
		.rst (rst),
		.clk (clk),
		.Xin (Y2),
		.Yout (Y3));

	//实例化第四级滤波器运算模块
	FourthTap U4 (
		.rst (rst),
		.clk (clk),
		.Xin (Y3),
		.Yout (dout));	
		
endmodule
	