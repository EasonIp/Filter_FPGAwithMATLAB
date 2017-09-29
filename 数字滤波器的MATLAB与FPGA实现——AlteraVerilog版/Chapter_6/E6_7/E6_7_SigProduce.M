%E6_7_SigProduce.M
%在FPGA上设计抽取倍数为5抽取系统，采用5阶CIC滤波器作为抗混叠滤波器，并
%对抽取系统进行仿真测试。仿真频率为1KHz的正弦波信号，采样频率为200KHz，位
%宽为10比特数据作为测试激励源。用Ｍatlab分析Modelsim仿真结果。
function Q_si=E6_7_SigProduce;
%定义参数
f=1000;       %信号频率为1KHz
Fs=200*f;     %采样频率为200KHz
M=5;          %CIC滤波器阶数
D=M;          %抽取因子
N=10;         %量化位数
%产生信号
t=0:1/Fs:0.02;
c=2*pi*f*t;
si=sin(c);%产生正弦波

b=ones(1,M);
s=filter(b,1,si);
Cs=s(1:D:length(t));
x=0:1:1000;
x=x/Fs;
subplot(211);plot(x,si(1:length(x)));title('Matlab仿真滤波前信号波形');
x=x(1:D:length(x));
subplot(212);plot(x,Cs(1:length(x)));title('Matlab仿真滤波后信号波形');

%将生成的数据以二进制数据格式写入txt文件中
Q_si=round(si*(2^(N-1)-1));%10比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_6\E6_7\sin_in.txt','w');
for i=1:length(Q_si)
    B_si=dec2bin(Q_si(i)+(Q_si(i)<0)*2^N,N)
    for j=1:N
       if B_si(j)=='1'
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