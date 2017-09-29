//这是Comb.v文件的程序清单
module Comb (
	rst,clk,ND,Xin,
	Yout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为2kHz
	input    ND;    //输入的数据准备好信号
	input	 signed [36:0]	Xin;  //数据输入频率为2kHZ
	output signed [16:0]	Yout; //滤波后的输出数据
	

	reg signed [36:0] d1,d2,d3,d4;
	wire signed [36:0] C1,C2;
	wire signed[36:0] Yout_tem;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				d1 <= 37'd0;
				d2 <= 37'd0;
				d3 <= 37'd0;
				d4 <= 37'd0;
		   end	
		else
		   begin
			   if (ND)
					begin
						d1 <= Xin;
						d2 <= d1;
						d3 <= C1;
						d4 <= C2;
					end
			end
			
	assign C1 = (rst ? 37'd0 : (d1-d2));	
	assign C2 = (rst ? 37'd0 : (C1-d3));	
	assign Yout_tem = (rst ? 37'd0 : (C2-d4));
   /*always @(posedge clk or posedge rst)	
      if (rst)
		   Yout_tem <= 37'd0;
		else
		   Yout_tem <= C2-d4;*/
	assign Yout = Yout_tem[16:0];
			
endmodule
