fs=32000000;
fd=[3600000 8400000];  %过渡带
mag=[1 0];             %窗函数的理想滤波器幅度
dev=[0.01 0.01];      %纹波
[n,wn,beta,ftype]=kaiserord(fd,mag,dev,fs)  %获取凯塞窗参数
b=fir1(n,wn,ftype,kaiser(n+1,beta));
freqz(b)


%将生成的滤波器系数数据写入FPGA所需的COE文件中
fid=fopen('D:\FilterVerilog\Chapter_9\E9_1_lpf.txt','w');
for i=1:length(s)
    fprintf(fid,'%32f\r\n',b(i));
   % fprintf('\r\n');
end
fclose(fid);