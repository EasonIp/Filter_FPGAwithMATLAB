%E7_5_NotchFilter.m

len=4000; %数据长度
fs=4000;  %采样频率

t=1:len;t=t/fs;

%两个单频干扰信号的频率/参考信号的频率
f1=50;f2=10;
%生成4路参考信号
x1=cos(2*pi*f1.*t);x2=sin(2*pi*f1.*t);
x3=cos(2*pi*f2.*t);x4=sin(2*pi*f2.*t);
x=[x1;x2;x3;x4];

%生成干扰信号
J1=2*cos(2*pi*f1.*t+pi/3);
J2=2*sin(2*pi*f2.*t+pi/6);

%生成有用信号
s=cos(2*pi*400.*t); %频率为400Hz的单频信号
% s=rand(1,len);     %或者为：随机信号

%生成混有干扰信号的输入信号
d=J1+J2+s;

%LMS算法中间变量初始化
w=zeros(4,len+1);
w(:,1)=ones(4,1)/2;
e=zeros(1,len);
aw=zeros(4,len);
%LMS算法
for k=1:len
    y(k)=w(:,k)'*x(:,k);
    e(k)=d(k)-y(k);
    %aw(:,k)=2*(1/128)*x(:,k)*conj(e(k));     %LMS算法
    aw(:,k)=2*(1/128)*sign(x(:,k))*conj(e(k));%符号LMS算法
    w(:,k+1)=w(:,k)+aw(:,k);
end
% clc;
%求取LMS算法中间变时的最大绝对值
% mry=max(max(abs(real(y))))
% miy=max(max(abs(imag(y))))
% mre=max(max(abs(real(e))))
% mie=max(max(abs(imag(e))))
% mrw=max(max(abs(real(w))))
% miw=max(max(abs(imag(w))))
% md=max(d)

%绘图
disp_len=300;  %显示300个数据点
% disp_len=2000; %显示2000个数据点
ax=1:disp_len+1;
subplot(511);
plot(ax,s(len-disp_len:len));legend('有用信号');
subplot(512);
plot(ax,J1(len-disp_len:len));legend('50Hz的干扰信号');
subplot(513);
plot(ax,J2(len-disp_len:len));legend('10Hz的干扰信号');
subplot(514);
plot(ax,d(len-disp_len:len));legend('叠加干扰后的信号');
subplot(515);
plot(ax,e(len-disp_len:len));legend('滤除干扰后的信号');


%将输入数据分别写入外部文件文件（din_sin.txt，din_rand.txt）中
s=cos(2*pi*400.*t); %频率为400Hz的单频信号
%s=rand(1,len);     %或者为：随机信号
%生成混有干扰信号的输入信号
d=2*J1+2*J2+s;

%将产生输入数据16比特量化后，写入din_sin.txt文件中
Q=16;
f_s=d/max(abs(d));%归一化处理
Q_s=round(f_s*(2^(Q-1)-1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf
%Invalid file identifier
%请根据需要修改下面语句，以改变文件名及文件存放路径
fid=fopen('D:\FilterVerilog\Chapter_7\E7_5\din_sin.txt','w');
for k=1:length(Q_s)
    B_s=dec2bin(Q_s(k)+(Q_s(k)<0)*2^Q,Q);
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


%s=cos(2*pi*400.*t); %频率为400Hz的单频信号
s=rand(1,len);     %或者为：随机信号
%生成混有干扰信号的输入信号
d=2*J1+2*J2+s;

%将产生输入数据16比特量化后，写入din_rand.txt文件中
Q=16;
f_s=d/max(abs(d));%归一化处理
Q_s=round(f_s*(2^(Q-1)-1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf
%Invalid file identifier
%请根据需要修改下面语句，以改变文件名及文件存放路径
fid=fopen('D:\FilterVerilog\Chapter_7\E7_5\din_rand.txt','w');
for k=1:length(Q_s)
    B_s=dec2bin(Q_s(k)+(Q_s(k)<0)*2^Q,Q);
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

