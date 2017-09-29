%E6_3_SigCIC.M
%例6-３：
%用Matlab仿真不同长度的单级CIC滤波器的频谱特性。

M=2;         %滤波器长度
b=ones(1,M);
delta=[1,zeros(1,1023)];
s=filter(b,1,delta);        %求取滤波器冲激响应
Spec=20*log10(abs(fft(s))); %求取滤波器频谱特性
Spec2=Spec-max(Spec);
f=0:length(Spec)-1;
f=2*f/(length(Spec)-1);     %对频率轴进行归一化处理

M=5;         %滤波器长度
b=ones(1,M);
delta=[1,zeros(1,1023)];
s=filter(b,1,delta);        %求取滤波器冲激响应
Spec=20*log10(abs(fft(s))); %求取滤波器频谱特性
Spec5=Spec-max(Spec);

M=7;         %滤波器长度
b=ones(1,M);
delta=[1,zeros(1,1023)];
s=filter(b,1,delta);        %求取滤波器冲激响应
Spec=20*log10(abs(fft(s))); %求取滤波器频谱特性
Spec7=Spec-max(Spec);

M=8;         %滤波器长度
b=ones(1,M);
delta=[1,zeros(1,1023)];
s=filter(b,1,delta);        %求取滤波器冲激响应
Spec=20*log10(abs(fft(s))); %求取滤波器频谱特性
Spec8=Spec-max(Spec);

% plot(f,Spec2,f,Spec5,f,Spec7,f,Spec8);axis([0 1 -50 0]);grid;
% xlabel('归一化频率');ylabel('幅度(dB)');
% legend('Ｍ=２','Ｍ=5','Ｍ=7','Ｍ=8');
% grid;
plot(f,Spec2,'-',f,Spec5,'.',f,Spec8,'--');axis([0 1 -50 0]);
xlabel('归一化频率');ylabel('幅度(dB)');
legend('Ｍ=2','Ｍ=5','Ｍ=8');
grid;