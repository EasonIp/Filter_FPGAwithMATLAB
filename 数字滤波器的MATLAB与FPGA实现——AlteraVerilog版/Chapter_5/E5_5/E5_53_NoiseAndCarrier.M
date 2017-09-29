%E5_53_NoiseAndCarrier.M
function [Q_s,Q_noise]=E5_53_NoiseAndCarrier;
f1=200;       %信号1频率为200Hz
f2=800;       %信号2频率为800Hz
Fs=2000;      %采样频率为2KHz
N=12;          %输入数据量化位数

%产生信号
t=0:1/Fs:5;
c1=2*pi*f1*t;
c2=2*pi*f2*t;
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

%将生成的数据以十进制数据格式写入txt文件中
fid=fopen('D:\DuYong\Filter_VHDL\IIRCas\E5_5_Int_noise.txt','w');
fprintf(fid,'%8d\r\n',Q_noise);
fprintf(fid,';'); 
fclose(fid);

fid=fopen('D:\DuYong\Filter_VHDL\IIRCas\E5_5_Int_s.txt','w');
fprintf(fid,'%8d\r\n',Q_s);
fprintf(fid,';'); 
fclose(fid);

%将生成的数据以二进制数据格式写入txt文件中
fid=fopen('D:\DuYong\Filter_VHDL\IIRCas\E5_5_Bin_noise.txt','w');
for i=1:length(Q_noise)
    B_noise=dec2bin(Q_noise(i)+(Q_noise(i)<0)*2^N,N);
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

fid=fopen('D:\DuYong\Filter_VHDL\IIRCas\E5_5_Bin_s.txt','w');
for i=1:length(Q_s)
    B_s=dec2bin(Q_s(i)+(Q_s(i)<0)*2^N,N);
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



