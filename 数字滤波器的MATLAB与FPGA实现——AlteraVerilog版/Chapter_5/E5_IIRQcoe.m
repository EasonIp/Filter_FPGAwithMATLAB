%E5_IIRQcoe.m
fs=2000;         %采样频率
fc=500;         %阻带截止频率
Rs=60;           %阻带衰减（dB）
N=7;             %滤波器阶数清零


[b,a]=cheby2(N,Rs,2*fc/fs); 
Qcoe=12;
m=max(max(abs(a),abs(b)));
Qb=round(b/m*(2^(Qcoe-1)-1)) %四舍五入截尾
Qa=round(a/m*(2^(Qcoe-1)-1)) %四舍五入截尾
freqz(b,a,128,fs);