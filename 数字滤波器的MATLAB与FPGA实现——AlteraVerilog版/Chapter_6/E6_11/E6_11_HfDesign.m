%E6_11_HfDesign.m
%在某一数字信号处理系统中，输入信号采样频率为3200Ｈz，数据位宽为10比特，有用信号的通带截止
%频率 为20Hz，阻带截止频率为25Hz。要求将信号的抽样率减小到50Hz，使用多级半带滤波器实现此抽
%取系统，系统的通带容限和阻带容限均为0.001。采用FPGA实现此抽取系统，并使用Matlab对抽取系统
%的实现结果进行仿真测试。
fp=20;
fs=25;
F0=3200;
Fout=50;
dev=0.001;
Q=12;
D=log2(F0/Fout);
devi=dev/D;

%求取各级半带滤波器的归一化截止频率
fpi=zeros(1,D-1);
for i=1:D-1
    fpi(i)=fp*(2^i)/F0;
end
%设计各级半带滤波器
b1=firhalfband('minorder',fpi(1),devi); L1=length(b1)
b2=firhalfband('minorder',fpi(2),devi); L2=length(b2)
b3=firhalfband('minorder',fpi(3),devi); L3=length(b3)
b4=firhalfband('minorder',fpi(4),devi); L4=length(b4)
b5=firhalfband('minorder',fpi(5),devi); L5=length(b5)

%采用FIR滤波器的一般设计方法设计最后一级滤波器
%先用kaiserord求取最小滤波器阶数
%再用函数firpm设计最优滤波器
fc=[20 25];mag=[1 0];devk=[devi,dev];
[n,wn,beta,ftype]=kaiserord(fc,mag,devk,Fout*2); %获取最后一级滤波器的阶数
fpm=[0 fc(1)*2/Fout/2 fc(2)*2/Fout/2 1];         %firpm函数的频段向量
magpm=[1 1 0 0];                                 %firpm函数的幅值向量
b6=firpm(n,fpm,magpm); L6=length(b6)
%量化滤波器系数
% Qb1=round(b1/max(abs(b1))*(2^(Q-1)-1));
% Qb2=round(b2/max(abs(b2))*(2^(Q-1)-1));
% Qb3=round(b3/max(abs(b3))*(2^(Q-1)-1));
% Qb4=round(b4/max(abs(b4))*(2^(Q-1)-1));
% Qb5=round(b5/max(abs(b5))*(2^(Q-1)-1));
% Qb6=round(b6/max(abs(b6))*(2^(Q-1)-1));
format long;

%将生成的滤波器系数数据写入FPGA所需的TXT文件中
fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf1.txt','w');
fprintf(fid,'%12.12f\r\n',b1);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf2.txt','w');
fprintf(fid,'%12.12f\r\n',b2);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf3.txt','w');
fprintf(fid,'%12.12f\r\n',b3);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf4.txt','w');
fprintf(fid,'%12.12f\r\n',b4);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf5.txt','w');
fprintf(fid,'%12.12f\r\n',b5);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf6.txt','w');
fprintf(fid,'%12.12f\r\n',b6);%fprintf(fid,';');
fclose(fid);

%%%%%%%%%%%%%%%
%仿真测试数据经抽取系统后的信号幅频特性及时域波形
Q_s=E6_11_NoiseAndCarrier;
F1=filter(b1,1,Q_s);s1=F1(1:2:length(F1));m1=max(abs(F1))/max(abs(Q_s))
F2=filter(b2,1,s1); s2=F2(1:2:length(F2));m2=max(abs(F2))/max(abs(s1))
F3=filter(b3,1,s2); s3=F3(1:2:length(F3));m3=max(abs(F3))/max(abs(s2))
F4=filter(b4,1,s3); s4=F4(1:2:length(F4));m4=max(abs(F4))/max(abs(s3))
F5=filter(b5,1,s4); s5=F5(1:2:length(F5));m5=max(abs(F5))/max(abs(s4))
F6=filter(b6,1,s5); s6=F6(1:2:length(F6));m6=max(abs(F6))/max(abs(s5))
sout=s6(100:length(s6));

%绘制抽取前后信号的频谱图
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%求信号的幅频响应
As=20*log(abs(fft(Q_s,1024)))/log(10); As=As-max(As);
Aout=20*log(abs(fft(sout,1024)))/log(10); Aout=Aout-max(Aout);
%设置幅频响应的横坐标单位为Hz
x_fs=[0:(F0/length(As)):F0/2];
%只显示正频率部分的幅频响应
mf_s=As(1:length(x_fs));

%设置幅频响应的横坐标单位为Hz
x_fout=[0:(Fout/length(Aout)):Fout/2];
%只显示正频率部分的幅频响应
mf_out=Aout(1:length(x_fout));

figure(1); 
subplot(211);
plot(x_fs,mf_s);
xlabel('频率(Hz)');ylabel('幅度(dB)');title('原始信号的频谱');grid;
subplot(212);
plot(x_fout,mf_out);
xlabel('频率(Hz)');ylabel('幅度(dB)');title('Matlab仿真滤波抽取后信号的频谱');grid;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%绘制抽取前后信号的时域波形
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Sin=Q_s/max(abs(Q_s));
Sout=sout/max(abs(sout));
Psin=Sin(1:1000);
Psout=Sout(1:40);
figure(2);
subplot(211);
plot(Psin);title('原始信号的时域波形');
subplot(212);
plot(Psout);;title('Matlab仿真滤波抽取后信号的时域波形');