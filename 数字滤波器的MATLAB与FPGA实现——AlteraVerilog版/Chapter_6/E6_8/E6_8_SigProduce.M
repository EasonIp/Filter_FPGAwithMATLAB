%E6_8_SigProduce.M
%在FPGA上设计抽取倍数为5的抽取系统，采用5阶3级CIC滤波器作为抗混叠滤波器，并
%对抽取系统进行仿真测试。仿真频率分别为1KHz及40KHz的正弦波合成信号，采样频
%率为200KHz，位宽为10比特数据作为测试激励源。用Ｍatlab分析Modelsim仿真结果
function Q_si=E6_8_SigProduce;
%定义参数
f1=1000;       %信号频率为1KHz
f2=30000;      %信号频率为40KHz
Fs=200*f1;      %采样频率为200KHz
M=5;          %CIC滤波器阶数
D=M;          %抽取因子
C=3;          %滤波器级数
N=10;         %量化位数
%产生信号
t=0:1/Fs:0.02;
c1=2*pi*f1*t;
c2=2*pi*f2*t;
si=sin(c1)+sin(c2);%产生正弦波
si=si/max(abs(si));

%%%%%%%%%%%%%%%%%%%%%%%%%%
%3级积分器
a=[1 -1];
g1=filter(1,a,si); m1=max(si)
g2=filter(1,a,g1);m2=max(g1)
g=filter(1,a,g2);m3=max(g2)
                 m4=max(g)
%D倍抽取
Cg=g(1:D:length(t));
%3级梳状滤波
b=[1 -1];
Cg1=filter(b,1,Cg); m5=max(Cg1)
Cg2=filter(b,1,Cg1);m6=max(Cg2)
Cgh=filter(b,1,Cg2);m7=max(Cgh)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%绘出Matlab对正弦合成信号滤波前后的时域波形
figure(1);
x=0:1:1000;
x=x/Fs;
subplot(211);plot(x,si(1:length(x)));title('Matlab仿真滤波前信号波形');
x=x(1:D:length(x));
subplot(212);plot(x,Cgh(1:length(x)));title('Matlab仿真滤波后信号波形');

%将生成的数据以二进制数据格式写入txt文件中
Q_si=round(si*(2^(N-1)-1));%10比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_6\E6_8\dsin_in.txt','w');
for i=1:length(Q_si)
    B_si=dec2bin(Q_si(i)+(Q_si(i)<0)*2^N,N);
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
