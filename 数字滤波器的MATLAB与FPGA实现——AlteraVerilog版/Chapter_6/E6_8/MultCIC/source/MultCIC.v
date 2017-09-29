//这是MultCIC.v文件的程序清单
module MultCIC (
	rst,clk,Xin,
	Yout,rdy);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为2kHz
	input	  [9:0]	Xin;  //数据输入频率为2kHZ
	output  [16:0]	Yout; //滤波后的输出数据
	output rdy;    //数据有效指示信号
	
	wire ND;
	wire signed [36:0] Intout;
	wire signed [36:0] dout;
	//wire signed [36:0] yt;
	
	//实例化积分器模块
	Integrated U1 (
		.rst (rst),
		.clk (clk),
		.Xin (Xin),
		.Intout (Intout));	

	//实例化抽取模块
	Decimate U2 (
		.rst (rst),
		.clk (clk),
		.Iin (Intout),
		.dout (dout),
		.rdy (ND));	

	//实例化梳状模块
	Comb U3 (
		.rst (rst),
		.clk (clk),
		.ND (ND),
		.Xin (dout),
		.Yout (Yout));	

	assign rdy = ND;
	//assign Yout = yt[16:0];
	
endmodule
