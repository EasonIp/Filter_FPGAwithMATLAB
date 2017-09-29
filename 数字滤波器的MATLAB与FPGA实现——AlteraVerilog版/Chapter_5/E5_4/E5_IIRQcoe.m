function hn=E5_IIRQcoe(Qcoe);
%E5_IIRQcoe.m
fs=2000;         %采样频率
fc=500;         %阻带截止频率
Rs=60;           %阻带衰减（dB）
N=7;             %滤波器阶数清零


[b,a]=cheby2(N,Rs,2*fc/fs) 
m=max(max(abs(a),abs(b))); %获取滤波器系数向量中绝对值最大的数
Qm=floor(log2(m/a(1)));    %取系数中最大值与a(1)的整数倍
if Qm<log2(m/a(1))
    Qm=Qm+1;
end
Qm=2^Qm;                      %获取量化基准值            
Qb=round(b/Qm*(2^(Qcoe-1)-1)) %四舍五入截尾
Qa=round(a/Qm*(2^(Qcoe-1)-1)) %四舍五入截尾
delta=[1,zeros(1,1023)];
hn=filter(Qb,Qa,delta);
figure(1);freqz(b,a,1024,fs);
figure(2);freqz(Qb,Qa,1024,fs);