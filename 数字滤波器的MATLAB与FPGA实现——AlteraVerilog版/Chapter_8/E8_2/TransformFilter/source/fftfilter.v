//这是fftfilter.v文件的程序清单
module fftfilter (
	rst,clk,din,addr,
	xk_re,xk_im);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为数据速率的16倍：64MHz
	input	 signed [15:0]	din;    //输入数据：64MHz
	input	 [11:0]	addr;         //输入数据序号
	output signed [15:0]	xk_re;   //fft变换后的实部信号
	output signed [15:0]	xk_im;   //fft变换后的虚部信号
   
	wire reset_n,inverse,sink_ready,source_ready;
	reg sink_sop,sink_eop,sink_valid;
   wire signed [15:0] sink_imag;
   wire [1:0] sink_error,source_error;
	wire source_sop,source_eop,source_valid;
	wire [5:0] source_exp;
	wire signed [15:0] xkre,xkim;

   assign reset_n = !rst;
	assign sink_error = 2'd0;
	//assign sink_valid = 1'b1;//sink_valid控制sink_ready,在sink_ready为高电平时，控制sink_eop控制载入数据
	assign source_ready = 1'b1;
	assign inverse = 1'b0; //FFT正变换
	assign sink_imag = 16'd0;
	
	//设置FFT变换起始脉冲，sink_eop/sink_sop高电平后开始载入数据
	//reg signed [15:0] data;///////////////////////
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				sink_eop <= 0;
				sink_sop <= 0;
				sink_valid <= 0;
				//data <= din;
			end
		else
		   begin
			   //data <= 16'h7fff;
				if ((addr==4095) || (addr==2047))////4095/2047
				   begin 
					   sink_sop <= 1'b1;
					   //sink_eop <= 1'b1;
					end
				else
				   begin
				      sink_sop <= 1'b0;
					   //sink_eop <= 1'b0;
					end
				if (((addr==4095) || (addr<=254)) || ((addr>=2047) & (addr<=2302)))
				   sink_valid <= 1'b1;
				else
				   sink_valid <= 1'b0;
/////////////////////////
				if ((addr==254) || (addr==2302))//254/2302
				   begin 
					   //sink_sop <= 1'b1;
					   sink_eop <= 1'b1;
					end
				else
				   begin
				      //sink_sop <= 1'b0;
					   sink_eop <= 1'b0;
					end
				/*
				if ((addr==4095) || (addr==2047))
				   data  <= 16'h7fff;
				else
				   data <= 0;*/
			end
	
   fft256  u0(
		.clk (clk),
		.reset_n (reset_n),
		.inverse (inverse),
		.sink_valid (sink_valid),
		.sink_sop (sink_sop),
		.sink_eop (sink_eop),
		.sink_real (din),//data　　
		.sink_imag (sink_imag),
		.sink_error (sink_error),
		.source_ready (source_ready),
		.sink_ready (sink_ready),
		.source_error (source_error),
		.source_sop (source_sop),
		.source_eop (source_eop),
		.source_valid (source_valid),
		.source_exp (source_exp),
		.source_real (xkre),
		.source_imag (xkim));//序号1381/3429产生第一个FFT变换数据
   
	//求谱线的平方和
	//根据仿真结果，输入数据及窗函数均设置为常数"H7FFF"，即输入信号为直流信号
	//根据FFT原理，输出数据为只在零频处有单谱线，则此时谱线峰值最大，知XK有两位符号位。
	//因此，为尽量使有效数据参与运算，取xk(14 downto 3)参与后续运算
	
	//平方乘法运算,2个周期延时	
	wire signed [23:0] xkre_square,xkim_square;
	mult12_12	u1 (
		.clock (clk),
		.dataa (xkre[14:3]),
		.datab (xkre[14:3]),
		.result (xkre_square));	
	mult12_12	u2 (
		.clock (clk),
		.dataa (xkim[14:3]),
		.datab (xkim[14:3]),
		.result (xkim_square));			
	
   wire [23:0] mode;
	assign mode = xkre_square + xkim_square;


	//求变换后频线模值的累加值,产生一个周期延时
	reg [31:0] sum;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				sum <= 0;
			end
		else
		   begin
			   if (((addr>=1383) & (addr<=1638)) || ((addr>=3431) & (addr<=3686)))
				   sum <= sum + mode;
				else if ((addr==1382) || (addr==3430) )
				   sum <= 0;
				else
				   sum <= sum;
			end
			
   //求均值的20倍，作为判决门限		
	wire [31:0] gate;	
	assign gate = sum[31:4]+sum[31:6];//由于是正值，因此不需要进行符号位扩展
	
	//对xk移位
	wire signed [15:0] xkre_delay,xkim_delay;
	wire [15:0] taps_3,taps_4;
	shifter16_256 u3 (
	   .clock (clk),
	   .shiftin (xkre),
	   .shiftout (xkre_delay),
	   .taps (taps_3));//没有使用该接口信号
	shifter16_256 u4 (
	   .clock (clk),
	   .shiftin (xkim),
	   .shiftout (xkim_delay),
	   .taps (taps_4));//没有使用该接口信号		
		
	//平方乘法运算,2个周期延时	
	wire signed [23:0] xkre_delay_square,xkim_delay_square;
	mult12_12	u5 (
		.clock (clk),
		.dataa (xkre_delay[14:3]),
		.datab (xkre_delay[14:3]),
		.result (xkre_delay_square));	
	mult12_12	u6 (
		.clock (clk),
		.dataa (xkim_delay[14:3]),
		.datab (xkim_delay[14:3]),
		.result (xkim_delay_square));			
	
	//运算移位后的模值、判决、完成滤波功能
   reg [23:0] mode_delay;
	reg signed [15:0] xkre0,xkre1,xkre2,xkim0,xkim1,xkim2,xk_ret,xk_imt;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				mode_delay <= 0;
				xkre0 <= 0;
				xkre1 <= 0;
				xkre2 <= 0;
				xkim0 <= 0;
				xkim1 <= 0;
				xkim2 <= 0;
            xk_ret <= 0;
            xk_imt <= 0;				
			end
		else
		   begin
			   mode_delay <= xkre_delay_square + xkim_delay_square;
				xkre0 <= xkre_delay;
				xkre1 <= xkre0;
				xkre2 <= xkre1;
				xkim0 <= xkim_delay;
				xkim1 <= xkim0;
				xkim2 <= xkim1;				
			   //if (mode_delay[1:0] > gate)
				if (mode_delay > gate)
				   begin
				      xk_ret <= 0;
						xk_imt <= 0;
					end
				else
				   begin
				      xk_ret <= xkre2;
						xk_imt <= xkim2;
					end
			end

	//移位运算256个周期，乘法运算2个周期，求模(求均值)运算1个周期,比较输出一个周期
	//共需处理延时260个周期，第1个正变换滤波输出数据序号为 1641/3689
	assign xk_re = xk_ret;//////////////
	assign xk_im = xk_imt;
	//assign xk_re[0] = sink_ready;///////////////////////////

endmodule
	
