%E8_2_FFTFPGAsim.M
%从文本文件中读取数据
fid=fopen('D:\FilterVerilog\Chapter_8\E8_2\TransformFilter\simulation\modelsim\E8_2_dout.txt','r');
[dout,N]=fscanf(fid,'%lg',inf);
fclose(fid);

%归一化处理
dout=dout/max(abs(dout));
%求信号的幅频响应
Fdout=20*log(abs(fft(dout(2001:2256),256)))/log(10); Fdout=Fdout-max(Fdout);

%绘制幅频响应曲线
subplot(211)
plot(Fdout);
xlabel('FFT谱线序号');ylabel('幅度(dB)');legend('FPGA仿真信号滤波后的频谱');
grid;

%绘制时域波形
%设置显示数据范围
subplot(212);
poly=[1 0 0 0 1 1 1 1];
pn=E8_2_PNCodeGenerator(poly)>0;
t=0:length(pn)-1; 
%通过仿真，调整序号位置，使滤波输出数据与原始数据对齐，便于比较
pnd=[pn(271:4*127-1),pn(1:270)];
N=200-1;
t=0:N-1;
ff=1832+508*2;%数据为长度为127的PN码，每个码片采样4个点，因此模拟数据周期为508
filterout=(dout(ff+1:N+ff)>0)+0.1;
plot(t,filterout,'-',t,pnd(1:N),'-');
axis([0 N -0.2 1.2]);legend('FPGA仿真滤波后数据','原始数据');

title('FPGA仿真信号滤波后的时域波形');

