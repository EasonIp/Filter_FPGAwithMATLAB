%E6_11_NoiseAndCarrierOut.M
% f1=200;        %信号1频率为200Hz
% f2=800;        %信号2频率为800Hz
 Fs=50;       %采样频率为2KHz
% N=12;          %量化位数


%从文本文件中读取数据
%滤波后的输出结果数据分别放在Noise_out和S_out变量中
 fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\MultiHalfBand\simulation\modelsim\Sout.txt','r');
[S_out,S_count]=fscanf(fid,'%lg',inf)
fclose(fid);

%归一化处理
S_out=S_out/max(abs(S_out));

%求信号的幅频响应
%out_s=20*log(abs(fft(S_out)))/log(10); out_s=out_s-max(out_s);
out_s=20*log(abs(fft(S_out(S_count-63:S_count))))/log(10); out_s=out_s-max(out_s);
%设置幅频响应的横坐标单位为Hz
x_f=[0:(Fs/length(out_s)):Fs/2];
%只显示正频率部分的幅频响应
mf_s=out_s(1:length(x_f));
%绘制幅频响应曲线
subplot(211); 
plot(x_f,mf_s);
%axis([0 Fs/2 -100 3]);
xlabel('频率(Hz)');ylabel('幅度(dB)');title('FPGA仿真信号滤波后的频谱');
%legend('输入信号频谱','输出信号频谱','滤波器响应');
grid;
subplot(212); 
%绘制时域波形
%设置显示数据范围
t=0:1/Fs:100/Fs;t=t*1000; 
t_out_s=S_out(1:length(t));
plot(t,t_out_s);
xlabel('时间(ms)');ylabel('幅度');title('FPGA仿真信号滤波后的时域波形');


