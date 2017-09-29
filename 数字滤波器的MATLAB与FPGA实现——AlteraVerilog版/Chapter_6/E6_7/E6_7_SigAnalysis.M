%E6_7_SigAnalysis.M
%定义参数
f=1000;       %信号频率为1KHz
Fs=200*f;     %采样频率为200KHz
M=5;          %CIC滤波器阶数
D=M;          %抽取因子
N=10;         %量化位数
%获取仿真测试输入信号
Q_si=E6_7_SigProduce;
Q_si=Q_si/max(abs(Q_si));

%从文本文件中读取数据
%测试输出数据放在Cout变量中
 fid=fopen('D:\FilterVerilog\Chapter_6\E6_7\SigCIC\simulation\modelsim\Sout.txt','r');
[Cout,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
Cout=Cout/max(abs(Cout));

x=0:1:300;
x=x/Fs;
subplot(211);stem(x,Q_si(1:length(x)));title('FPGA仿真滤波前信号波形');
x=x(1:D:length(x));
subplot(212);stem(x,Cout(1:length(x)));title('FPGA仿真滤波后信号波形');