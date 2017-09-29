%E2_4_FpgaSim.m
%����ϵͳ����
% fi=625000;  %�����źŵ�Ƶ��
% fc=625000;  %�����źŵ�Ƶ��
Fs=5000000; %����Ƶ��
L=256;  %���ݳ���
%���ı��ļ��ж�ȡ����
fid=fopen('D:\FilterVerilog\Chapter_2\E2_4\Mixer\simulation\modelsim\out.txt');
[FpgaOut,count]=fscanf(fid,'%d',inf);
fclose(fid);
fid=fopen('D:\FilterVerilog\Chapter_2\E2_4\Mixer\simulation\modelsim\oc.txt');
[FpgaOc,count]=fscanf(fid,'%d',inf);
fclose(fid);
%count
%ȡ��һ�����ݽ��м���
FpgaOut=FpgaOut(1:L)';%����������Ϊ��������ת����������
FpgaOc=FpgaOc(1:L)';
Fout=abs(fft(FpgaOut,L));  %��FFT�任�ķ���ֵ
%��һ������
FpgaOut=FpgaOut/max(abs(FpgaOut));
FpgaOc=FpgaOc/max(abs(FpgaOc));
Fout=Fout/max(Fout);
Fout=[Fout(L/2+1:L),Fout(1:L/2)]; %ת���������ԭ��ԳƵ��ź�
%����ʱ�估Ƶ��������
t=[0:L-1];                        %����ʱ��������,��λΪus 
t=t*(1/Fs)*(10^6);
m=[-L/2:1:(L/2-1)]*Fs/L*(10^(-6));%����Ƶ��������,��λΪMHz
%��ͼ
subplot(311);plot(t(1:32),FpgaOc(21:52));
xlabel('ʱ��(us)','fontsize',8,'position',[6.5,-1.2,0]); ylabel('����','fontsize',8);
title('DDS�����ı����ź�(a)','fontsize',8);

subplot(312);plot(t(1:32),FpgaOut(21:52));
xlabel('ʱ��(us)','fontsize',8,'position',[6.5,-1.2,0]); ylabel('����','fontsize',8);
title('FPGA��Ƶ����ź�(b)','fontsize',8);

subplot(313);plot(m,Fout);
xlabel('Ƶ��(MHz)','fontsize',8,'position',[2.3,-0.3,0]); ylabel('����','fontsize',8);
title('FPGA��Ƶ����źŵķ�Ƶ��Ӧ(c)','fontsize',8);