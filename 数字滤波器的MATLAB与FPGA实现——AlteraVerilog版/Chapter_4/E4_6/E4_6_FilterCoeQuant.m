%E4_6_FilterCoeQuant.M
function hn=E4_6_FilterCoeQuant;
fs=8000;         %采样频率
fc=[1000 1500];  %过渡带
mag=[0 1];       %窗函数的理想滤波器幅度
dev=[0.001 0.01]; %纹波
[n,wn,beta,ftype]=kaiserord(fc,mag,dev,fs)  %获取凯塞窗参数
fpm=[0 fc(1)*2/fs fc(2)*2/fs 1];  %firpm函数的频段向量
magpm=[0 0 1 1];                  %firpm函数的幅值向量
%设计最优滤波器
h_pm=firpm(n,fpm,magpm);
%滤波系数进行量化
h_pm12=round(h_pm/max(abs(h_pm))*(2^11-1));%12bit量化
h_pm14=round(h_pm/max(abs(h_pm))*(2^13-1));%14bit量化
hn=h_pm14;
%转换进制
% q12_bin_pm=dec2bin(h_pm12+2^12*(h_pm12<0),12);
% q14_bin_pm=dec2bin(h_pm14+2^14*(h_pm14<0),14);
% q12_hex_pm=dec2hex(h_pm12+2^12*(h_pm12<0));
q14_hex_pm=dec2hex(h_pm14+2^14*(h_pm14<0));
%求滤波器的幅频响应

%将生成的滤波器系数数据写入FPGA所需的文件中
%fid=fopen('D:\FilterVerilog\Chapter_4\E4_6\E4_6_hf10_14.txt','w');
fid=fopen('D:\E4_6_hf10_14.txt','w');
% fprintf(fid,'radix = 10;\r\n');
% fprintf(fid,'coefdata=\r\n');
fprintf(fid,'%8d\r\n',h_pm);fprintf(fid,';');
fclose(fid);



m_pm=20*log(abs(fft(h_pm,1024)))/log(10); m_pm=m_pm-max(m_pm);
m_pm12=20*log(abs(fft(h_pm12,1024)))/log(10); m_pm12=m_pm12-max(m_pm12);
m_pm14=20*log(abs(fft(h_pm14,1024)))/log(10); m_pm14=m_pm14-max(m_pm14);

%设置幅频响应的横坐标单位为Hz
x_f=[0:(fs/length(m_pm)):fs/2];
%只显示正频率部分的幅频响应
% m1=m_kaiser(1:length(x_f));
% m2=m_hamm(1:length(x_f));
mf_pm=m_pm(1:length(x_f));
mf_pm12=m_pm12(1:length(x_f));
mf_pm14=m_pm14(1:length(x_f));

%绘制幅频响应曲线
plot(x_f,mf_pm,'-',x_f,mf_pm12,'-.',x_f,mf_pm14,'--');
xlabel('频率(Hz)');ylabel('幅度(dB)');
legend('未量化','12位量化','14位量化');
grid;


