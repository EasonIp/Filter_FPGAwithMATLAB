%E4_7_NoiseAndCarrier.M
f1=200;       %信号1频率为200Hz
f2=800;       %信号2频率为800Hz
Fs=2000;      %采样频率为2KHz
N=12;         %量化位数
%Pn=Pn0*Fs/2; %噪声信号功率
%width=0.5;   %函数SAWTOOTH()的尺度参数为0.5
%duty=50;     %函数SQUQRE()的尺度参数为50
%产生信号
t=0:1/Fs:1;
c1=2*pi*f1*t;
c2=2*pi*f2*t;
%sq=square(c,duty);%产生方波
%tr=sawtooth(c,width);%产生三角波
s1=sin(c1);%产生正弦波
s2=sin(c2);%产生正弦波
s=s1+s2;   %产生两个单载波合成后的信号
%产生随机序列信号
noise=randn(1,length(t));%产生高斯白噪声序列

%归一化处理
noise=noise/max(abs(noise));
s=s/max(abs(s));

%12比特量化
Q_noise=round(noise*(2^(N-1)-1));
Q_s=round(s*(2^(N-1)-1));

%调用自已设计的滤波器函数对信号进行滤波
hn=E4_7_Fir8Serial;
Filter_noise=filter(hn,1,Q_noise);
Filter_s=filter(hn,1,Q_s);

%求信号的幅频响应
m_noise=20*log(abs(fft(Q_noise,1024)))/log(10); m_noise=m_noise-max(m_noise);
m_s=20*log(abs(fft(Q_s,1024)))/log(10); m_s=m_s-max(m_s);
%滤波后的幅频响应
Fm_noise=20*log(abs(fft(Filter_noise,1024)))/log(10); Fm_noise=Fm_noise-max(Fm_noise);
Fm_s=20*log(abs(fft(Filter_s,1024)))/log(10); Fm_s=Fm_s-max(Fm_s);
%滤波器本身的幅频响应
m_hn=20*log(abs(fft(hn,1024)))/log(10); m_hn=m_hn-max(m_hn);

%设置幅频响应的横坐标单位为Hz
x_f=[0:(Fs/length(m_s)):Fs/2];
%只显示正频率部分的幅频响应
mf_noise=m_noise(1:length(x_f));
mf_s=m_s(1:length(x_f));
Fmf_noise=Fm_noise(1:length(x_f));
Fmf_s=Fm_s(1:length(x_f));
Fm_hn=m_hn(1:length(x_f));

%绘制幅频响应曲线
subplot(211)
plot(x_f,mf_noise,'-.',x_f,Fmf_noise,'-',x_f,Fm_hn,'--');
xlabel('频率(Hz)');ylabel('幅度(dB)');title('Matlab仿真白噪声信号滤波前后的频谱');
legend('输入信号频谱','输出信号频谱','滤波器响应');
grid;

subplot(212)
plot(x_f,mf_s,'-.',x_f,Fmf_s,'-',x_f,Fm_hn,'--');
xlabel('频率(Hz)');ylabel('幅度(dB)');title('Matlab仿真合成单频信号滤波前后的频谱');
legend('输入信号频谱','输出信号频谱','滤波器响应');
grid;

%将生成的数据以十进制数据格式写入txt文件中
fid=fopen('D:\FilterVerilog\Chapter_4\E4_7\E4_7_Int_noise.txt','w');
fprintf(fid,'%8d\r\n',Q_noise);
fprintf(fid,';'); 
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_4\E4_7\E4_7_Int_s.txt','w');
fprintf(fid,'%8d\r\n',Q_s);
fprintf(fid,';'); 
fclose(fid);

%将生成的数据以二进制数据格式写入txt文件中
fid=fopen('D:\FilterVerilog\Chapter_4\E4_7\E4_7_Bin_noise.txt','w');
for i=1:length(Q_noise)
    B_noise=dec2bin(Q_noise(i)+(Q_noise(i)<0)*2^N,N)
    for j=1:N
       if B_noise(j)=='1'
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


fid=fopen('D:\FilterVerilog\Chapter_4\E4_7\E4_7_Bin_s.txt','w');
for i=1:length(Q_s)
    B_s=dec2bin(Q_s(i)+(Q_s(i)<0)*2^N,N)
    for j=1:N
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



