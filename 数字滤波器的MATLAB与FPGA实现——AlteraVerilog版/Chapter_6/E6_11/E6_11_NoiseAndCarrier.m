%E6_11_NoiseAndCarrier.M
function Q_s=E6_11_NoiseAndCarrier;

% fp=20;
% fs=25;
% F0=3200;
% Fout=50;
% dev=0.001;
% Q=12;
% D=log2(F0/Fout);
% devi=dev/D;

f1=10;       %信号1频率为10Hz
f2=25;       %信号2频率为25Hz
f3=400;      %信号3频率为40Hz
f4=1000;     %信号3频率为1000Hz
Fs=3200;     %采样频率为3200Hz
N=8;        %输入数据量化位数

%产生信号
t=0:1/Fs:100;
c1=2*pi*f1*t;
c2=2*pi*f2*t;
c3=2*pi*f3*t;
c4=2*pi*f4*t;
s1=sin(c1);%产生正弦波
s2=sin(c2);%产生正弦波
s3=sin(c3);%产生正弦波
s4=sin(c4);%产生正弦波
%产生随机序列信号
noise=randn(1,length(t));%产生高斯白噪声序列
s=s1+1*s2+1*s3+1*s4+0.0*noise;     %产生合成后的信号

%归一化处理
s=s/max(abs(s));
%10比特量化
Q_s=round(s*(2^(N-1)-1));

%将生成的数据以十进制数据格式写入txt文件中
fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_Int_Sin.txt','w');
fprintf(fid,'%8d\r\n',Q_s);
fprintf(fid,';'); 
fclose(fid);

%将生成的数据以二进制数据格式写入txt文件中
fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_Bin_Sin.txt','w');
for i=1:length(Q_s)
    B_noise=dec2bin(Q_s(i)+(Q_s(i)<0)*2^N,N);
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

