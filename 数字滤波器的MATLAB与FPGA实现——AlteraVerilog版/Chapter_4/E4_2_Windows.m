%E4_2_windows.m�ļ���Դ����

N=81;      %�˲�������
fs=2000;   %����Ƶ��
fc=200;    %��ͨ�˲����Ľ�ֹƵ��

%���ɸ��ִ�����
w_rect=rectwin(N)';
w_hann=hann(N)';
w_hamm=hamming(N)';
w_blac=blackman(N)';
w_kais=kaiser(N,7.856)';

%����fir1�������FIR�˲���
b_rect=fir1(N-1,fc*2/fs,w_rect);
b_hann=fir1(N-1,fc*2/fs,w_hann);
b_hamm=fir1(N-1,fc*2/fs,w_hamm);
b_blac=fir1(N-1,fc*2/fs,w_blac);
b_kais=fir1(N-1,fc*2/fs,w_kais);


%���˲����ķ�Ƶ��Ӧ
m_rect=20*log(abs(fft(b_rect,512)))/log(10);
m_hann=20*log(abs(fft(b_hann,512)))/log(10);
m_hamm=20*log(abs(fft(b_hamm,512)))/log(10);
m_blac=20*log(abs(fft(b_blac,512)))/log(10);
m_kais=20*log(abs(fft(b_kais,512)))/log(10);

%���÷�Ƶ��Ӧ�ĺ����굥λΪHz
x_f=[0:(fs/length(m_rect)):fs/2];
%ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ
m1=m_rect(1:length(x_f));
m2=m_hann(1:length(x_f));
m3=m_hamm(1:length(x_f));
m4=m_blac(1:length(x_f));
m5=m_kais(1:length(x_f));

%���Ʒ�Ƶ��Ӧ����
plot(x_f,m1,'-',x_f,m2,'*',x_f,m3,'+',x_f,m4,'--',x_f,m5,'-.');
xlabel('Ƶ��(Hz)');ylabel('����(dB)');
legend('���δ�','������','������','����������','������');
grid;
