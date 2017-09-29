%E4_8_NoiseAndCarrierOut.M
f1=200;       %信号1频率为200Hz
f2=800;       %信号2频率为800Hz
Fs=2000;      %采样频率为2KHz
N=12;         %量化位数


%从文本文件中读取数据
%测试输入数据分别放在Noise_in和S_in变量中
fid=fopen('D:\FilterVerilog\Chapter_4\E4_8\FirParallel\simulation\modelsim\E4_8_Int_noise.txt','r');
[Noise_in,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_4\E4_8\FirParallel\simulation\modelsim\E4_8_Int_s.txt','r');
[S_in,S_n]=fscanf(fid,'%lg',inf);
fclose(fid)

%滤波后的输出结果数据分别放在Noise_out和S_out变量中
fid=fopen('D:\FilterVerilog\Chapter_4\E4_8\FirParallel\simulation\modelsim\E4_8_Noiseout.txt','r');
[Noise_out,N_count]=fscanf(fid,'%lg',inf);
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_4\E4_8\FirParallel\simulation\modelsim\E4_8_Sout.txt','r');
[S_out,S_count]=fscanf(fid,'%lg',inf);
fclose(fid);
N_count,S_count


%归一化处理
Noise_out=Noise_out/max(abs(Noise_out));
S_out=S_out/max(abs(S_out));
Noise_in=Noise_in/max(abs(Noise_in));
S_in=S_in/max(abs(S_in));

%求信号的幅频响应
out_noise=20*log(abs(fft(Noise_out,1024)))/log(10); out_noise=out_noise-max(out_noise);
out_s=20*log(abs(fft(S_out,1024)))/log(10); out_s=out_s-max(out_s);

in_noise=20*log(abs(fft(Noise_in,1024)))/log(10); in_noise=in_noise-max(in_noise);
in_s=20*log(abs(fft(S_in,1024)))/log(10); in_s=in_s-max(in_s);
%滤波器本身的幅频响应
hn=E4_8_Fir8Serial;
m_hn=20*log(abs(fft(hn,1024)))/log(10); m_hn=m_hn-max(m_hn);

%设置幅频响应的横坐标单位为Hz
x_f=[0:(Fs/length(out_noise)):Fs/2];
%只显示正频率部分的幅频响应
mf_noise=out_noise(1:length(x_f));
mf_s=out_s(1:length(x_f));
mf_in_noise=in_noise(1:length(x_f));
mf_in_s=in_s(1:length(x_f));
mf_hn=m_hn(1:length(x_f));
%绘制幅频响应曲线
figure(1);
subplot(211);
plot(x_f,mf_in_noise,'--',x_f,mf_noise,'-',x_f,mf_hn,'--');
xlabel('频率(Hz)');ylabel('幅度(dB)');title('FPGA仿真白噪声信号滤波前后的频谱');
legend('输入信号频谱','输出信号频谱','滤波器响应');
grid;
subplot(212);
plot(x_f,mf_in_s,'--',x_f,mf_s,'-',x_f,mf_hn,'--');
xlabel('频率(Hz)');ylabel('幅度(dB)');title('FPGA仿真合成单频信号滤波前后的频谱');
legend('输入信号频谱','输出信号频谱','滤波器响应');
grid;

%绘制时域波形
%设置显示数据范围
t=0:1/Fs:50/Fs;t=t*1000; 
t_in_noise=Noise_in(1:length(t));
t_in_s=S_in(1:length(t));
t_out_noise=Noise_out(1:length(t));
t_out_s=S_out(1:length(t));
figure(2);
subplot(211);
plot(t,t_in_noise,'--',t,t_out_noise,'-');
xlabel('时间(ms)');ylabel('幅度');title('FPGA仿真白噪声信号滤波前后的时域波形');
legend('输入信号波形','输出信号波形');
grid;
subplot(212);
plot(t,t_in_s,'--',t,t_out_s,'-');
xlabel('时间(ms)');ylabel('幅度');title('FPGA仿真合成单频信号滤波前后的时域波形');
legend('输入信号波形','输出信号波形');
grid;

