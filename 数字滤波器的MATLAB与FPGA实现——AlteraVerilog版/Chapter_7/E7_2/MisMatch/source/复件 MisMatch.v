//这是MisMatch.v的程序清单
module MisMatch (
	rst,clk,rr,ri,xr,xi,
	clkdv,yr,yi);//,wr,wi,er,ei);
	
	input		rst;        //复位信号，高电平有效
	input		clk;        //FPGA系统时钟
	input	 signed [15:0]	rr;  //参考数据实部
	input	 signed [15:0]	ri;  //参考数据虚部
	input	 signed [15:0]	xr;  //输入数据实部
	input	 signed [15:0]	xi;  //输入数据虚部
	output clkdv;             //输出的数据同步时钟，为系统时钟的1/8
	output signed [15:0]	yr;  //输出数据实部
	output signed [15:0]	yi;  //输出数据虚部
	//output signed [15:0]	wr;  //权值数据实部
	//output signed [15:0]	wi;  //权值数据虚部
	//output signed [15:0]	er;  //误差数据实部
	//output signed [15:0]	ei;  //误差数据虚部
	 
	//3位计数器，计数周期为8，为输入数据速率
	reg [2:0] count;
	reg clk_dv;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				count = 3'd0;
				clk_dv = 1'b0;
			end
		else
		   begin
				count = count + 1;
				clk_dv <= count[2]; 
			end
	//将8分频后的时钟信号输出，作为数据时钟信号
	assign clkdv = clk_dv;  

	//计算输出数据yn
	reg signed [15:0] wit,wrt;	
	wire signed [15:0] whit,whrt;
	wire signed [32:0] yit,yrt;
	reg signed [15:0] xit,xrt;
	//取权值的共轭进行输出信号yn的运算
	assign whrt = wrt;
	assign whit = -wit;
	complexmult uy	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi),
		.dataa_real (xr),
		.datab_imag (whit),
		.datab_real (whrt),
		.result_imag (yit),
		.result_real (yrt)) ;

	//计算误差信号
	reg signed [15:0] ehrt,ehit;
	reg signed [15:0] rrt,rit;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				ehrt = 16'd0;
				ehit = 16'd0;
			end
		else
		   begin
			   ehrt <= rr - yrt[30:15]; 
	         ehit <= yit[30:15] - ri;
	      end
			
	//assign ehrt =
	
	//将计算出的yn截位后输出		
   assign yr = yrt[30:15];
	assign yi = yit[30:15];
	
	//计算权值更新变量
	wire signed [32:0] dwrt,dwit;	
	complexmult udw	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi),
		.dataa_real (xr),
		.datab_imag (ehit),
		.datab_real (ehrt),
		.result_imag (dwit),
		.result_real (dwrt)) ;	

	//对权值进行更新
	reg clk_d;
	always @(posedge clk or posedge rst)
	   if (rst)
		   clk_d = 1'b0;
		else
		   clk_d <= clk_dv;
			
	//always @(posedge clk or posedge rst)
	always @(posedge clk_dv or posedge rst)
		if (rst)
		   begin
				wit = 16'd0;
				wrt = 16'b0011111111111111;
			end
		else
			begin 
				//if (clk_dv==1'b1 && clk_d==1'b0)	 
					//begin
						wit <= wit + {{3{dwit[32]}},dwit[32:20]}; 
						wrt <= wrt + {{3{dwrt[32]}},dwrt[32:20]}; 
					//end
			end

/*	//对权值进行更新
	always @(negedge clk_dv or posedge rst)
		if (rst)
		   begin
				//wit = 33'd0;
				//wrt = 33'b001111111111111111111111111111111;
				xit = 16'd0;
				xrt = 16'd0;
				rit = 16'd0;
				rrt = 16'd0;					
			end
		else
			begin 
				//if (count == 3'd7) 
					//begin
					//	wit <= wit + {{4{dwit[32]}},dwit[32:4]}; 
					//	wrt <= wrt + {{4{dwrt[32]}},dwrt[32:4]}; 
					//end
				//if (count == 0'd7) 
					//begin
						xit <= xi; 
						xrt <= xr; 
						rit <= ri;
						rrt <= rr;
					//end				
			end
	*/		
	//对输入数据寄存输出


			
	
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				xit = 16'd0;
				xrt = 16'd0;
				rit = 16'd0;
				rrt = 16'd0;					
			end
		else
			begin
		      if (clk_dv==1'b1 && clk_d==1'b0)	
					begin
						xit <= xi; 
						xrt <= xr; 
						rit <= ri;
						rrt <= rr;
					end				
			end
			
			
endmodule
