%E7_3_EqualizerSigAnalysis.M
%�Ի��ڷ���LMS�㷨������Ӧ���������з��档Ҫ��ֱ�����㷨�����ܷ��桢����FPGA��
%���õ������źš�����Ȩֵ��������������ݷ�Χ���������ܷ��棬Ҫ����治ͬ�������
%���¾�������ϵͳ���ܵĸ�����������治ͬ�ྶ���������¾�������ϵͳ���ܵĸ��������
%LMS�㷨�Ĳ�������Ϊ1/128����FPGA��ʵ������Ӧ�������㷨����������λ��Ϊ16λ��ϵͳ
%ʱ��Ϊ����Ƶ�ʵ�6�����˲�������Ϊ7��������FPGAʵ�ֺ�Ĳ��Է��档
%FPGA��������������
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\Equalizer\simulation\modelsim\E7_3_Error_out.txt','r');
[Cout,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
error=Cout/max(abs(Cout));%��һ������
%MATLAB��������������
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\E7_3_e_out.txt','r');
[Cout,N_n]=fscanf(fid,'%lg',inf);
fclose(fid);
e=Cout/max(abs(Cout));;%��һ������

Error=error(1:length(error));
Se=e.^2;
Serror=Error.^2;
% Se=e;
% Serror=Error;
N=1:length(error);
subplot(211);plot(Serror); title('FPGA������������ͼ');xlabel('���ݳ���');ylabel('��һ�����ֵ');
subplot(212);plot(Se); title('MATLAB������������ͼ');xlabel('���ݳ���');ylabel('��һ�����ֵ');
