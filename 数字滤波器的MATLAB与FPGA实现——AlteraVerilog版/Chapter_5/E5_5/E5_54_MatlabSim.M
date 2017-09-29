%E5_54_MatlabSim.M
%求取直接型IIR滤波器系数
[b,a]=cheby2(7,60,0.5);
%求取级联型IIR滤波器系数
[b0,B,A]=E5_51_dir2cas(b,a);
%量化级联型IIR滤波器系数
[Qb1,Qa1]=E5_52_Qcoe(b0*B(1,:),A(1,:),12)
[Qb2,Qa2]=E5_52_Qcoe(B(2,:),A(2,:),12)
[Qb3,Qa3]=E5_52_Qcoe(B(3,:),A(3,:),12)
[Qb4,Qa4]=E5_52_Qcoe(B(4,:),A(4,:),12)
%获取测试输入数据
[Q_s,Q_noise]=E5_53_NoiseAndCarrier;
%用级联型结构滤波器滤波
%对白噪声信号滤波
N1=filter(Qb1,Qa1,Q_noise);  
N2=filter(Qb2,Qa2,N1);       
N3=filter(Qb3,Qa3,N2);       
Nout=filter(Qb4,Qa4,N3);     
%对合成单频信号滤波
S1=filter(Qb1,Qa1,Q_s);      
S2=filter(Qb2,Qa2,S1);      
S3=filter(Qb3,Qa3,S2);       
Sout=filter(Qb4,Qa4,S3);     
%求取每级滤波器输出数据位宽
QN1=ceil(log2(max(abs(N1)))+1);
if 2^(QN1+1)==max(abs(N1))
    QN1=QN1+1;
end

QN2=ceil(log2(max(abs(N2)))+1);
if 2^(QN2+1)==max(abs(N2))
    QN2=QN2+1;
end
QN3=ceil(log2(max(abs(N3)))+1);
if 2^(QN3+1)==max(abs(N3))
    QN3=QN3+1;
end
QNout=ceil(log2(max(abs(Nout)))+1);
if 2^(QNout+1)==max(abs(Nout))
    QNout=QNout+1;
end

QS1=ceil(log2(max(abs(S1)))+1);
if 2^(QS1+1)==max(abs(S1))
    QS1=QS1+1;
end
QS2=ceil(log2(max(abs(S2)))+1);
if 2^(QS2+1)==max(abs(S2))
    QS2=QS2+1;
end
QS3=ceil(log2(max(abs(S3)))+1);
if 2^(QS3+1)==max(abs(S3))
    QS3=QS3+1;
end
QSout=ceil(log2(max(abs(Sout)))+1);
if 2^(QSout+1)==max(abs(Sout))
    QSout=QSout+1;
end
if QN1>QS1
    QS1=QN1
else
    QS1=QS1
end

if QN2>QS2
    QS2=QN2
else
    QS2=QS2
end

if QN3>QS3
    QS3=QN3
else
    QS3=QS3
end
if QNout>QSout
    QSout=QNout
else
    QSout=QSout
end
%%%%%%%%%%%%%%%%%%%%%%




%设置幅频响应的横坐标单位为Hz
Fs=2000;
x_f=[0:(Fs/length(Q_noise)):Fs/2];
%求幅频响应
FNin=20*log10(abs(fft(Q_noise))); FNin=FNin-max(FNin);
FNout=20*log10(abs(fft(Nout))); FNout=FNout-max(FNout);
FSin=20*log10(abs(fft(Q_s))); FSin=FSin-max(FSin);
FSout=20*log10(abs(fft(Sout))); FSout=FSout-max(FSout);
%绘制幅频响应曲线
FNin=FNin(1:length(x_f));
FNout=FNout(1:length(x_f));
FSin=FSin(1:length(x_f));
FSout=FSout(1:length(x_f));

subplot(211);
plot(x_f,FNout,'-',x_f,FNin,'--');
xlabel('频率(Hz)');ylabel('幅度(dB)');title('Matlab仿真白噪声信号滤波前后的频谱');
legend('输入信号频谱','输出信号频谱','滤波器响应');
grid;
subplot(212);
plot(x_f,FSout,'-',x_f,FSin,'--');
xlabel('频率(Hz)');ylabel('幅度(dB)');title('Matlab仿真合成单频信号滤波前后的频谱');
legend('输入信号频谱','输出信号频谱','滤波器响应');
grid;


%%%%%%%%%%
% figure(3);plot(N1);
% figure(4);plot(N2);
% figure(5);plot(N3);
% figure(6);plot(Nout);
% 
% [Qb,Qa]=E5_52_Qcoe(b,a,12);
% S=filter(Qb,Qa,Q_s);      QS=max(abs(S))
% N=filter(Qb,Qa,Q_noise);      QN=max(abs(N))
