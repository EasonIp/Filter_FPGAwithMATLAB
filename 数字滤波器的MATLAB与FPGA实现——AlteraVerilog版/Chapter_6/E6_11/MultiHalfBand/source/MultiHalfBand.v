//这是MultiHalfBand.v的程序清单
module MultiHalfBand (
	reset_n,clk,Xin,
	Yout,rdy);
	
	input		reset_n;    //复位信号，低电平有效
	input		clk;        //FPGA系统时钟，频率为3.2kHz
	input	  [7:0]	Xin;  //数据输入频率为3.2kHZ
	output  [19:0]	Yout; //滤波后的输出数据
	output rdy;          //数据有效指示信号,频率为输入数据速率的1/64

	wire coeff_in_clk = 1'b1;
	wire ast_source_ready = 1'b1;
	wire ast_sink_valid = 1'b1;
	wire ast_sink_error = 2'b00;
	wire source_valid [6:0];
   wire [1:0] source_error [6:0];
	wire sink_ready [6:0];
   wire [19:0] y1 ;	
	
	hf_1 U1 (
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(Xin),
		.ast_sink_valid(ast_sink_valid),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(y1),
		.ast_sink_ready(sink_ready[1]),
		.ast_source_valid(source_valid[1]),
		.ast_source_error(source_error[1]));
		
   wire [31:0] y2;
	hf_2 U2 (
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(y1),
		//前一级滤波器输出的信号source_valid[1]作为本级滤波器输入数据控制信号
		.ast_sink_valid(source_valid[1]),   
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(y2),
		.ast_sink_ready(sink_ready[2]),
		.ast_source_valid(source_valid[2]),
		.ast_source_error(source_error[2]));
		
   wire [43:0] y3;
	hf_3 U3 (
		.clk(clk),
		.reset_n(reset_n),
		.ast_sink_data(y2),
		//前一级滤波器输出的信号source_valid[1]作为本级滤波器输入数据控制信号
		.ast_sink_valid(source_valid[2]),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(y3),
		.ast_sink_ready(sink_ready[3]),
		.ast_source_valid(source_valid[3]),
		.ast_source_error(source_error[3]));
		

   wire [44:0] y4;
	hf_4 U4 (
		.clk(clk),
		.reset_n(reset_n),
		//根据MATLAB仿真结果，前级输出数据的最高有效位为y3[43]
		.ast_sink_data(y3[43:12]),
		//前一级滤波器输出的信号source_valid[1]作为本级滤波器输入数据控制信号
		.ast_sink_valid(source_valid[3]),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(y4),
		.ast_sink_ready(sink_ready[4]),
		.ast_source_valid(source_valid[4]),
		.ast_source_error(source_error[4]));
		
		
   wire [44:0] y5;
	hf_5 U5 (
		.clk(clk),
		.reset_n(reset_n),
		//根据MATLAB仿真结果，前级输出数据的最高有效位为y4[43]
		.ast_sink_data(y4[43:12]),
		//前一级滤波器输出的信号source_valid[1]作为本级滤波器输入数据控制信号
		.ast_sink_valid(source_valid[4]),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(y5),
		.ast_sink_ready(sink_ready[5]),
		.ast_source_valid(source_valid[5]),
		.ast_source_error(source_error[5]));
			
   wire [45:0] y6;
	hf_6 U6 (
		.clk(clk),
		.reset_n(reset_n),
		//根据MATLAB仿真结果，前级输出数据的最高有效位为y5[43]
		.ast_sink_data(y5[43:12]),
		//前一级滤波器输出的信号source_valid[1]作为本级滤波器输入数据控制信号
		.ast_sink_valid(source_valid[5]),
		.ast_source_ready(ast_source_ready),
		.ast_sink_error(ast_sink_error),
		.ast_source_data(y6),
		.ast_sink_ready(sink_ready[6]),
		.ast_source_valid(source_valid[6]),
		.ast_source_error(source_error[6]));
		
	//根据MATLAB仿真结果，前级输出数据的最高有效位为y6[43]	
	assign Yout = y6[43:24];
	//最末一级滤波器输出数据有效信号，作为整个系统的输出数据有效信号
	assign rdy = source_valid[6];

endmodule
