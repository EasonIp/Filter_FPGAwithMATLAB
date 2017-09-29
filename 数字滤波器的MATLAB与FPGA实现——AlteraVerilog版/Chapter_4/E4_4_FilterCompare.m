%E4_4_FilterCompare.M
fs=8000;         %����Ƶ��
fc=[1000 1500];  %���ɴ�
mag=[1 0];       %�������������˲�������
dev=[0.01 0.05]; %�Ʋ�
[n,wn,beta,ftype]=kaiserord(fc,mag,dev,fs)  %��ȡ����������
fpm=[0 fc(1)*2/fs fc(2)*2/fs 1];  %firpm������Ƶ������
magpm=[1 1 0 0];                  %firpm�����ķ�ֵ����

%��ƿ��������������˲���
h_kaiser=fir1(n,wn,ftype,kaiser(n+1,beta));
h_hamm=fir1(n,fc(2)*2/fs);
%��������˲���
h_pm=firpm(n,fpm,magpm);
%���˲����ķ�Ƶ��Ӧ
m_kaiser=20*log(abs(fft(h_kaiser,1024)))/log(10);
m_hamm=20*log(abs(fft(h_hamm,1024)))/log(10);
m_pm=20*log(abs(fft(h_pm,1024)))/log(10);

%���÷�Ƶ��Ӧ�ĺ����굥λΪHz
x_f=[0:(fs/length(m_kaiser)):fs/2];
%ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ
m1=m_kaiser(1:length(x_f));
m2=m_hamm(1:length(x_f));
m3=m_pm(1:length(x_f));
%���Ʒ�Ƶ��Ӧ����
plot(x_f,m1,'-',x_f,m2,'-.',x_f,m3,'--');
xlabel('Ƶ��(Hz)');ylabel('����(dB)');
legend('������','������','�����˲���');
grid;

