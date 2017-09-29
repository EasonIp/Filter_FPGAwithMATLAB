%E2_4_FpgaSim.m
%设置系统参数
% fi=625000;  %输入信号的频率
% fc=625000;  %本振信号的频率
Fs=5000000; %采样频率
L=256;  %数据长度
%从文本文件中读取数据
fid=fopen('D:\FilterVerilog\Chapter_2\E2_4\Mixer\simulation\modelsim\out.txt');
[FpgaOut,count]=fscanf(fid,'%d',inf);
fclose(fid);
fid=fopen('D:\FilterVerilog\Chapter_2\E2_4\Mixer\simulation\modelsim\oc.txt');
[FpgaOc,count]=fscanf(fid,'%d',inf);
fclose(fid);
%count
%取出一段数据进行计算
FpgaOut=FpgaOut(1:L)';%读出的数据为列向量，转换成行向量
FpgaOc=FpgaOc(1:L)';
Fout=abs(fft(FpgaOut,L));  %求FFT变换的幅度值
%归一化处理
FpgaOut=FpgaOut/max(abs(FpgaOut));
FpgaOc=FpgaOc/max(abs(FpgaOc));
Fout=Fout/max(Fout);
Fout=[Fout(L/2+1:L),Fout(1:L/2)]; %转换成相对于原点对称的信号
%生成时间及频率坐标轴
t=[0:L-1];                        %生成时间坐标轴,单位为us 
t=t*(1/Fs)*(10^6);
m=[-L/2:1:(L/2-1)]*Fs/L*(10^(-6));%生成频率坐标轴,单位为MHz
%画图
subplot(311);plot(t(1:32),FpgaOc(21:52));
xlabel('时间(us)','fontsize',8,'position',[6.5,-1.2,0]); ylabel('幅度','fontsize',8);
title('DDS产生的本振信号(a)','fontsize',8);

subplot(312);plot(t(1:32),FpgaOut(21:52));
xlabel('时间(us)','fontsize',8,'position',[6.5,-1.2,0]); ylabel('幅度','fontsize',8);
title('FPGA混频输出信号(b)','fontsize',8);

subplot(313);plot(m,Fout);
xlabel('频率(MHz)','fontsize',8,'position',[2.3,-0.3,0]); ylabel('幅度','fontsize',8);
title('FPGA混频输出信号的幅频响应(c)','fontsize',8);