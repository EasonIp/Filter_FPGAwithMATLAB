%%E9_1_DPSKSignalProduce.m程序清单
%DPSK调制系统中，原始数据码率 为4MHz，发射端成形滤波器系数。接收端中频为
%70MHz，中频采样位数为8位，要求在中频数字化后实现DPSK数据解调。
ps=4*10^6;  %码速率为4MHz
fs=32*10^6; %采样速率为32MHz
fc=70*10^6; %载波频率为70MHz
fd=5.2*10^6;%数据处理带宽
snr=100;     %信噪比=dB100/10/6
N=16000;    %仿真数据的长度
t=0:1/fs:(N*fs/ps-1)/fs;
s=randn(1,N)>0; %产生随机数据作为原始数据,并将绝对码变换为相对码
%s=ones(1,N);
ds=ones(1,N);
for i=2:N
    if s(i)==0 
        ds(i)=ds(i-1);
    else
        ds(i)=-ds(i-1);
    end
end
rcos=rcosflt(ds,ps,fs,'fir',0.8);%进行升余弦滤波,且滤波后进行fs频率采样
rcosf=rcos(1:length(t));
f0=cos(2*pi*fc*t);         %产生70MHz的载频信号
dpsk=sqrt(2)*rcosf'.*f0;   %产生DPSK已调信号 功率为0dBW
%noise=sqrt(fs/fd)*randn(1,length(t)); %产生处理带内功率为0dBW的白噪声信号
%n_dpsk=dpsk+sqrt(10^(-snr/10))*noise; %产生信噪比为snr(dB)的已调信号
%snr=snr-10*log10(fs/fd);

n_dpsk=dpsk;      

%仿真中产生中频抗混叠滤波器，带外抑制约38dB，处理带为6-3.6M~6+3.6M
fd=[800000 2400000 9600000 11200000];  %过渡带
mag=[0 1 0];             %窗函数的理想滤波器幅度
dev=[0.05 0.015 0.05];      %纹波
[n,wn,beta,ftype]=kaiserord(fd,mag,dev,fs)  %获取凯塞窗参数
b=fir1(n,wn,ftype,kaiser(n+1,beta));
f_s=filter(b,1,n_dpsk);%中频滤波器滤波
f_s=awgn(f_s,snr);



m_dpsk=20*log10(abs(fft(f_s,1024)));m_dpsk=m_dpsk-max(m_dpsk);
m_rcos=20*log10(abs(fft(rcosine(ps,fs,'fir',0.8),1024)));m_rcos=m_rcos-max(m_rcos);
m_kaiser=20*log10(abs(fft(b,1024)));
%设置幅频响应的横坐标单位为Hz
x_f=[0:(fs/length(m_kaiser)):fs/2];
%只显示正频率部分的幅频响应
m1=m_kaiser(1:length(x_f));m2=m_dpsk(1:length(x_f));
m3=m_rcos(1:length(x_f));
%绘制幅频响应曲线
plot(x_f,m1,'-.',x_f,m2,'-',x_f,m3,'--');
legend('中频滤波器','中频采样的DPSK信号','升余弦滤波器');
xlabel('频率(Hz)');ylabel('幅度(dB)');grid on;


%8比特量化中频采样仿真数据，并写入外部文本文件中
Q=8;
f_s=f_s/max(abs(f_s));%归一化处理
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

