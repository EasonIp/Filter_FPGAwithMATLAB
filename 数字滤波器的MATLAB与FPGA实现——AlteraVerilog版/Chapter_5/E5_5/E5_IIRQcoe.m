function hn=E5_IIRQcoe(Qcoe);
%E5_IIRQcoe.m
fs=2000;         %����Ƶ��
fc=500;         %�����ֹƵ��
Rs=60;           %���˥����dB��
N=7;             %�˲�����������


[b,a]=cheby2(N,Rs,2*fc/fs) 
m=max(max(abs(a),abs(b))); %��ȡ�˲���ϵ�������о���ֵ������
Qm=floor(log2(m/a(1)));    %ȡϵ�������ֵ��a(1)��������
if Qm<log2(m/a(1))
    Qm=Qm+1;
end
Qm=2^Qm;                      %��ȡ������׼ֵ            
Qb=round(b/Qm*(2^(Qcoe-1)-1)) %���������β
Qa=round(a/Qm*(2^(Qcoe-1)-1)) %���������β
delta=[1,zeros(1,1023)];
hn=filter(Qb,Qa,delta);
figure(1);freqz(b,a,1024,fs);
figure(2);freqz(Qb,Qa,1024,fs);