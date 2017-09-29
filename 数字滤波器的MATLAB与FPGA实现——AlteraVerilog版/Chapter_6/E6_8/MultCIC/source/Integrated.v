//这是Integrated.v文件的程序清单
module Integrated (
	rst,clk,Xin,
	Intout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为2kHz
	input	 signed [9:0]	Xin;    //数据输入频率为2kHZ
	output signed [36:0]	Intout; //滤波后的输出数据
	
	
	//根据图6-16(c)所示的结构,每级积分器只需要一个寄存器及一级加法运算
	wire signed [36:0] I1,I2,I3;
	reg  signed [36:0] d1,d2,d3;
	

	//第1级积分器
	always @(posedge clk or posedge rst)
		if (rst)
			d1 <= 37'd0;	
		else
		   d1 <= I1;
   assign I1 = (rst ? 37'd0 : (d1+{{27{Xin[9]}},Xin}));

	//第2级积分器
	always @(posedge clk or posedge rst)
		if (rst)
			d2 <= 37'd0;	
		else
		   d2 <= I2;
   assign I2 = (rst ? 37'd0 : (I1+d2));

	//第3级积分器
	always @(posedge clk or posedge rst)
		if (rst)
			d3 <= 37'd0;	
		else
		   d3 <= I3;
   assign I3 = (rst ? 37'd0 : (I2+d3));
	
	assign Intout = I3;

endmodule
