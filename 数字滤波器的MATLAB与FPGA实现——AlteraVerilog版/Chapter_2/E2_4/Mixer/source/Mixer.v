module Mixer (
	rst,clk,din,
	s_oc,dout,ldoc,ldmix);

	input		rst;         //复位信号，高电平有效
	input		clk;         //数据采样时钟/FPGA系统时钟，频率为5MHz
	input	   [9:0]	 din;  //输入的625KHz单频信号
	output 	[9:0]	 s_oc; //本地OC输出的625KHz单频信号
	output	[19:0] dout; //输出混频滤波后的的1.25Hz单频信号
	output	ldoc;        //对本地oc分频后的显示信号 
	output	ldmix;       //对混频输出信号分频后的显示信号  

	//实例化NCO IP核oc
   wire reset_n,out_valid,clken;
	wire [15:0] phi_inc_i;
	wire [9:0]  oc_sin;
	assign reset_n = !rst;       //oc的复位信号低电平有效
	assign phi_inc_i = 16'd8192; //设置频率为625KHz
	assign clken = 1'b1;         //设置时钟允许信号始终有效
	assign s_oc = oc_sin;        //将oc的输出信号送至模块输出
	oc U1(
		.phi_inc_i(phi_inc_i),
		.clk(clk),
		.reset_n(reset_n),
		.clken(clken),
		.fsin_o(oc_sin),
		.out_valid(out_valid));

   //乘法运算实现混频输出
	reg signed [19:0] mult;
	wire signed [9:0] s_din;
	wire signed [9:0] s_oc_sin;
	assign s_din = din;       //将乘数转换成有符号数运算
	assign s_oc_sin = oc_sin; //将乘数转换成有符号数运算
	always @(posedge clk or posedge rst)
		if (rst)
			mult <= 20'd0;
		else
			mult <= s_din * s_oc_sin;

	//求均值
	reg signed [19:0] m1,m2,m3,m4,m5,m6,m7;
	always @(posedge clk or posedge rst)
		if (rst)
			begin
				m1 <= 20'd0;
				m2 <= 20'd0;
				m3 <= 20'd0;
				m4 <= 20'd0;
				m5 <= 20'd0;
				m6 <= 20'd0;
				m7 <= 20'd0;
			end
		else
			begin
				m1 <= mult;
				m2 <= m1;
				m3 <= m2;
				m4 <= m3;
				m5 <= m4;
				m6 <= m5;
				m7 <= m6;
			end
	wire signed [22:0] madd;
	wire signed [19:0] mean,mt;
	assign madd = mult+m1+m2+m3+m4+m5+m6+m7;
	assign mean = madd[22:3];
	
	//滤出直流分量（均值）
	assign mt = mult -mean;	
	assign dout = mt;

	//625K分频输出，驱动LED灯显示ldoc
	integer  i_oc;
	reg doc;
	always @(posedge oc_sin[9] or posedge rst)
		if (rst)
			begin
				i_oc <= 0;
				doc <= 1'b0;
			end
		else
			begin
			   if (i_oc == 312500)
				   begin
						doc <= !doc;
						i_oc <= 0;
					end
				else
				   i_oc <= i_oc +1;
			end	
	assign ldoc = doc;

	//625K分频输出，驱动LED灯显示ldmix	
	integer  i_dmix;
	reg dmix;
	always @(posedge mt[19] or posedge rst)
		if (rst)
			begin
				i_dmix <= 0;
				dmix <= 1'b0;
			end
		else
			if (i_dmix == 312500)
				begin
					dmix <= !dmix;
					i_dmix <= 0;
				end
			else
				i_dmix <= i_dmix +1;
	assign ldmix = dmix;	
	
endmodule
