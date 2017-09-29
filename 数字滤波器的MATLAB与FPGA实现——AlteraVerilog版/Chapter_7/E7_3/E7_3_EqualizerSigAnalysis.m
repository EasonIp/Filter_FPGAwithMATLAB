%E7_3_EqualizerSigAnalysis.M
%对基于符号LMS算法的自适应均衡器进行仿真。要求分别进行算法的性能仿真、生成FPGA测
%试用的输入信号、仿真权值在运算过程中数据范围。对于性能仿真，要求仿真不同信噪比条
%件下均衡器对系统性能的改善情况，仿真不同多径干扰条件下均衡器对系统性能的改善情况；
%LMS算法的步长因子为1/128。在FPGA上实现自适应均衡器算法，其中数据位数为16位、系统
%时钟为数据频率的6倍，滤波器长度为7，最后进行FPGA实现后的测试仿真。
%FPGA仿真出的误差数据
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\Equalizer\simulation\modelsim\E7_3_Error_out.txt','r');
[Cout,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
error=Cout/max(abs(Cout));%归一化处理
%MATLAB仿真出的误差数据
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\E7_3_e_out.txt','r');
[Cout,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
e=Cout/max(abs(Cout));;%归一化处理

Error=error(1:length(error));
Se=e.^2;
Serror=Error.^2;
% Se=e;
% Serror=Error;
N=1:length(error);
subplot(211);plot(Serror); title('FPGA仿真的误差收敛图');xlabel('数据长度');ylabel('归一化误差值');
subplot(212);plot(Se); title('MATLAB仿真的误差收敛图');xlabel('数据长度');ylabel('归一化误差值');
