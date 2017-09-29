//这是ThirdTap.v文件的程序清单
module ThirdTap (
	rst,clk,Xin,
	Yout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为2kHz
	input	 signed [8:0]	Xin;  //数据输入频率为2kHZ
	output signed [10:0]	Yout; //滤波后的输出数据
	
	//零点系数的实现代码/////////////////////////
	//将输入数据存入移位寄存器中
	reg signed[8:0] Xin1,Xin2;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				Xin1 <= 9'd0;
				Xin2 <= 9'd0;
		   end	
		else
		   begin
				Xin1 <= Xin;
				Xin2 <= Xin1;
			end
			
   //采用移位运算及加法运算实现乘法运算
	wire signed [23:0] XMult0,XMult1,XMult2;
	assign XMult0 = {{5{Xin[8]}},Xin,10'd0};  //*1024
	assign XMult1 = {{10{Xin1[8]}},Xin1,5'd0}+{{11{Xin1[8]}},Xin1,4'd0}+{{13{Xin1[8]}},Xin1,2'd0};  //*52
	assign XMult2 = {{5{Xin2[8]}},Xin2,10'd0}; //*1024
 
	//对滤波器系数与输入数据乘法结果进行累加
	wire signed [23:0] Xout;
	assign Xout = XMult0 + XMult1 + XMult2;
	
	
	//极点系数的实现代码///////////////////////
	wire signed[10:0] Yin;
	reg signed[10:0] Yin1,Yin2;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				Yin1 <= 11'd0;
				Yin2 <= 11'd0;
			end
		else
		   begin
				Yin1 <= Yin;
				Yin2 <= Yin1;
			end
			
	//采用移位运算及加法运算实现乘法运算
	wire signed [23:0] YMult1,YMult2;
	wire signed [23:0] Ysum,Ydiv;
	assign YMult1 = {{4{Yin1[10]}},Yin1,9'd0}+{{5{Yin1[10]}},Yin1,8'd0}+{{8{Yin1[10]}},Yin1,5'd0}+
	                {{11{Yin1[10]}},Yin1,2'd0}+{{13{Yin1[10]}},Yin1};  //*805
	assign YMult2 = {{3{Yin2[10]}},Yin2,10'd0}-{{5{Yin2[10]}},Yin2,8'd0}-{{9{Yin2[10]}},Yin2,4'd0}-
	                {{10{Yin2[10]}},Yin2,3'd0}-{{13{Yin2[10]}},Yin2};  //*743
						 
 
	//第三级IIR滤波器实现代码///////////////////////////
	assign Ysum = Xout+YMult1-YMult2;	
	assign Ydiv = {{10{Ysum[23]}},Ysum[23:10]};//1204
	//根据仿真结果可知，第4级滤波器的输出范围可用11位表示
   assign Yin = (rst ? 11'd0 : Ydiv[10:0]);
	//增加一级寄存器，提高运行速度
	reg signed [10:0] Yout_reg ;
	always @(posedge clk)
		Yout_reg <= Yin;
	assign Yout = Yout_reg;
	
endmodule
