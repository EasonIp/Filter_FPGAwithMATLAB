%E4_6_FilterCoeQuant.M
function hn=E4_6_FilterCoeQuant;
fs=8000;         %����Ƶ��
fc=[1000 1500];  %���ɴ�
mag=[0 1];       %�������������˲�������
dev=[0.001 0.01]; %�Ʋ�
[n,wn,beta,ftype]=kaiserord(fc,mag,dev,fs)  %��ȡ����������
fpm=[0 fc(1)*2/fs fc(2)*2/fs 1];  %firpm������Ƶ������
magpm=[0 0 1 1];                  %firpm�����ķ�ֵ����
%��������˲���
h_pm=firpm(n,fpm,magpm);
%�˲�ϵ����������
h_pm12=round(h_pm/max(abs(h_pm))*(2^11-1));%12bit����
h_pm14=round(h_pm/max(abs(h_pm))*(2^13-1));%14bit����
hn=h_pm14;
%ת������
% q12_bin_pm=dec2bin(h_pm12+2^12*(h_pm12<0),12);
% q14_bin_pm=dec2bin(h_pm14+2^14*(h_pm14<0),14);
% q12_hex_pm=dec2hex(h_pm12+2^12*(h_pm12<0));
q14_hex_pm=dec2hex(h_pm14+2^14*(h_pm14<0));
%���˲����ķ�Ƶ��Ӧ

%�����ɵ��˲���ϵ������д��FPGA������ļ���
%fid=fopen('D:\FilterVerilog\Chapter_4\E4_6\E4_6_hf10_14.txt','w');
fid=fopen('D:\E4_6_hf10_14.txt','w');
% fprintf(fid,'radix = 10;\r\n');
% fprintf(fid,'coefdata=\r\n');
fprintf(fid,'%8d\r\n',h_pm);fprintf(fid,';');
fclose(fid);



m_pm=20*log(abs(fft(h_pm,1024)))/log(10); m_pm=m_pm-max(m_pm);
m_pm12=20*log(abs(fft(h_pm12,1024)))/log(10); m_pm12=m_pm12-max(m_pm12);
m_pm14=20*log(abs(fft(h_pm14,1024)))/log(10); m_pm14=m_pm14-max(m_pm14);

%���÷�Ƶ��Ӧ�ĺ����굥λΪHz
x_f=[0:(fs/length(m_pm)):fs/2];
%ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ
% m1=m_kaiser(1:length(x_f));
% m2=m_hamm(1:length(x_f));
mf_pm=m_pm(1:length(x_f));
mf_pm12=m_pm12(1:length(x_f));
mf_pm14=m_pm14(1:length(x_f));

%���Ʒ�Ƶ��Ӧ����
plot(x_f,mf_pm,'-',x_f,mf_pm12,'-.',x_f,mf_pm14,'--');
xlabel('Ƶ��(Hz)');ylabel('����(dB)');
legend('δ����','12λ����','14λ����');
grid;


