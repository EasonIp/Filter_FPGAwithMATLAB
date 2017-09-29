//这是SigCIC.v文件的程序清单
module SigCIC(
	rst,clk,din,
	rdy,dout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为200kHz
	input	 signed [9:0]	din;  //数据输入频率为200kHZ
	output   rdy;   //输出数据有效指示信号
	output signed [12:0]	dout; //滤波后的输出数据,5倍抽取后的数据,频率为40kHZ
	
	
	reg rdy_tem;
	reg [2:0] c;
	reg signed [12:0] tem;
	reg signed [12:0] dout_tem;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				c <= 3'd0;
				tem <= 13'd0;
				dout_tem <= 13'd0;
				rdy_tem <= 1'b0;
		   end	
		else
		   begin
				if (c==4)
					begin
						rdy_tem <= 1'b1;
						dout_tem <= tem + din;
						c = 3'd0;
						tem = 13'd0;
					end
				else
				   begin
						rdy_tem <= 1'b0;
						tem = tem + din;
						c = c + 1;
					end
			end
	assign dout = dout_tem;
   assign rdy = rdy_tem;	

endmodule
