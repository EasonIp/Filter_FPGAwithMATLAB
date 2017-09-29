%E8_1_FFTSim.m
%����FFT�����Բ���FFT�㷨�����ź�Ƶ�׵�Ӱ�졣����Ƶ�ʷֱ�Ϊ2Hz��2.05Hz�����Ҳ��ϳ��źţ�����
%Ƶ�ʣ�10Hz�����ݣ�8-8��ʽ��Ҫʵ�ֱַ�������Ƶ�źŵ�Ŀ�ģ�DFT�����г��ȱ������� ���ֱ����3��
%����µ�FFT�任������ȡ ��128�����ݣ�����FFT��������128�� �Բ���ķ�ʽ�ӳ���512�㣬����FFT��
%3��ȡ512�� ������FFT��
f1=2; f2=2.05;%�������źŵ�Ƶ��
fs=10;        %����Ƶ��
%��128��ʱ�����н���FFT����
N=128;        %FFT�����ĵ���
n=0:N-1;
xn1=sin(2*pi*f1*n/fs)+sin(2*pi*f2*n/fs);%����128��ʱ���ź�����
XK1=fft(xn1);                           %���и���Ҷ�任�������й�һ������
MXK1=abs(XK1(1:N/2));
% MXK1=20*log10(abs(XK1(1:N/2)));
% MXK1=MXK1-max(MXK1);
%�Բ�����512��ʱ�����н���FFT����
M=512;
xn2=[xn1 zeros(1,M-N)];%��ʱ���ź����к���
XK2=fft(xn2);          %���и���Ҷ�任�������й�һ������
MXK2=abs(XK2(1:M/2));
%MXK2=20*log10(abs(XK2(1:M/2)));
%MXK2=MXK2-max(MXK2);
%��512��ʱ�����н���FFT����
n=0:M-1;
xn3=sin(2*pi*f1*n/fs)+sin(2*pi*f2*n/fs);%����128��ʱ���ź�����
XK3=fft(xn3);                           %���и���Ҷ�任�������й�һ������
MXK3=abs(XK3(1:M/2));
% MXK3=20*log10(abs(XK3(1:M/2)));
% MXK3=MXK3-max(MXK3);
%��ͼ
subplot(321);
x1=0:N-1; 
plot(x1,xn1);xlabel('n','fontsize',8);title('128��x(n)','fontsize',8);
subplot(322);
k1=(0:N/2-1)*fs/N;
plot(k1,MXK1);xlabel('f(Hz)','fontsize',8);title('128��xn��FFT�任','fontsize',8);
subplot(323);
x2=0:M-1; 
plot(x2,xn2);xlabel('n','fontsize',8);title('512�㲹��x(n)','fontsize',8);
subplot(324);
k2=(0:M/2-1)*fs/M;
plot(k2,MXK2);xlabel('f(Hz)','fontsize',8);title('512�㲹��xn��FFT�任','fontsize',8);
subplot(325);
plot(x2,xn3);xlabel('n','fontsize',8);title('512��x(n)','fontsize',8);
subplot(326);
plot(k2,MXK3);xlabel('f(Hz)','fontsize',8);title('512��xn��FFT�任','fontsize',8);
