function E8_2_FFTFilter
%假设在伪码码率为500KHz的扩频信号中有一个频率为100KHz的单音干扰，且信干比为0dB，
%信噪比为10dB。采用256点FFT/IFFT变换，窗%函数为汉明窗，50%重叠，门限因子 =20。
%需要仿真出滤波前后信号的频谱及时域信号情况，同时需要滤波器的输入数据量化为12比特
%数据，存放在外部文本文件中，作为后续FPGA仿真测试的输入源。
Fpoint=256;%fft变换的点数为256
poly=[1 0 0 0 1 1 1 1];            %产生PN码的多项式
%根据多项式产生伪码，同时对伪码进行4倍采样
%E8_2_PNCodeGenerator为自定义的函数，请在光盘中查看函数代码
pn1=E8_2_PNCodeGenerator(poly);    
window1=hamming(Fpoint)';          %产生hamming窗
%生成相同长度的伪码PN及窗函数数据window
pn=pn1;
window=window1;
for i=1:9
    pn=[pn,pn1];
end
PN=pn(1:floor(length(pn)/Fpoint)*Fpoint);
N=length(PN);
for i=1:N/Fpoint-1
    window=[window,window1];
end

%产生功率为1W，频率为100KHz的单音干扰信号
f=100000;       %信号频率为100KHz
Fs=4*10^6;      %采样频率为4MHz
t=0:1/Fs:(N-1)/Fs;
jam=sqrt(2)*sin(2*pi*f*t);    

S=PN+jam;                          %产生SJR=0dB的测试信号
S2=[S(Fpoint/2+1:N),S(1:Fpoint/2)];%对输入信号进行50%重叠

Data_length=length(S)  %数据总长度

WS=S.*window;     %加窗处理
WS2=S2.*window;   %加窗处理

%对两路加窗信号进行变换域滤波处理
Fout=zeros(1,N);
for n=1:N/Fpoint
    FWS=fft(WS((n-1)*Fpoint+1:n*Fpoint));
    FWS2=fft(WS2((n-1)*Fpoint+1:n*Fpoint));
    AWS=abs(FWS).*abs(FWS);
    AWS2=abs(FWS2).*abs(FWS2);
    MAWS=sum(AWS)/Fpoint
    MAWS2=sum(AWS2)/Fpoint;
    for i=1:Fpoint
        if AWS(i)>(20*MAWS)
            FWS(i)=0;
        end;
        if AWS2(i)>(20*MAWS2)
            FWS2(i)=0;
        end;
    end;
    iS(((n-1)*Fpoint+1):n*Fpoint)=ifft(FWS); 
    iS2(((n-1)*Fpoint+1):n*Fpoint)=ifft(FWS2);
end
%对滤波后的两路数据进行重叠处理后输出
Fout=iS+[iS2(N-Fpoint/2+1:N),iS2(1:N-Fpoint/2)];
%绘图
Fs=fft(S,256);as=abs(Fs);
%as=20*log10(as);as=as-max(as);
Fsout=fft(Fout,256);asout=abs(Fsout);
%asout=20*log10(asout);asout=asout-max(asout);
figure(1);%绘制滤波前后信号的频谱图
subplot(211);plot(as);xlabel('FFT谱线序号');ylabel('归一化幅度(dB)');
legend('叠加干扰的原始数据频谱(sjr=0dB)');
subplot(212);plot(asout);xlabel('FFT谱线序号');ylabel('归一化幅度(dB)');
legend('滤波后的原始数据频谱');
figure(2);%绘制滤波前后信号的时域波形图
p=1:200;
subplot(311);plot(p,PN(1:200)>0,'-',p,S(1:200)>0,'--',p,Fout(1:200)>0,'+');
axis([0 200 -0.2 1.2]);title('判决整形后的数据');xlabel('point');
legend('原始数据','滤波前数据','滤波后数据');
subplot(312);plot(S(1:200));legend('叠加干扰的原始数据');xlabel('point');
subplot(313);plot(Fout(1:200));legend('滤波后的原始数据');xlabel('point');


%将输入信号进行量化，并写入外部文本文件中，供FPGA测试仿真使用
%12比特量化
Q=12;
S=S/max(abs(S));
Q_s=round(S*(2^(Q-1)-1));
fid=fopen('D:\FilterVerilog\Chapter_8\E8_2\E8_2_Bin_s.txt','w');
for i=1:length(Q_s)
    B_s=dec2bin(Q_s(i)+(Q_s(i)<0)*2^Q,Q);
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

%仿真产生hamming函数，且量化后写入外部文件中，供FPGA使用
%12比特量化
w=hamming(256);
Q=12;
S=w/max(abs(w));
Q_s=round(S*(2^(Q-1)-1));
fid=fopen('D:\FilterVerilog\Chapter_8\E8_2\TransformFilter\E8_2_window.mif','w');
fprintf(fid,'WIDTH=12;\r\n');
fprintf(fid,'DEPTH=256;\r\n'); 
fprintf(fid,'ADDRESS_RADIX = UNS;\r\n'); 
fprintf(fid,'DATA_RADIX = UNS;\r\n');
fprintf(fid,'CONTENT BEGIN\r\n'); 
for i=1:length(Q_s)
    fprintf(fid,'%10d : %10d;\r\n',i-1,Q_s(i)); 
end
fprintf(fid,'END;');
fclose(fid);


