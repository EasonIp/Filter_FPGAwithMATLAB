%E6_6_ErrorCIC.M
%采用Matlab仿真的方法来绘出不同长度的5级CIC滤波器的通带、阻带与误差容限之间的关系。
D=5;   %CIC滤波器级联数
F0=2;  %归一化频率，采样频率的一半等于1

M=5;   %CIC滤波器阶数
fp=0:0.001:1/M/8;    %通带截止归一化频率
Ep=(1/6)*(pi*M*fp./F0).^2;
Ep=Ep*D;
Ap5=20*log10((1+Ep)./(1-Ep));

fs=0:0.001:1/M;    %阻带截止归一化频率
Es=fs*M/F0;
As=20*log10(Es);
As5=As*D;

M=4;   %CIC滤波器阶数
% fp=0:0.01:1/M;    %通带截止归一化频率
Ep=(1/6)*(pi*M*fp./F0).^2;
Ep=Ep*D;
Ap4=20*log10((1+Ep)./(1-Ep));

Es=fs*M/F0;
As=20*log10(Es);
As4=As*D;


M=3;   %CIC滤波器阶数
% fp=0:0.01:1/M;    %通带截止归一化频率
Ep=(1/6)*(pi*M*fp./F0).^2;
Ep=Ep*M;
Ap3=20*log10((1+Ep)./(1-Ep));

Es=fs*M/F0;
As=20*log10(Es);
As3=As*D;


M=2;   %CIC滤波器阶数
% fp=0:0.01:1/M;    %通带截止归一化频率
Ep=(1/6)*(pi*M*fp./F0).^2;
Ep=Ep*M;
Ap2=20*log10((1+Ep)./(1-Ep));

Es=fs*M/F0;
As=20*log10(Es);
As2=As*D;

subplot(211);
plot(fp,Ap2,fp,Ap3,fp,Ap4,fp,Ap5);
xlabel('归一化频率');ylabel('通带衰减');
legend('M=2','M=3','M=4','M=5');
grid;
subplot(212);
plot(fs,As2,fs,As3,fs,As4,fs,As5);axis([0.02 0.2 -200 0]);
xlabel('归一化频率');ylabel('阻带衰减');
legend('M=2','M=3','M=4','M=5');
grid;