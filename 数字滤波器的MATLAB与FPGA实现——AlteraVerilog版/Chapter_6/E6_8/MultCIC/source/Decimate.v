//这是Decimate.v文件的程序清单
module Decimate (
	rst,clk,Iin,
	dout,rdy);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为2kHz
	input	  signed[36:0]	Iin;  //数据输入频率为2kHZ
	output  signed[36:0]	dout; //滤波后的输出数据
	output rdy;    //数据有效指示信号
	
	reg [2:0] c;
	reg signed[36:0] dout_tem;
	reg rdy_tem;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				c = 3'd0;
				dout_tem <= 37'd0;
				rdy_tem <= 1'b0;
		   end	
		else
		   begin
				if (c==4)
					begin
						rdy_tem <= 1'b1;
						dout_tem <= Iin;
						c = 3'd0;
					end
				else
				   begin
					   rdy_tem <= 1'b0;
						c = c+1;
					end
			end
			
	assign dout = dout_tem;
	assign rdy  = rdy_tem;
	
endmodule
			