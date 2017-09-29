%E3_2_QuantCoeff.m
B=8;             %量化位数
Fs=1000;         %采样频率
a=[1 1.7 0.745]; %系统函数
b=[0.05];
Ps=roots(a);
[Ph,Pf]=freqz(b,a,1024,Fs);  %求频率响应

%归一化处理
c=[a b];
Max=max(abs(c));
a=a/Max;
b=b/Max;
%截尾处理
Ra=floor(a*(2^(B-1)-1));
Rb=floor(b*(2^(B-1)-1));
PRs=roots(Ra)
[PRh,PRf]=freqz(Rb,Ra,2048,Fs);  %求频率响应

%PRmag=abs(PRh);  %幅度转换成dB单位  
%Pmag=abs(Ph);    %幅度转换成dB单位  
PRmag=20*log(abs(PRh))/log(10);  %幅度转换成dB单位  
Pmag=20*log(abs(Ph))/log(10);    %幅度转换成dB单位    
plot(Pf,Pmag,'-',PRf,PRmag,'--');
legend('原系统响应','８bit量化后的响应')
xlabel('频率(Hz)'); ylabel('幅度(dB)');
grid;


%zplane(Rb,Ra);
