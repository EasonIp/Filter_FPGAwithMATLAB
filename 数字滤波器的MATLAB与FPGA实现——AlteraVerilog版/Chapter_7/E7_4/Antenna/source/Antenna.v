//这是Antenna.v文件的程序清单
module Antenna (
	rst,clk,x1r,x1i,x2r,x2i,x3r,x3i,x4r,x4i,
	er, ei, w1r,w1i,w2r,w2i,w3r,w3i,w4r,w4i,
	rrin,yr);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为数据速率的6倍
	input	 signed [15:0]	x1r,x1i,x2r,x2i,x3r,x3i,x4r,x4i;  //输入数据
	input	 signed [15:0]	rrin;    //参考数据
	output signed [15:0]	w1r,w1i,w2r,w2i,w3r,w3i,w4r,w4i; //权值数据
	output signed [15:0]	er,ei,yr; //LMS算法的误差信号及滤波后的输出数据
	
	//3位计数器，计数周期为8，为输入数据速率
	reg [2:0] count;
	reg signed [15:0] xr1,xi1,xr2,xi2,xr3,xi3,xr4,xi4,rr;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				count <= 3'd0;
				xr1 <= 16'd0; xi1 <= 16'd0; 
				xr2 <= 16'd0; xi2 <= 16'd0; 
				xr3 <= 16'd0; xi3 <= 16'd0; 
				xr4 <= 16'd0; xi4 <= 16'd0; 
				rr  <= 16'd0;
			end
		else
			begin
			   count <= count + 1;
				if (count==3'd0)
					begin
					   xr1 <= x1r; xi1 <= x1i;
					   xr2 <= x2r; xi2 <= x2i;
					   xr3 <= x3r; xi3 <= x3i;
					   xr4 <= x4r; xi4 <= x4i;
						rr  <= rrin;
					end
			end

	reg signed  [15:0] wr1,wi1,wr2,wi2,wr3,wi3,wr4,wi4;	
   wire signed [15:0] whi1,whi2,whi3,whi4;	
   wire signed [32:0] yrt1,yit1,yrt2,yit2,yrt3,yit3,yrt4,yit4;	
	assign whi1 = -wi1;
	assign whi2 = -wi2;
	assign whi3 = -wi3;
	assign whi4 = -wi4;
	
   
	complexmult uy1	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi1),
		.dataa_real (xr1),
		.datab_imag (whi1),
		.datab_real (wr1),
		.result_imag (yit1),
		.result_real (yrt1)) ;
		
	complexmult uy2	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi2),
		.dataa_real (xr2),
		.datab_imag (whi2),
		.datab_real (wr2),
		.result_imag (yit2),
		.result_real (yrt2)) ;
		
	complexmult uy3	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi3),
		.dataa_real (xr3),
		.datab_imag (whi3),
		.datab_real (wr3),
		.result_imag (yit3),
		.result_real (yrt3)) ;

	complexmult uy4	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi4),
		.dataa_real (xr4),
		.datab_imag (whi4),
		.datab_real (wr4),
		.result_imag (yit4),
		.result_real (yrt4)) ;
		
	//计算误差信号
	reg signed[32:0] ehrt,ehit,yrt;
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				ehrt <= 33'd0;
				ehit <= 33'd0;
				yrt  <= 33'd0;
			end
		else
			begin
				//ehrt <={{17{rr[15]}},rr}-yrt1-yrt2-yrt3-yrt4; 
				ehrt <={{2{rr[15]}},rr,15'd0}-yrt1-yrt2-yrt3-yrt4; 
				ehit <=yit1+yit2+yit3+yit4; 
				yrt  <=yrt1+yrt2+yrt3+yrt4; 
			end
	assign yr = yrt[30:15];
	
	
	//计算权值更新量
	wire signed  [32:0] dwr1,dwi1,dwr2,dwi2,dwr3,dwi3,dwr4,dwi4;	
	complexmult udw1	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi1),
		.dataa_real (xr1),
		.datab_imag (ehit[30:15]),
		.datab_real (ehrt[30:15]),
		.result_imag (dwi1),
		.result_real (dwr1)) ;	

	complexmult udw2	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi2),
		.dataa_real (xr2),
		.datab_imag (ehit[30:15]),
		.datab_real (ehrt[30:15]),
		.result_imag (dwi2),
		.result_real (dwr2)) ;

	complexmult udw3	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi3),
		.dataa_real (xr3),
		.datab_imag (ehit[30:15]),
		.datab_real (ehrt[30:15]),
		.result_imag (dwi3),
		.result_real (dwr3)) ;	

	complexmult udw4	( 
		.aclr (rst),
		.clock (clk),
		.dataa_imag (xi4),
		.dataa_real (xr4),
		.datab_imag (ehit[30:15]),
		.datab_real (ehrt[30:15]),
		.result_imag (dwi4),
		.result_real (dwr4)) ;	

   //一个周期内进行一次权值更新
	always @(posedge clk or posedge rst)
		if (rst)
			//初始化寄存器值为0
			begin
				wr1 <= 16'h4000; wi1 <= 16'd0;  
				wr2 <= 16'h4000; wi2 <= 16'd0;  
				wr3 <= 16'h4000; wi3 <= 16'd0;  
				wr4 <= 16'h4000; wi4 <= 16'd0;  
			end
		else
			if (count==3'd0)
			   begin
					wr1 <= wr1 + {{4{dwr1[32]}},dwr1[32:21]}; 
					wr2 <= wr2 + {{4{dwr2[32]}},dwr2[32:21]}; 
					wr3 <= wr3 + {{4{dwr3[32]}},dwr3[32:21]}; 
					wr4 <= wr4 + {{4{dwr4[32]}},dwr4[32:21]}; 
					wi1 <= wi1 + {{4{dwi1[32]}},dwi1[32:21]}; 
					wi2 <= wi2 + {{4{dwi2[32]}},dwi2[32:21]}; 
					wi3 <= wi3 + {{4{dwi3[32]}},dwi3[32:21]}; 
					wi4 <= wi4 + {{4{dwi4[32]}},dwi4[32:21]}; 
				end
			
	assign er = ehrt[30:15];
	assign ei = ehit[30:15]; 
	assign w1r = wr1;
	assign w1i = wi1;
	assign w2r = wr2;
	assign w2i = wi2;
	assign w3r = wr3;
	assign w3i = wi3;
	assign w4r = wr4;
	assign w4i = wi4;
	
endmodule
