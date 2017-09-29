%E6_2_InterSpec.m文件源代码
%用Matlab仿真整数倍内插过程的信号变换关系。假设原始信号为频率为100Hz的正弦波，初始采样频率为400Hz。仿真对信号进行4倍内插后的信号波形
%图。比较内插前后信号的时域波形变化。

%定义参数
f=100;       %信号频率为100Hz
Fs=800;      %采样频率为400Hz
I=8;         %内插倍数

%产生信号
t=0:1/Fs:0.5;
c=2*pi*f*t;
si=sin(c);%产生正弦波

%进行4倍零值内插处理
Isi=zeros(1,length(si)*I);
Isi(1:I:length(Isi))=si;

%经低通滤波器处理
b=fir1(80,1/I);
FilterS=filter(b,1,Isi);
FilterS=FilterS/max(abs(FilterS));

%画图
% subplot(211);
% stem(si(1:20));
% subplot(212);
% stem(FilterS(20:40));
subplot(211);stem(si(1:40));axis([0 40 -1.2 1.2]);
subplot(212);stem(FilterS(40:105));axis([0 66 -1.2 1.2]);
% dt=zeros(1,length(t)/D);
% dt=t(1:D:length(t));
% 
% x=0:length(Spec_sin_noise)-1;
% x=x/length(x)*Fs;
% subplot(311); plot(x,Spec_sin_noise); axis([0 Fs/2 -50 0]);
% xlabel('频率(Hz)','fontsize',8); ylabel('功率','fontsize',8);
% title('C/N0＝40dB/Hz的正弦波信号频谱图','fontsize',8);grid;
% x=0:length(Spec_d2)-1;
% x=x/length(x)*Fs/D;
% subplot(312); plot(x,Spec_d2); axis([0 Fs/2/D -50 0]);
% xlabel('频率(Hz)','fontsize',8); ylabel('功率','fontsize',8);
% title('直接进行8倍抽取后的信号频谱图','fontsize',8);grid;
% x=0:length(Spec_Fd2)-1;
% x=x/length(x)*Fs/D;
% subplot(313); plot(x,Spec_Fd2); axis([0 Fs/2/D -50 0]);
% xlabel('频率(Hz)','fontsize',8); ylabel('功率','fontsize',8);
% title('低通滤波后进行8倍抽取后的信号频谱图','fontsize',8);
% grid;
% 
