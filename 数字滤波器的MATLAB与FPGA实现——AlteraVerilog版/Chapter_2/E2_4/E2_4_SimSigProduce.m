%E2_4_SimSigProduce.m程序清单
%设置系统参数
fi=625000;					%输入信号的频率
fc=625000;					%本振信号的频率
Fs=5000000;					%采样频率
L=1024;						%数据长度
N=10;						%量化位数

%产生输入信号
t=0:1/Fs:(1/Fs)*(L-1);		%产生采样频率的时间序列
theta=rand()*2*pi;			%产生一个随机相位角度
si=sin(2*pi*fi*t+theta);	%生成具随机起始相位的正弦波输入信号
si=round(si*(2^(N-1)-1));	%10bit量化

%产生本振信号
sc=sin(2*pi*fc*t);			%生成本振信号
sc=round(sc*(2^(N-1)-1));	%10bit量化


%仿真混频输出并画图
so=si.*sc;						%混频器输出
sof=so-mean(so);				%混频器滤除直流分量后输出
fso=abs(fft(so,L));				%求FFT变换的幅度值
%归一化处理
sc=sc/max(abs(sc));				
si=si/max(abs(si));
so=so/max(abs(so));
sof=sof/max(abs(sof));
fso=fso/max(fso);
%转换成相对于原点对称的信号
fso=[fso(L/2+1:L),fso(1:L/2)];		
%画图
m=[-L/2:1:(L/2-1)]*Fs/L*(10^(-6));	%生成频率坐标轴,单位为MHz
t=t*(10^6);						    %生成时间坐标轴,单位为?s
subplot(221);plot(t(1:32),si(1:32));
title('10bit量化后的输入信号(a)','fontsize',8);
subplot(222);plot(t(1:32),so(1:32));
title('20bit量化后的混频输出信号(b)','fontsize',8);
subplot(223);plot(t(1:32),sof(1:32));
title('滤除直流分量后的混频输出信号(c)','fontsize',8);
subplot(224);plot(m,fso);
title('混频输出信号的幅频响应(d)','fontsize',8);

%将生成的输入正弦信号数据，写入外部文本文件(SinIn.txt)中
f_s=si/max(abs(si));%归一化处理
Q_s=round(f_s*(2^(N-1)-1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_2\E2_4\Mixer\simulation\modelsim\SinIn.txt','w');
for k=1:length(Q_s)
    B_s=dec2bin(Q_s(k)+(Q_s(k)<0)*2^N,N);
    %k;
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

