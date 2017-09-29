module SymbExam (
	d1,d2,
	signed_out,unsigned_out);

	input		[3:0]d1;              //输入加数1
	input		[3:0]d2;              //输入加数2
	output 	[3:0]	unsigned_out;   //无符号加法输出
	output signed [3:0] signed_out; //有符号加法输出

	//无符号加法运算
	assign unsigned_out = d1 + d2;
	
	//有符号加法运算
	wire signed [3:0] s_d1;
	wire signed [3:0] s_d2;
	assign s_d1 = d1;
	assign s_d2 = d2;
	assign signed_out = s_d1 + s_d2;
	
endmodule



