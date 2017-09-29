%E7_3_EqualizerSigProduce.m
%对基于符号LMS算法的自适应均衡器进行仿真。要求分别进行算法的性能仿真、生成FPGA测
%试用的输入信号、仿真权值在运算过程中数据范围。对于性能仿真，要求仿真不同信噪比条
%件下均衡器对系统性能的改善情况，仿真不同多径干扰条件下均衡器对系统性能的改善情况；
%LMS算法的步长因子为1/128。在FPGA上实现自适应均衡器算法，其中数据位数为16位、系统
%时钟为数据频率的6倍，滤波器长度为7，最后进行FPGA实现后的测试仿真。
clc
len=2000;   %仿真数据长度
step=1/128;  %符号LMS算法的步长因子
N=7;         %滤波器长度
Q=16;        %量化位数   
p=0.1;       %多径损耗因子
SNR=10;      %信噪比
s=randsrc(1,len);    %产生随机分布的源数据
s1=zeros(1,len);     %存放多径源数据
s1(2:len)=s(1:len-1);%根据源数据产生多径源数据
s2=sqrt(1-p)*s+sqrt(p)*s1;  %根据多径干扰因子，产生输入数据
s3=awgn(s2,SNR,'measured');  %产生信噪比为SNR的输入信号
maxs3=max(abs(s3));          %归一化处理
maxs=max(abs(s));            %归一化处理
m=max(maxs3,maxs)*1;
s3=s3/m;
s=s/m;

x=zeros(1,N);    %存放滤波器延迟数据
w=ones(1,N);     %存放权值数据
Mw=0;Me=0;       %存放最大权值及最大误差信号
%仿真多径干扰为0.1时，信噪比为10dB时的均衡器
%符号LMS算法
for i=N:len
    x(1:N)=s3(i:-1:i-N+1);
    y(i)=x*w';
    e(i)=s(i-3)-y(i);
    w=w+2*step*x*sign(e(i)');
    if max(abs(w))>Mw
        Mw=max(abs(w));
    end
    if max(abs(e))>Me
        Me=max(abs(e));
    end
end
% t=1:length(e);
% plot(t,abs(e).^2);
Mw
Me
My=max(abs(y))

%将生成的数据以二进制数据格式写入txt文件中
Q_r=round(s*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\E7_3_r_in.txt','w');
for k=1:length(Q_r)
    B_si=dec2bin(Q_r(k)+(Q_r(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
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

Q_x=round(s3*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\E7_3_x_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
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

%将误差信号量化后，写入外部文件，与FPGA测试仿真结果进行对比
Q_e=round(e*(2^(Q-1)-1));%16比特量化
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\E7_3_e_out.txt','w');
fprintf(fid,'%8d\r\n',Q_e);
fprintf(fid,';'); 
fclose(fid);