//这是SecondTap.v文件的程序清单
module SecondTap (
	rst,clk,Xin,
	Yout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为2kHz
	input	 signed [7:0]	Xin;  //数据输入频率为2kHZ
	output signed [8:0]	Yout; //滤波后的输出数据
	
	//零点系数的实现代码/////////////////////////
	//将输入数据存入移位寄存器中
	reg signed[7:0] Xin1,Xin2;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				Xin1 <= 8'd0;
				Xin2 <= 8'd0;
		   end	
		else
		   begin
				Xin1 <= Xin;
				Xin2 <= Xin1;
			end
			
   //采用移位运算及加法运算实现乘法运算
	wire signed [23:0] XMult0,XMult1,XMult2;
	assign XMult0 = {{5{Xin[7]}},Xin,11'd0};  //*2048
	assign XMult1 = {{6{Xin1[7]}},Xin1,10'd0}-{{11{Xin1[7]}},Xin1,5'd0}-{{14{Xin1[7]}},Xin1,2'd0};  //*988
	assign XMult2 = {{5{Xin2[7]}},Xin2,11'd0}; //*2048
 
	//对滤波器系数与输入数据乘法结果进行累加
	wire signed [23:0] Xout;
	assign Xout = XMult0 + XMult1 + XMult2;
	
	
	//极点系数的实现代码///////////////////////
	wire signed[8:0] Yin;
	reg signed[8:0] Yin1,Yin2;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				Yin1 <= 9'd0;
				Yin2 <= 9'd0;
			end
		else
		   begin
				Yin1 <= Yin;
				Yin2 <= Yin1;
			end
			
	//采用移位运算及加法运算实现乘法运算
	wire signed [23:0] YMult1,YMult2;
	wire signed [23:0] Ysum,Ydiv;
	assign YMult1 = {{5{Yin1[8]}},Yin1,10'd0}+{{9{Yin1[8]}},Yin1,6'd0}+{{12{Yin1[8]}},Yin1,3'd0}+
	                {{14{Yin1[8]}},Yin1,1'd0}+{{15{Yin1[8]}},Yin1};  //*1099
	assign YMult2 = {{6{Yin2[8]}},Yin2,9'd0}+{{8{Yin2[8]}},Yin2,7'd0}+{{9{Yin2[8]}},Yin2,6'd0}-
	                {{13{Yin2[8]}},Yin2,2'd0}-{{15{Yin2[8]}},Yin2};  //*699
						 
 
	//第二级IIR滤波器实现代码///////////////////////////
	assign Ysum = Xout+YMult1-YMult2;	
	assign Ydiv = {{11{Ysum[23]}},Ysum[23:11]};//2048
	//根据仿真结果可知，第二级滤波器的输出范围可用9位表示
   assign Yin = (rst ? 9'd0 : Ydiv[8:0]);
	//增加一级寄存器，提高运行速度
	reg signed [8:0] Yout_reg ;
	always @(posedge clk)
		Yout_reg <= Yin;
	assign Yout = Yout_reg;
	
endmodule
