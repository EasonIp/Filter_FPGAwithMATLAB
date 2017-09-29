%E8_1_FFTSim.m
%仿真FFT参数对采用FFT算法分析信号频谱的影响。产生频率分别为2Hz，2.05Hz的正弦波合成信号，采样
%频率＝10Hz。根据（8-8）式，要实现分辨两个单频信号的目的，DFT的序列长度必须满足 。分别仿真3种
%情况下的FFT变换：１）取 的128点数据，计算FFT；２）将128点 以补零的方式加长到512点，计算FFT；
%3）取512点 ，计算FFT。
f1=2; f2=2.05;%单正弦信号的频率
fs=10;        %采样频率
%对128点时域序列进行FFT分析
N=128;        %FFT分析的点数
n=0:N-1;
xn1=sin(2*pi*f1*n/fs)+sin(2*pi*f2*n/fs);%产生128点时域信号序列
XK1=fft(xn1);                           %进行傅立叶变换，并进行归一化处理
MXK1=abs(XK1(1:N/2));
% MXK1=20*log10(abs(XK1(1:N/2)));
% MXK1=MXK1-max(MXK1);
%对补零后的512点时域序列进行FFT分析
M=512;
xn2=[xn1 zeros(1,M-N)];%在时域信号序列后补零
XK2=fft(xn2);          %进行傅立叶变换，并进行归一化处理
MXK2=abs(XK2(1:M/2));
%MXK2=20*log10(abs(XK2(1:M/2)));
%MXK2=MXK2-max(MXK2);
%对512点时域序列进行FFT分析
n=0:M-1;
xn3=sin(2*pi*f1*n/fs)+sin(2*pi*f2*n/fs);%产生128点时域信号序列
XK3=fft(xn3);                           %进行傅立叶变换，并进行归一化处理
MXK3=abs(XK3(1:M/2));
% MXK3=20*log10(abs(XK3(1:M/2)));
% MXK3=MXK3-max(MXK3);
%绘图
subplot(321);
x1=0:N-1; 
plot(x1,xn1);xlabel('n','fontsize',8);title('128点x(n)','fontsize',8);
subplot(322);
k1=(0:N/2-1)*fs/N;
plot(k1,MXK1);xlabel('f(Hz)','fontsize',8);title('128点xn的FFT变换','fontsize',8);
subplot(323);
x2=0:M-1; 
plot(x2,xn2);xlabel('n','fontsize',8);title('512点补零x(n)','fontsize',8);
subplot(324);
k2=(0:M/2-1)*fs/M;
plot(k2,MXK2);xlabel('f(Hz)','fontsize',8);title('512点补零xn的FFT变换','fontsize',8);
subplot(325);
plot(x2,xn3);xlabel('n','fontsize',8);title('512点x(n)','fontsize',8);
subplot(326);
plot(k2,MXK3);xlabel('f(Hz)','fontsize',8);title('512点xn的FFT变换','fontsize',8);
