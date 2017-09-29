%E6_5_CompareCIC.M
%例6-5：
%用Matlab仿真长度为４的不同级联数CIC滤波器的频谱特性。

M=5;         %滤波器长度
b=ones(1,M);
delta=[1,zeros(1,1023)];
s1=filter(b,1,delta);        %求取滤波器冲激响应
s2=filter(b,1,s1);           %求取滤波器冲激响应
s3=filter(b,1,s2);           %求取滤波器冲激响应
s4=filter(b,1,s3);           %求取滤波器冲激响应
s5=filter(b,1,s4);           %求取滤波器冲激响应

Spec1=20*log10(abs(fft(s1))); %求取滤波器频谱特性
Spec1=Spec1-max(Spec1);
Spec2=20*log10(abs(fft(s2))); %求取滤波器频谱特性
Spec2=Spec2-max(Spec2);
Spec3=20*log10(abs(fft(s3))); %求取滤波器频谱特性
Spec3=Spec3-max(Spec3);
Spec4=20*log10(abs(fft(s4))); %求取滤波器频谱特性
Spec4=Spec4-max(Spec4);
Spec5=20*log10(abs(fft(s5))); %求取滤波器频谱特性
Spec5=Spec5-max(Spec5);

f=0:length(Spec1)-1;
f=2*f/(length(Spec1)-1);     %对频率轴进行归一化处理

plot(f,Spec1,'-',f,Spec2,'.',f,Spec3,'--',f,Spec5,'-.');axis([0 0.2 -25 0]);
xlabel('归一化频率');ylabel('幅度(dB)');
legend('D=1','D=2','D=3','D=5');
grid;