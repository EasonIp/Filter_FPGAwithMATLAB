%E4_2_windows.m文件的源代码

N=81;      %滤波器长度
fs=2000;   %采样频率
fc=200;    %低通滤波器的截止频率

%生成各种窗函数
w_rect=rectwin(N)';
w_hann=hann(N)';
w_hamm=hamming(N)';
w_blac=blackman(N)';
w_kais=kaiser(N,7.856)';

%采用fir1函数设计FIR滤波器
b_rect=fir1(N-1,fc*2/fs,w_rect);
b_hann=fir1(N-1,fc*2/fs,w_hann);
b_hamm=fir1(N-1,fc*2/fs,w_hamm);
b_blac=fir1(N-1,fc*2/fs,w_blac);
b_kais=fir1(N-1,fc*2/fs,w_kais);


%求滤波器的幅频响应
m_rect=20*log(abs(fft(b_rect,512)))/log(10);
m_hann=20*log(abs(fft(b_hann,512)))/log(10);
m_hamm=20*log(abs(fft(b_hamm,512)))/log(10);
m_blac=20*log(abs(fft(b_blac,512)))/log(10);
m_kais=20*log(abs(fft(b_kais,512)))/log(10);

%设置幅频响应的横坐标单位为Hz
x_f=[0:(fs/length(m_rect)):fs/2];
%只显示正频率部分的幅频响应
m1=m_rect(1:length(x_f));
m2=m_hann(1:length(x_f));
m3=m_hamm(1:length(x_f));
m4=m_blac(1:length(x_f));
m5=m_kais(1:length(x_f));

%绘制幅频响应曲线
plot(x_f,m1,'-',x_f,m2,'*',x_f,m3,'+',x_f,m4,'--',x_f,m5,'-.');
xlabel('频率(Hz)');ylabel('幅度(dB)');
legend('矩形窗','汉宁窗','海明窗','布拉克曼窗','凯塞窗');
grid;
