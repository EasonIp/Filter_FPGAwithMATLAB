//这是NotchFilter.v文件的程序清单
module NotchFilter (
	rst,clk,din,
	dout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为数据速率的6倍
	input	 signed [15:0]	din;    //输入数据
	output signed [15:0]	dout;   //滤波后的输出数据

	//实例化两个NCO核，产生4路基准信号
   wire reset_n,clken,valid_50,valid_10;
	wire [31:0] phi_50,phi_10;
	wire signed [15:0] Xin_Reg [3:0];     //存放NCO输出的正余弦信号
	assign reset_n = !rst;        //复位信号低电平有效
	assign phi_50 = 32'd8947849 ; //设置频率为50Hz
	assign phi_10 = 32'd1789570 ; //设置频率为10Hz	
	assign clken = 1'b1;         //设置时钟允许信号始终有效
	nco50 u1(
		.phi_inc_i(phi_50),
		.clk(clk),
		.reset_n(reset_n),
		.clken(clken),
		.fsin_o(Xin_Reg[1]),
		.fcos_o(Xin_Reg[0]),
		.out_valid(valid_50));

	 nco50 u2(
		.phi_inc_i(phi_10),
		.clk(clk),
		.reset_n(reset_n),
		.clken(clken),
		.fsin_o(Xin_Reg[3]),
		.fcos_o(Xin_Reg[2]),
		.out_valid(valid_10));

	//3位计数器，计数周期为6，为输入数据速率
	reg [2:0] count;
	reg signed [15:0] Rin;
	always @(posedge clk or posedge rst)
		if (rst)
			count <= 3'd0;
		else
			if (count==3'd5)
			   begin
					count <= 3'd0;
					Rin <= din;
				end
			else
				count <= count + 1;

				
	//权值数据，每隔一个数据采样周期更新一次
	reg signed[15:0] W_Reg[3:0];
	reg signed[15:0] DW_Reg[3:0];
	reg [2:0] k; 
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
			   //初始化寄存器值为0
			   for (k=0; k<4; k=k+1)
			      //初始权值设置为1
				   W_Reg[k]<=16'b0011111111111111;
			end
		else
			begin
				if (count==5)
				   for (k=0; k<4; k=k+1)
					   W_Reg[k] <= W_Reg[k]+DW_Reg[k];
			end	 				
				

   //4个乘法器，并行完成权值与基准信号的乘法运算
	wire signed [31:0] Y_Reg [3:0];
	mult	u3 (
		.aclr (rst),
		.clock (clk),
		.datab (Xin_Reg[0]),
		.dataa (W_Reg[0]),
		.result (Y_Reg[0]));

	mult	u4 (
		.aclr (rst),
		.clock (clk),
		.datab (Xin_Reg[1]),
		.dataa (W_Reg[1]),
		.result (Y_Reg[1]));

	mult	u5 (
		.aclr (rst),
		.clock (clk),
		.datab (Xin_Reg[2]),
		.dataa (W_Reg[2]),
		.result (Y_Reg[2]));

	mult	u6 (
		.aclr (rst),
		.clock (clk),
		.datab (Xin_Reg[3]),
		.dataa (W_Reg[3]),
		.result (Y_Reg[3]));
		

	//求取滤波输出信号yn以及误差信号en
	reg signed[34:0] Y_out;
	reg signed[34:0] E_out;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				Y_out<= 35'd0;
				E_out <= 21'd0;
			end
		else
			begin
			   //Y_out在一个时钟周期内完成
				Y_out <={{3{Y_Reg[0][31]}},Y_Reg[0]}+{{3{Y_Reg[1][31]}},Y_Reg[1]}+{{3{Y_Reg[2][31]}},Y_Reg[2]}+{{3{Y_Reg[3][31]}},Y_Reg[3]}; 
				//E_out在两个时钟周期内完成
				E_out <={{4{Rin[15]}},Rin,15'd0}-Y_out;
			end
			
   assign dout = E_out[30:15];
	
   //根据误差信号E_out的符号，求取DW的值，延时一个时钟周期
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
			   for (k=0; k<4; k=k+1)
				   DW_Reg[k]<=16'd0;
			end
		else
			begin
				for (k=0; k<4; k=k+1)
				   if (E_out[34])
					   DW_Reg[k] <= -{{7{Xin_Reg[k][15]}},Xin_Reg[k][15:7]};
					else
						DW_Reg[k] <= {{7{Xin_Reg[k][15]}},Xin_Reg[k][15:7]};
			end  			
endmodule	
	