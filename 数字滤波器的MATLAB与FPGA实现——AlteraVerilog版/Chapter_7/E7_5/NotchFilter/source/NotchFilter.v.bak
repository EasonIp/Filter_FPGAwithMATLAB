//这是Equalizer.v文件的程序清单
module Equalizer (
	rst,clk,Xin,Rin,
	Error,Yout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为数据速率的6倍
	input	 signed [15:0]	Xin;   //输入数据
	input	 signed [15:0]	Rin;   //参考数据
	output signed [15:0]	Error; //LMS算法的误差信号
	output signed [15:0]	Yout;  //滤波后的输出数据
	
	//3位计数器，计数周期为6，为输入数据速率
	reg [2:0] count;
	always @(posedge clk or posedge rst)
		if (rst)
			count <= 3'd0;
		else
			if (count==3'd5)
			   count <= 3'd0;
			else
				count <= count + 1;

	//将数据存入移位寄存器Xin_Reg、Rin_Reg中
	reg signed [15:0] Xin_Reg[6:0];
	reg signed [15:0] Rin_Reg[6:0];
	reg [2:0] i,j; 
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin 
				for (i=0; i<7; i=i+1)
				   begin
						Xin_Reg[i]<=16'd0;
						Rin_Reg[i]<=16'd0;
					end
			end
		else
			begin
				if (count==5)
					begin
						for (j=0; j<6; j=j+1)
						   begin
								Xin_Reg[j+1] <= Xin_Reg[j];
								Rin_Reg[j+1] <= Rin_Reg[j];
							end
						Xin_Reg[0] <= Xin;
						Rin_Reg[0] <= Rin;
					end
			end	

	//滤波器系数每隔一个数据采样周期更新一次
	reg signed[15:0] W_Reg[6:0];
	reg signed[15:0] DW_Reg[6:0];
	reg [2:0] k,q; 
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			for (k=0; k<7; k=k+1)
			   //初始权值设置为1
				W_Reg[k]<=16'b0011111111111111;
		else
			begin
				if (count==5)
				   for (q=0; q<7; q=q+1)
					   W_Reg[q] <= W_Reg[q]+DW_Reg[q];
			end	   

	
	//实例化有符号数乘法器IP核mult
	wire signed[31:0] Y_Reg[6:0];
	mult	u0 (
	   .aclr (rst),
		.clock (clk),
		.dataa (Xin_Reg[0]),
		.datab (W_Reg[0]),
		.result (Y_Reg[0]));	
	mult	u1 (
	   .aclr (rst),
		.clock (clk),
		.dataa (Xin_Reg[1]),
		.datab (W_Reg[1]),
		.result (Y_Reg[1]));	
	mult	u2 (
	   .aclr (rst),
		.clock (clk),
		.dataa (Xin_Reg[2]),
		.datab (W_Reg[2]),
		.result (Y_Reg[2]));	
	mult	u3 (
	   .aclr (rst),
		.clock (clk),
		.dataa (Xin_Reg[3]),
		.datab (W_Reg[3]),
		.result (Y_Reg[3]));	
	mult	u4 (
	   .aclr (rst),
		.clock (clk),
		.dataa (Xin_Reg[4]),
		.datab (W_Reg[4]),
		.result (Y_Reg[4]));	
	mult	u5 (
	   .aclr (rst),
		.clock (clk),
		.dataa (Xin_Reg[5]),
		.datab (W_Reg[5]),
		.result (Y_Reg[5]));	
	mult	u6 (
	   .aclr (rst),
		.clock (clk),
		.dataa (Xin_Reg[6]),
		.datab (W_Reg[6]),
		.result (Y_Reg[6]));	

	//求取滤波输出信号yn以及误差信号en
	reg signed[34:0] Y1_out,Y2_out,Y_out;
	reg signed[20:0] E_out;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				Y1_out<= 35'd0;
				Y2_out <= 35'd0;
				E_out <= 21'd0;
				Y_out <= 35'd0;
			end
		else
			begin
				Y1_out <={{3{Y_Reg[0][31]}},Y_Reg[0]}+{{3{Y_Reg[1][31]}},Y_Reg[1]}+{{3{Y_Reg[2][31]}},Y_Reg[2]}; 
				Y2_out <={{3{Y_Reg[3][31]}},Y_Reg[3]}+{{3{Y_Reg[4][31]}},Y_Reg[4]}+{{3{Y_Reg[5][31]}},Y_Reg[5]}+{{3{Y_Reg[6][31]}},Y_Reg[6]}; 
				Y_out <= Y1_out + Y2_out;
				if (count==3)
					E_out <={{5{Rin_Reg[3][15]}},Rin_Reg[3]}-Y1_out[34:14]-Y2_out[34:14];
			end	  
			
	assign Yout = Y_out[31:16];
	assign Error = E_out[20:5];
	
	//根据误差信号E_out的符号，求取DW的值，延时一个时钟周期
	reg [2:0] m,n; 
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			for (m=0; m<7; m=m+1)
				DW_Reg[m]<=16'd0;
		else
//			begin
//				for (n=0; n<7; n=n+1)
//				   if (Xin_Reg[n][15])
//					   DW_Reg[n] <= -{E_out[20],E_out[20:6]};
//					else
//						DW_Reg[n] <= {E_out[20],E_out[20:6]};
//			end  
			begin
				for (n=0; n<7; n=n+1)
				   if (E_out[20])
					   DW_Reg[n] <= -{{7{Xin_Reg[n][15]}},Xin_Reg[n][15:7]};
					else
						DW_Reg[n] <= {{7{Xin_Reg[n][15]}},Xin_Reg[n][15:7]};
			end  			
endmodule	
	