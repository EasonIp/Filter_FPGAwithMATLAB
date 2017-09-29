//这是ifftout.v文件的程序清单
module ifftout (
	rst,clk,clkdv,addr,xk_re,xk_im,
	dout);
	
	input		rst;   //复位信号，高电平有效
	input		clk;   //FPGA系统时钟，频率为数据速率的16倍：64MHz
	input		clkdv; //16分频后的时钟：4MHz
	input	 [11:0]	addr;         //输入数据序号
	input signed [15:0]	xk_re;   //fft变换后的实部信号
	input signed [15:0]	xk_im;   //fft变换后的虚部信号
	output signed [15:0] dout;    //滤波后的输出数据
	
	wire reset_n,inverse,sink_ready,source_ready;
	reg sink_sop,sink_eop,sink_valid;
   wire [1:0] sink_error,source_error;
	wire source_sop,source_eop,source_valid;
	wire [5:0] source_exp;
	wire signed [15:0] xn_re,xn_im;

   assign reset_n = !rst;
	assign sink_error = 2'd0;
	assign source_ready = 1'b1;
	assign inverse = 1'b1; //FFT反变换
	
	//设置FFT变换起始脉冲，sink_eop/sink_sop高电平后开始载入数据
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				sink_eop <= 0;
				sink_sop <= 0;
				sink_valid <= 0;
			end
		else
		   begin
				if (((addr>=1640) & (addr<=1895)) || ((addr>=3688) & (addr<=3943)))
				   sink_valid <= 1'b1;
				else
				   sink_valid <= 1'b0;
				if ((addr==1640) || (addr==3688))
				   begin  
					   sink_sop <= 1'b1;
					end
				else
				   begin
				      sink_sop <= 1'b0;
					end
				if ((addr==1895) || (addr==3943))//1895 3943
				   begin 
					   sink_eop <= 1'b1;
					end
				else
				   begin
					   sink_eop <= 1'b0;
					end
			end
	
   fft256  u0(
		.clk (clk),
		.reset_n (reset_n),
		.inverse (inverse),
		.sink_valid (sink_valid),
		.sink_sop (sink_sop),
		.sink_eop (sink_eop),
		.sink_real (xk_re),//din　　sink_sop有效后第一个周期为有效输入数据
		.sink_imag (xk_im),
		.sink_error (sink_error),
		.source_ready (source_ready),
		.sink_ready (sink_ready),
		.source_error (source_error),
		.source_sop (source_sop),
		.source_eop (source_eop),
		.source_valid (source_valid),
		.source_exp (source_exp),
		.source_real (xn_re),
		.source_imag (xn_im));//序号3022/974产生第一个IFFT变换数据
	

	//双端口RAM，实现数据速率转换输出
	wire [11:0] waddr_pre,waddr_aft;
	reg  [7:0] raddr_pre,raddr_aft;	
	wire signed [15:0] dout_pre,dout_aft;
	wire wren_pre,wren_aft;
	
	assign waddr_pre = addr-3022;
	assign waddr_aft = addr-974;
	assign wren_pre = (addr >= 974 ) & (addr <=1229 ) ? 1'b1 : 1'b0;
	assign wren_aft = (addr >= 3022) & (addr <=3277 ) ? 1'b1 : 1'b0;
	
   //产生读数据地址,调整时序，使得写完16个数据后开始读取第1个数据。
	reg rdce_pre,rdce_aft;
	always @(posedge clk or posedge rst)
		if (rst)
		   begin
				rdce_pre <= 0;
				rdce_aft <= 0;
			end
		else
		   begin
				if (addr==992)
					rdce_pre <= 1'b1;
				if (addr==3040)
				   rdce_aft <= 1'b1;
			end

	always @(posedge clkdv or posedge rst)
		if (rst)
		   begin
				raddr_aft <= 0;
				raddr_pre <= 0;
			end
		else
		   begin
				if (rdce_aft==1'b1)
					raddr_aft <= raddr_aft + 1;
				if (rdce_pre==1'b1)
				   raddr_pre <= raddr_pre + 1;
			end
	
	dram16_256	u1 (
		.data (xn_re),
		.rdaddress (raddr_pre),
		.rdclock (clkdv),
		.wraddress (waddr_pre[7:0]),
		.wrclock (clk),
		.wren (wren_pre),
		.q (dout_pre));

	dram16_256	u2 (
		.data (xn_re),
		.rdaddress (raddr_aft),
		.rdclock (clkdv),
		.wraddress (waddr_aft[7:0]),
		.wrclock (clk),
		.wren (wren_aft),
		.q (dout_aft));

	//对反变换后的数据重叠输出
	reg signed [15:0] dout_tem;
	always @(posedge clkdv or posedge rst)
		if (rst)
			dout_tem <= 0;
		else
		   dout_tem <= dout_aft + dout_pre;
			
	assign dout = dout_tem;

endmodule
