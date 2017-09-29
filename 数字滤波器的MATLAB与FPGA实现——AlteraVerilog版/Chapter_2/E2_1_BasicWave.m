%E2_1_BasicWave.m�ļ�Դ����
%Matlab�����źŲ���������ʾʵ������дһ��M�ļ������β������ȷֲ���������С���˹������������С������ź����С����ǲ��ź����С����Ҳ��ź����У�
%�Լ������SNRΪ10dB�ļ��Ը�˹�����������źš�

%�������������ǲ������Ҳ������ź�
%�������
Ps=10;       %�����źŹ���Ϊ10dBW
Pn=1;       %�����źŹ���Ϊ0dBW
f=100;       %�ź�Ƶ��Ϊ100Hz
Fs=1000;     %����Ƶ��Ϊ1KHz
width=0.5;   %����SAWTOOTH()�ĳ߶Ȳ���Ϊ0.5
duty=50;     %����SQUARE()�ĳ߶Ȳ���Ϊ50
%�����ź�
t=0:1/Fs:0.1;
c=2*pi*f*t;
sq=square(c,duty);%��������
tr=sawtooth(c,width);%�������ǲ�
si=sin(c);%�������Ҳ�

%������������ź�
noi=rand(1,length(t));%�������ȷֲ����������
noise=randn(1,length(t));%������˹����������

%�������м��Ը�˹�������������ź�����
sin_noise=sqrt(2*Ps)*si+sqrt(Pn)*noise;
sin_noise=sin_noise/max(abs(sin_noise));%��һ������

%��ͼ
subplot(321); plot(t,noi);   axis([0 0.1 -1.1 1.1]);
xlabel('ʱ��(s)','fontsize',8,'position',[0.08,-1.3,0]); ylabel('����(v)','fontsize',8);
title('���ȷֲ�����ź�','fontsize',8);

subplot(322); plot(t,noise); axis([0 0.1 -max(abs(noise)) max(abs(noise))]);
xlabel('ʱ��(s)','fontsize',8,'position',[0.08,-3.2,0]); ylabel('����(v)','fontsize',8);
title('��˹�������ź�','fontsize',8);

subplot(323); plot(t,sq);   axis([0 0.1 -1.1 1.1]);
xlabel('ʱ��(s)','fontsize',8,'position',[0.08,-1.3,0]); ylabel('����(v)','fontsize',8);
title('�����ź�','fontsize',8);

subplot(324); plot(t,tr);   axis([0 0.1 -1.1 1.1]);
xlabel('ʱ��(s)','fontsize',8,'position',[0.08,-1.3,0]); ylabel('����(v)','fontsize',8);
title('���ǲ��ź�','fontsize',8);

subplot(325); plot(t,si);   axis([0 0.1 -1.1 1.1]);
xlabel('ʱ��(s)','fontsize',8,'position',[0.08,-1.3,0]); ylabel('����(v)','fontsize',8);
title('���Ҳ��ź�','fontsize',8);

subplot(326); plot(t,sin_noise); axis([0 0.1 -1.1 1.1]);
xlabel('ʱ��(s)','fontsize',8,'position',[0.08,-1.3,0]); ylabel('����(v)','fontsize',8);
title('SNR��10dB�����Ҳ��ź�','fontsize',8);

