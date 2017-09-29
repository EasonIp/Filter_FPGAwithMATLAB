%E7_2_lms_mismatch_SigAnalysis.M
%定义参数
Q=16;         %量化位数
%获取仿真测试输入信号
% Q_si=output=E7_2_lms_mismatch_in(snr);
% Q_si=Q_si/max(abs(Q_si));

%从文本文件中读取数据
%测试输出数据放在Cout变量中
Normal=2^(Q-1)-1;
fid=fopen('D:\DuYong\Filter_VHDL\MisMatch\E7_2_wr_out.txt','r');
[Cout,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
wr=Cout/Normal;

fid=fopen('D:\DuYong\Filter_VHDL\MisMatch\E7_2_wi_out.txt','r');
[Cout,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
wi=Cout/Normal;

fid=fopen('D:\DuYong\Filter_VHDL\MisMatch\E7_2_er_out.txt','r');
[Cout,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
er=Cout/Normal;

fid=fopen('D:\DuYong\Filter_VHDL\MisMatch\E7_2_ei_out.txt','r');
[Cout,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
ei=Cout/Normal;

length(er)
length(ei)
Se=er(1:length(ei)).*er(1:length(ei))+ei.*ei;
%length(wr)

x=1:4000;

subplot(211);
plot(x,wr(1:length(x)),'-',x,wi(1:length(x)),'-.');
title('FPGA仿真的权值收敛图');legend('FPGA仿真的权值虚部','FPGA仿真的权值实部');
subplot(212);plot(x,Se(1:length(x)));title('FPGA仿真的误差收敛图');
