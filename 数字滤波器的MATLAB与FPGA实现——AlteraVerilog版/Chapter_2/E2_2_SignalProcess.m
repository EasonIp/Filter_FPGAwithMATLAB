%E2_2_SignalProcess.m文件源代码
%Matlab常用信号分析处理函数演示实例：编写一个M文件，分别用filter及impz函数获取指定离散系统
%（b=[0.8 0.5 0.6]，a=[1 0.2 0.4 -0.8]）的单位抽样响应；用freqz函数获取系统的频率响应；分
%别用root及zplane函数获取系统的零极点图及增益。

L=128;             %单位抽样序列的长度
Fs=1000;           %采样频率为1KHz
b=[0.8 0.5 0.6];        %系统函数的分子系数向量
a=[1 0.2 0.4 -0.8];     %系统函数的分母系数向量
delta=[1 zeros(1,L-1)]; %生成长度为L的单位抽样序列

FilterOut=filter(b,a,delta); %filter函数获取单位抽样响应
ImpzOut=impz(b,a,L);         %impz函数获取单位抽样响应 
[h,f]=freqz(b,a,L,Fs);       %freqz函数求频率响应
mag=20*log(abs(h))/log(10);  %幅度转换成dB单位    
ph=angle(h)*180/pi;          %相位值单位转换
zr=roots(b)  %求系统的零点，并显示在命令窗口
pk=roots(a)  %求系统的极点，并显示在命令窗口
g=b(1)/a(1)  %求系统的增益，并显示在命令窗口

%绘图
figure(1);
subplot(221);stem(FilterOut);
title('filter()获取单位抽样响应','fontsize',8);
subplot(222);stem(ImpzOut);
title('impz()获取单位抽样响应','fontsize',8);
subplot(223);plot(f,mag);
xlabel('频率(Hz)','fontsize',8);
ylabel('幅度(dB)','fontsize',8);
title('freqz()幅频响应','fontsize',8);
subplot(224);plot(f,ph);
xlabel('频率(Hz)','fontsize',8);
ylabel('相位(度)','fontsize',8);
title('freqz()相频响应','fontsize',8);
figure(2);
freqz(b,a); %用feqz函数绘制系统频率响应
title('freqz()自动绘制的频率响应图','fontsize',14);
figure(3);  
zplane(b,a);%用zplane函数绘制系统零极点图
title('zplane()自动绘制的系统零极点图','fontsize',14);