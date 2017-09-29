 function output=E7_4_AntennaSigProduce(SJNR,SNR,LEN,M,JANGLE)
 %产生天线阵元的输入信号
 %output为10行2032列矩阵,每行代表一条支路输入信号
 %依次为:r1,i1,r2,i2,r3,i3,r4,i4,rr,ir
 
 %&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
%产生天线阵元的输入信号
 tsign=randsrc(1,LEN);
 tjam=randsrc(1,LEN);
 sign=zeros(1,LEN*M);
 jam=zeros(1,LEN*M);
 for k=1:LEN                     %进行M倍采样
     sign(((k-1)*M+1):(k*M))=tsign(k);
     jam(((k-1)*M+1):(k*M))=tjam(k);
 end 
 
 %%%%%%%%%原始的信号和干扰经过FIR滤波器进行波形成形，以去掉带外的频谱%%%%%%%%%%%%%%%%%%%%%%%%%%%
 fn=2/M;              %归一化频率（1对应fs/2）
 b=fir1(80,fn);       %参考通道滤波器系数，系数个数为（n1＋1）
 sign_filter= filter(b,1,sign);      %经波形成形后的有用信号
 jam_filter= filter(b,1,jam);        %经波形成形后的干扰信号

 %%%%%%%%%%%产生45度入射的干扰信号%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u=pi*sin(JANGLE*(pi/180))*j;
 %jam1=jam_filter/max(abs(jam_filter));%归一化处理
 jam1=jam_filter;
 jam2=jam1*exp(-u);
 jam3=jam1*exp(-2*u);
 jam4=jam1*exp(-3*u);
 %sign=sign_filter/max(abs(sign_filter));%归一化处理
 sign=sign_filter;
 
%%%%%%%%%%%%%%%%%%%%产生8路互不相关的高斯噪声序列，加到四个通道的I、Q支路上%%%%%%%%%%%%%%%%%%%%%%%%%%%%
noise1=randn(1,LEN*M);              
noise2=randn(1,LEN*M);               
noise3=randn(1,LEN*M);              
noise4=randn(1,LEN*M);              
noise5=randn(1,LEN*M);               
noise6=randn(1,LEN*M);               
noise7=randn(1,LEN*M);               
noise8=randn(1,LEN*M);

%%%%%%%%%%%%%%%%%%%%计算信干噪比所对应的增益比值%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Gs=1;
Gn=10^(-SNR/20);
Gj=10^(-SJNR/20);

%%%%%%%%%%%%%%%%%%%输出天线阵元信号%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output=zeros(10,LEN*M);
output(1,:)=Gs*sign+Gn*noise1+Gj*real(jam1);
output(2,:)=Gn*noise2+Gj*imag(jam1);

output(3,:)=Gs*sign+Gn*noise3+Gj*real(jam2);
output(4,:)=Gn*noise4+Gj*imag(jam2);

output(5,:)=Gs*sign+Gn*noise5+Gj*real(jam3);
output(6,:)=Gn*noise6+Gj*imag(jam3);

output(7,:)=Gs*sign+Gn*noise7+Gj*real(jam4);
output(8,:)=Gn*noise8+Gj*imag(jam4);

output(9,:)=Gs*sign;
output(10,:)=zeros(1,LEN*M);
%%%%%%%%%归一化处理%%%%%%%%%%%%%%
m=max(max(abs(output)));
output(1,:)=output(1,:)/m;
output(2,:)=output(2,:)/m;
output(3,:)=output(3,:)/m;
output(4,:)=output(4,:)/m;
output(5,:)=output(5,:)/m;
output(6,:)=output(6,:)/m;
output(7,:)=output(7,:)/m;
output(8,:)=output(8,:)/m;
output(9,:)=output(9,:)/m;
output(10,:)=output(10,:)/m;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%将生成的数据以二进制数据格式写入txt文件中
Q=16;
Q_x=round(output(1,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x1r_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(2,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x1i_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(3,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x2r_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(4,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x2i_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(5,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x3r_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(6,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x3i_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(7,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x4r_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(8,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x4i_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);

Q_r=round(output(9,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_rr_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);

Q_r=round(output(10,:)*(2^(Q-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_ri_in.txt','w');
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
%fprintf(fid,';'); 
fclose(fid);