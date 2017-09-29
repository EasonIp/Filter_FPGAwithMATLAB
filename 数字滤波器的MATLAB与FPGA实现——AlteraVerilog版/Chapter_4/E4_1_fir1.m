%E4_1_fir1.m�ļ���Դ����
N=41;      %�˲�������
fs=2000;   %����Ƶ��
%�����˲���������Ƶ��
fc_lpf=200;
fc_hpf=200;
fp_bandpass=[200 400];
fc_stop=[200 400];
%�Բ���Ƶ�ʵ�һ�룬��Ƶ�ʽ��й�һ������
wn_lpf=fc_lpf*2/fs;
wn_hpf=fc_hpf*2/fs;
wn_bandpass=fp_bandpass*2/fs;
wn_stop=fc_stop*2/fs;
%����fir1�������FIR�˲���
b_lpf=fir1(N-1,wn_lpf);
b_hpf=fir1(N-1,wn_hpf,'high');
b_bandpass=fir1(N-1,wn_bandpass,'bandpass');
b_stop=fir1(N-1,wn_stop,'stop');
%���˲����ķ�Ƶ��Ӧ
m_lpf=20*log(abs(fft(b_lpf)))/log(10);
m_hpf=20*log(abs(fft(b_hpf)))/log(10);
m_bandpass=20*log(abs(fft(b_bandpass)))/log(10);
m_stop=20*log(abs(fft(b_stop)))/log(10);
%���÷�Ƶ��Ӧ�ĺ�ӱ굥λΪHz
x_f=[0:(fs/length(m_lpf)):fs/2];  
%���Ƶ�λ������Ӧ
subplot(421);stem(b_lpf);xlabel('n');ylabel('h(n)');
title('��ͨ�˲����ĵ�λ������Ӧ','fontsize',8);
subplot(423);stem(b_hpf);xlabel('n');ylabel('h(n)');
title('��ͨ�˲����ĵ�λ������Ӧ','fontsize',8);
subplot(425);stem(b_bandpass);xlabel('n');ylabel('h(n)');
title('��ͨ�˲����ĵ�λ������Ӧ','fontsize',8);
subplot(427);stem(b_stop);xlabel('n');ylabel('h(n)');
title('�����˲����ĵ�λ������Ӧ','fontsize',8);
%���Ʒ�Ƶ��Ӧ����
subplot(422);plot(x_f,m_lpf(1:length(x_f)));xlabel('Ƶ��(Hz)','fontsize',8);ylabel('����(dB)','fontsize',8);
title('��ͨ�˲����ķ�Ƶ��Ӧ','fontsize',8);
subplot(424);plot(x_f,m_hpf(1:length(x_f)));xlabel('Ƶ��(Hz)','fontsize',8);ylabel('����(dB)','fontsize',8);
title('��ͨ�˲����ķ�Ƶ��Ӧ','fontsize',8);
subplot(426);plot(x_f,m_bandpass(1:length(x_f)));xlabel('Ƶ��(Hz)','fontsize',8);ylabel('����(dB)','fontsize',8);
title('��ͨ�˲����ķ�Ƶ��Ӧ','fontsize',8);
subplot(428);plot(x_f,m_stop(1:length(x_f)));xlabel('Ƶ��(Hz)','fontsize',8);ylabel('����(dB)','fontsize',8);
title('�����˲����ķ�Ƶ��Ӧ','fontsize',8);