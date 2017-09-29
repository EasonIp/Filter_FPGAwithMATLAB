function output=E7_2_lms_mismatch_in(SNR)
%对基于LMS算法的通道失配校正模型进行仿真。要求分别进行算法的性能仿真、生成FPGA测试用的输入信号、仿真权值在运算过程中数据范围。对于性能仿真，要
%求仿真不同信噪比条件下校正前后的通道失配度改善情况，参考信号为叠加有噪声的随机方波信号。

N=4000; %数据仿真长度
Q=16;   %量化数据位数
output=zeros(3,N);
%%%%%%%%生成随机方波信号为注入原始信号%%%%%%%%%%%%%%%%%%%%%%%%%%%
rs=randn(1,N)>0;

%%%%%%产生2路互不相关的高斯噪声序列，仿真通过模拟信道的噪声%%%%%%%%
noise1=randn(1,N);              
noise2=randn(1,N);               

%%%%%%%%%%%%%%%%%%%%计算信干噪比所对应的增益比值%%%%%%%%%%%%%%%%%%
Gs=1;
Gn=Gs/(10^(SNR/20));
normal_gs=Gs/(Gs+Gn);
normal_gn=Gn/(Gs+Gn);

%%%%%%%%%%%%%%%%%%%产生混有声的正交参考注入信号%%%%%%%%%%%%%%%%%%
rn=(normal_gs*rs+normal_gn*noise1)+normal_gn*noise2*i;
%%%%%%%%%%%%%%%%%%产生失配信号作为FPGA测试输入信号%%%%%%%%%%%%%%%%
mis_amp=1.5;mis_ang=pi/4;
xn=rn.*((1+mis_amp)*exp(j*mis_ang));
%对参考信号及测试输入信号进行归一化处理
rr=real(rn);mrr=max(abs(rr));
ri=imag(rn);mri=max(abs(ri));
xr=real(xn);mxr=max(abs(xr));
xi=imag(xn);mxi=max(abs(xi));
m=max([mrr,mri,mxr,mxi])
rr=rr/m;ri=ri/m;xr=xr/m;xi=xi/m;
%将生成的数据以二进制数据格式写入txt文件中
Q_rr=round(rr*(2^(16-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_2\E7_2_rr_in.txt','w');
for k=1:length(Q_rr)
    B_si=dec2bin(Q_rr(k)+(Q_rr(k)<0)*2^Q,Q);
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

Q_ri=round(ri*(2^(16-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_2\E7_2_ri_in.txt','w');
for k=1:length(Q_ri)
    B_si=dec2bin(Q_ri(k)+(Q_ri(k)<0)*2^Q,Q);
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

Q_xr=round(xr*(2^(16-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_2\E7_2_xr_in.txt','w');
for k=1:length(Q_xr)
    B_si=dec2bin(Q_xr(k)+(Q_xr(k)<0)*2^Q,Q);
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

Q_xi=round(xi*(2^(16-1)-1));%16比特量化
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf　。
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_2\E7_2_xi_in.txt','w');
for k=1:length(Q_xi)
    B_si=dec2bin(Q_xi(k)+(Q_xi(k)<0)*2^Q,Q);
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
output(1,:)=rn;    %原始参考信号
output(2,:)=rr+ri*j;
output(3,:)=xr+xi*j;
