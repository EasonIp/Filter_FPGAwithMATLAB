//这是IIRDirect.v文件的程序清单
module IIRDirect (
	rst,clk,din,
	dout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为2kHz
	input	 signed [11:0]	din;  //数据输入频率为2kHZ
	output signed [11:0]	dout; //滤波后的输出数据
	
	//实例化零点滤波系数及极点系数运算模块
	wire signed [20:0] Xout;
	ZeroParallel U0 (
		.rst (rst),
		.clk (clk),
		.Xin (din),
		.Xout (Xout));
		
	wire signed [11:0] Yin;
	wire signed [25:0] Yout;
	PoleParallel U1 (
		.rst (rst),
		.clk (clk),
		.Yin (Yin),
		.Yout (Yout));
		
   wire signed [25:0] Ysum;
   assign Ysum = {{5{Xout[20]}},Xout} - Yout;	
	
	//因为滤波器系数中a(1)=512,需将加法结果除以512，采用右移9位的方法实现除法运算
	wire signed [25:0] Ydiv;
	assign Ydiv = {{9{Ysum[25]}},Ysum[25:9]};
	
	//根据仿真结果可知，滤波器的输出范围与输入数据范围相同，因此可直接进行截尾输出
	assign Yin = (rst ? 12'd0 : Ydiv[11:0]);
	assign dout = Yin;

endmodule
	