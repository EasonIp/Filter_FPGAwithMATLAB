%E2_3_fft.m文件源代码
%快速傅立叶函数演示实例：编写一个M文件，产生频率为100Hz和105Hz正弦信号叠加后的信号，用fft函数
%对信号进行频率分析，要求在频率上能分辨出两种频率的正弦信号，分别绘出信号的时域及频域波形。

N=512;   %数据长度
f1=100;  %信号频率，单位为Hz
f2=105;
Fs=400;  %采样频率，单位为Hz
t=0:1/Fs:1/Fs*(N-1);             %产生时间序列
s=sin(2*pi*f1*t)+sin(2*pi*f2*t); %产生两个频率信号的叠加信号
f=fft(s,N);                      %计算傅立叶变换
f=20*log(abs(f))/log(10);        %换算成dBW单位
ft=[0:(Fs/N):Fs/2];              %转换横坐标以Hz为单位
f=f(1:length(ft));
%绘图
subplot(211);plot(t,s);
xlabel('时间(s)','fontsize',8,'position',[1.32,-2.5,0]); ylabel('幅度(v)','fontsize',8);
title('时域信号波形','fontsize',8);
subplot(212);plot(ft,f);
xlabel('频率(Hz)','fontsize',8,'position',[180,-34.38,0]); ylabel('功率(dBW)','fontsize',8);
title('信号频谱图','fontsize',8);