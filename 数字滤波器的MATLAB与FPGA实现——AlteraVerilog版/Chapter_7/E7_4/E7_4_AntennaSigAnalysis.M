%E7_4_AntennaSigAnalysis.M

LEN=1000;
M=8;

%读取FPGA仿真出的误差数据
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_err_out.txt','r');
[err,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_eri_out.txt','r');
[eri,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
e=err.*err+eri.*eri;
e=e/max(e);
%读取FPGA仿真出的权值数据
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_w1r_out.txt','r');
[w1r,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
%MATLAB仿真出的误差数据
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_w1i_out.txt','r');
[w1i,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_w2r_out.txt','r');
[w2r,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
%MATLAB仿真出的误差数据
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_w2i_out.txt','r');
[w2i,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_w3r_out.txt','r');
[w3r,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
%MATLAB仿真出的误差数据
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_w3i_out.txt','r');
[w3i,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_w4r_out.txt','r');
[w4r,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
%MATLAB仿真出的误差数据
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\Antenna\simulation\modelsim\E7_4_w4i_out.txt','r');
[w4i,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);

w=[w1r(LEN*8-10)+w1i(LEN*8-10)*i;w2r(LEN*8-10)+w2i(LEN*8-10)*i;w3r(LEN*8-10)+w3i(LEN*8-10)*i;w4r(LEN*8-10)+w4i(LEN*8-10)*i]
w=w/(2^15);
%绘图
N=1:length(e);
subplot(211);
plot(e); title('FPGA仿真的误差收敛图');xlabel('数据长度');ylabel('归一化误差值');

f=zeros(1,360);
for k=1:360
    Ptheta=pi*sind(k-1)*i;
    x=[1;exp(-Ptheta);exp(-Ptheta*2);exp(-Ptheta*3)];
    f(k)=abs(w'*x);
end
Polarf=f/max(f);
Triag=20*log10(Polarf);
angle=0:359;
PolarAngle=angle*pi/180;
subplot(212);
plot(angle,Triag);
title('FPGA仿真权值所形成的直角坐标方向图(\theta=60,sjnr=-20db,snr=0db)');
xlabel('入射角度');
