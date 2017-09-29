%%E9_1_DPSKSignalProduce.m�����嵥
%DPSK����ϵͳ�У�ԭʼ�������� Ϊ4MHz������˳����˲���ϵ�������ն���ƵΪ
%70MHz����Ƶ����λ��Ϊ8λ��Ҫ������Ƶ���ֻ���ʵ��DPSK���ݽ����
ps=4*10^6;  %������Ϊ4MHz
fs=32*10^6; %��������Ϊ32MHz
fc=70*10^6; %�ز�Ƶ��Ϊ70MHz
fd=5.2*10^6;%���ݴ������
snr=100;     %�����=dB100/10/6
N=16000;    %�������ݵĳ���
t=0:1/fs:(N*fs/ps-1)/fs;
s=randn(1,N)>0; %�������������Ϊԭʼ����,����������任Ϊ�����
%s=ones(1,N);
ds=ones(1,N);
for i=2:N
    if s(i)==0 
        ds(i)=ds(i-1);
    else
        ds(i)=-ds(i-1);
    end
end
rcos=rcosflt(ds,ps,fs,'fir',0.8);%�����������˲�,���˲������fsƵ�ʲ���
rcosf=rcos(1:length(t));
f0=cos(2*pi*fc*t);         %����70MHz����Ƶ�ź�
dpsk=sqrt(2)*rcosf'.*f0;   %����DPSK�ѵ��ź� ����Ϊ0dBW
%noise=sqrt(fs/fd)*randn(1,length(t)); %����������ڹ���Ϊ0dBW�İ������ź�
%n_dpsk=dpsk+sqrt(10^(-snr/10))*noise; %���������Ϊsnr(dB)���ѵ��ź�
%snr=snr-10*log10(fs/fd);

n_dpsk=dpsk;      

%�����в�����Ƶ������˲�������������Լ38dB�������Ϊ6-3.6M~6+3.6M
fd=[800000 2400000 9600000 11200000];  %���ɴ�
mag=[0 1 0];             %�������������˲�������
dev=[0.05 0.015 0.05];      %�Ʋ�
[n,wn,beta,ftype]=kaiserord(fd,mag,dev,fs)  %��ȡ����������
b=fir1(n,wn,ftype,kaiser(n+1,beta));
f_s=filter(b,1,n_dpsk);%��Ƶ�˲����˲�
f_s=awgn(f_s,snr);



m_dpsk=20*log10(abs(fft(f_s,1024)));m_dpsk=m_dpsk-max(m_dpsk);
m_rcos=20*log10(abs(fft(rcosine(ps,fs,'fir',0.8),1024)));m_rcos=m_rcos-max(m_rcos);
m_kaiser=20*log10(abs(fft(b,1024)));
%���÷�Ƶ��Ӧ�ĺ����굥λΪHz
x_f=[0:(fs/length(m_kaiser)):fs/2];
%ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ
m1=m_kaiser(1:length(x_f));m2=m_dpsk(1:length(x_f));
m3=m_rcos(1:length(x_f));
%���Ʒ�Ƶ��Ӧ����
plot(x_f,m1,'-.',x_f,m2,'-',x_f,m3,'--');
legend('��Ƶ�˲���','��Ƶ������DPSK�ź�','�������˲���');
xlabel('Ƶ��(Hz)');ylabel('����(dB)');grid on;


%8����������Ƶ�����������ݣ���д���ⲿ�ı��ļ���
Q=8;
f_s=f_s/max(abs(f_s));%��һ������
Q_s=round(f_s*(2^(Q-1)-1));
fid=fopen('D:\FilterVerilog\Chapter_9\E9_1_snr100.txt','w');%//snr10/snr6
for i=1:length(Q_s)
    B_s=dec2bin(Q_s(i)+(Q_s(i)<0)*2^Q,Q);
    i;
    for j=1:Q
       if B_s(j)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
fprintf(fid,';'); 
fclose(fid);

