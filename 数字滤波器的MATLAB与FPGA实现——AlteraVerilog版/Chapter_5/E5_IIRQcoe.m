%E5_IIRQcoe.m
fs=2000;         %����Ƶ��
fc=500;         %�����ֹƵ��
Rs=60;           %���˥����dB��
N=7;             %�˲�����������


[b,a]=cheby2(N,Rs,2*fc/fs); 
Qcoe=12;
m=max(max(abs(a),abs(b)));
Qb=round(b/m*(2^(Qcoe-1)-1)) %���������β
Qa=round(a/m*(2^(Qcoe-1)-1)) %���������β
freqz(b,a,128,fs);