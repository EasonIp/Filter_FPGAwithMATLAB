%E5_1_IIR4Functions
fs=8000;         %����Ƶ��
fp=1000;         %ͨ����ֹƵ��
fc=2000;         %�����ֹƵ��
Rp=3;            %ͨ��˥����dB��
Rs=60;           %���˥����dB��
N=0;             %�˲�����������

%���������˹�˲�������С�˲�������
na=sqrt(10^(0.1*Rp)-1);
ea=sqrt(10^(0.1*Rs)-1);
N=ceil(log10(ea/na)/log10(fc/fp))

[Bb,Ba]=butter(N,fp*2/fs);       %������˹�˲���
[Eb,Ea]=ellip(N,Rp,Rs,fp*2/fs);  %��Բ�˲���
[C1b,C1a]=cheby1(N,Rp,fp*2/fs);  %�б�ѩ��I���˲���
[C2b,C2a]=cheby2(N,Rs,fp*2/fs);  %�б�ѩ��II���˲���
%yulewalk�˲���
f=[0 fp*2/fs fc*2/fs 1];
m=[1 1 0 0];
[Yb,Ya]=yulewalk(N,f,m);

%��ȡ��λ������Ӧ
delta=[1,zeros(1,511)];
fB=filter(Bb,Ba,delta);
fE=filter(Eb,Ea,delta);
fC1=filter(C1b,C1a,delta);
fC2=filter(C2b,C2a,delta);
fY=filter(Yb,Ya,delta);
%���˲����ķ�Ƶ��Ӧ
fB=20*log10(abs(fft(fB)));
fE=20*log10(abs(fft(fE)));
fC1=20*log10(abs(fft(fC1)));
fC2=20*log10(abs(fft(fC2)));
fY=20*log10(abs(fft(fY)));

 %���÷�Ƶ��Ӧ�ĺ����굥λΪHz
 x_f=[0:(fs/length(delta)):fs-1];
 plot(x_f,fB,'-',x_f,fE,'.',x_f,fC1,'-.',x_f,fC2,'+',x_f,fY,'*');
 %ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ
 axis([0 fs/2 -100 5]);    
 xlabel('Ƶ��(Hz)');ylabel('����(dB)');
 legend('butter','ellip','cheby1','cheby2','yulewalk');
 grid;


