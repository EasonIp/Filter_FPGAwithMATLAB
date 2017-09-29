%E6_1_DecimSpec.m文件源代码
%用Matlab仿真整数倍抽取前后的信号频谱图。假设原始信号为频率为100Hz的正弦波，要求仿真产生载噪比（C/N0）为40dB/Hz的正弦波信号，初
%始采样频率为10KHz。仿真直接对信号进行8倍抽取后的信号频谱图，以及先进行低通滤波（截止频率为625Hz）后，再进行8倍抽取后的信号频谱图。比较抽取前后，以及滤波前后的频谱图变化情况。


%定义参数
Ps=10000;    %正弦信号功率为40dBW
Pn0=1;       %噪声信号功率谱密度为0dBW/Hz
f=100;       %信号频率为100Hz
Fs=10000;    %采样频率为10KHz
Pn=Pn0*Fs;   %噪声信号功率
D=8;         %抽取倍数

%产生信号
t=0:1/Fs:0.5;
c=2*pi*f*t;
si=sin(c);%产生正弦波

%产生随机序列信号
noise=randn(1,length(t));%产生高斯白噪声序列

%产生带有加性高斯白噪声的正弦信号序列
sin_noise=sqrt(2*Ps)*si+sqrt(Pn)*noise;
sin_noise=sin_noise/max(abs(sin_noise));%归一化处理
Spec_sin_noise=20*log10(abs(fft(sin_noise)));
Spec_sin_noise=Spec_sin_noise-max(Spec_sin_noise);

%直接抽进行D倍抽取后的信号
d2=zeros(1,length(t)/D);
d2=sin_noise(1:D:length(t));
Spec_d2=20*log10(abs(fft(d2)));
Spec_d2=Spec_d2-max(Spec_d2);

%经低通滤波器后抽取
b=fir1(80,1/D);
FilterS=filter(b,1,sin_noise);
Fd2=zeros(1,length(t)/D);
Fd2=FilterS(1:D:length(t));
Spec_Fd2=20*log10(abs(fft(Fd2)));
Spec_Fd2=Spec_Fd2-max(Spec_Fd2);

%画图
dt=zeros(1,length(t)/D);
dt=t(1:D:length(t));

x=0:length(Spec_sin_noise)-1;
x=x/length(x)*Fs;
subplot(311); plot(x,Spec_sin_noise); axis([0 Fs/2 -50 0]);
xlabel('频率(Hz)','fontsize',8); ylabel('功率','fontsize',8);
title('C/N0＝40dB/Hz的正弦波信号频谱图','fontsize',8);grid;
x=0:length(Spec_d2)-1;
x=x/length(x)*Fs/D;
subplot(312); plot(x,Spec_d2); axis([0 Fs/2/D -50 0]);
xlabel('频率(Hz)','fontsize',8); ylabel('功率','fontsize',8);
title('直接进行8倍抽取后的信号频谱图','fontsize',8);grid;
x=0:length(Spec_Fd2)-1;
x=x/length(x)*Fs/D;
subplot(313); plot(x,Spec_Fd2); axis([0 Fs/2/D -50 0]);
xlabel('频率(Hz)','fontsize',8); ylabel('功率','fontsize',8);
title('低通滤波后进行8倍抽取后的信号频谱图','fontsize',8);
grid;

