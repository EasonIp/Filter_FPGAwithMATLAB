%E6_10_HalfFilterMatlab.M
%利用Matlab提供的firhalfband函数设计阶数为16、通阻带容限为0.0001的半带滤波器。
%仿真测试滤波前后的信号时域图，绘制滤波器的频率响应特性图。
%定义参数
f=1000;        %信号频率为1KHz
Fs=40*f;       %采样频率为20KHz
n=16;          %半带滤波器阶数
D=2;           %抽取因子
dev=0.0001;    %通阻带容限

%%产生正弦波信号
t=0:1/Fs:0.02;
c=2*pi*f*t;
si=sin(c);    

%设计半带滤波器
b=firhalfband(n,dev,'dev')
s=filter(b,1,si);    %对信号进行滤波
s=s/max(abs(s));     %归一化处理
Ds=s(1:D:length(t)); %对滤波后信号进行抽取
%绘图
figure(1);x=0:1:100;x=x/Fs;Dx=x(1:D:length(x));
subplot(211);stem(x,si(1:length(x)));title('Matlab仿真滤波前信号波形');
subplot(212);stem(Dx,Ds(1:length(Dx)));title('Matlab仿真滤波后信号波形');
figure(2);freqz(b);

% %将生成的数据以二进制数据格式写入txt文件中
% Q_si=round(si*(2^(N-1)-1));%10比特量化
% %新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
% %??? Error using ==> fprintf　。
% %Invalid file identifier -1.
% fid=fopen('D:\DuYong\Filter_VHDL\SigCIC\E6_7_sin_in.txt','w');
% for i=1:length(Q_si)
%     B_si=dec2bin(Q_si(i)+(Q_si(i)<0)*2^N,N)
%     for j=1:N
%        if B_si(j)=='1'
%            tb=1;
%        else
%            tb=0;
%        end
%        fprintf(fid,'%d',tb);  
%     end
%     fprintf(fid,'\r\n');
% end
% fprintf(fid,';'); 
% fclose(fid);