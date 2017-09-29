//这是TransformFilter.v文件的程序清单
module TransformFilter (
	rst,clk,din,
	clkdv,dout); 
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为数据速率的16倍：64MHz
	input	 signed [11:0]	din;    //输入数据：4MHz
	output clkdv;                //输出时钟：4MHz
	output signed [15:0]	dout;   //滤波后的输出数据

	wire [11:0] count16_256;
	wire signed [15:0] dout_interlaced;
	wire signed [15:0]xk_re,xk_im ;
	window	u0 (
		.rst (rst),
		.clk (clk),
		.din (din),
		.clkdv (clkdv),
		.count16_256 (count16_256),
		.dout_interlaced (dout_interlaced));
 
   fftfilter u1 (
	   .rst (rst),
		.clk (clk),
		.din (dout_interlaced),
		.addr (count16_256),
		.xk_re (xk_re),
		.xk_im (xk_im));

	wire [15:0] douttem;
   ifftout u2(
	   .rst (rst),
		.clk (clk),
		.clkdv (clkdv),
		.addr (count16_256),
		.xk_re (xk_re),
		.xk_im (xk_im),
	   .dout (dout));

	
endmodule
