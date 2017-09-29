%E6_11_HfDesign.m
%��ĳһ�����źŴ���ϵͳ�У������źŲ���Ƶ��Ϊ3200��z������λ��Ϊ10���أ������źŵ�ͨ����ֹ
%Ƶ�� Ϊ20Hz�������ֹƵ��Ϊ25Hz��Ҫ���źŵĳ����ʼ�С��50Hz��ʹ�ö༶����˲���ʵ�ִ˳�
%ȡϵͳ��ϵͳ��ͨ�����޺�������޾�Ϊ0.001������FPGAʵ�ִ˳�ȡϵͳ����ʹ��Matlab�Գ�ȡϵͳ
%��ʵ�ֽ�����з�����ԡ�
fp=20;
fs=25;
F0=3200;
Fout=50;
dev=0.001;
Q=12;
D=log2(F0/Fout);
devi=dev/D;

%��ȡ��������˲����Ĺ�һ����ֹƵ��
fpi=zeros(1,D-1);
for i=1:D-1
    fpi(i)=fp*(2^i)/F0;
end
%��Ƹ�������˲���
b1=firhalfband('minorder',fpi(1),devi); L1=length(b1)
b2=firhalfband('minorder',fpi(2),devi); L2=length(b2)
b3=firhalfband('minorder',fpi(3),devi); L3=length(b3)
b4=firhalfband('minorder',fpi(4),devi); L4=length(b4)
b5=firhalfband('minorder',fpi(5),devi); L5=length(b5)

%����FIR�˲�����һ����Ʒ���������һ���˲���
%����kaiserord��ȡ��С�˲�������
%���ú���firpm��������˲���
fc=[20 25];mag=[1 0];devk=[devi,dev];
[n,wn,beta,ftype]=kaiserord(fc,mag,devk,Fout*2); %��ȡ���һ���˲����Ľ���
fpm=[0 fc(1)*2/Fout/2 fc(2)*2/Fout/2 1];         %firpm������Ƶ������
magpm=[1 1 0 0];                                 %firpm�����ķ�ֵ����
b6=firpm(n,fpm,magpm); L6=length(b6)
%�����˲���ϵ��
% Qb1=round(b1/max(abs(b1))*(2^(Q-1)-1));
% Qb2=round(b2/max(abs(b2))*(2^(Q-1)-1));
% Qb3=round(b3/max(abs(b3))*(2^(Q-1)-1));
% Qb4=round(b4/max(abs(b4))*(2^(Q-1)-1));
% Qb5=round(b5/max(abs(b5))*(2^(Q-1)-1));
% Qb6=round(b6/max(abs(b6))*(2^(Q-1)-1));
format long;

%�����ɵ��˲���ϵ������д��FPGA�����TXT�ļ���
fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf1.txt','w');
fprintf(fid,'%12.12f\r\n',b1);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf2.txt','w');
fprintf(fid,'%12.12f\r\n',b2);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf3.txt','w');
fprintf(fid,'%12.12f\r\n',b3);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf4.txt','w');
fprintf(fid,'%12.12f\r\n',b4);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf5.txt','w');
fprintf(fid,'%12.12f\r\n',b5);%fprintf(fid,';');
fclose(fid);

fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_hf6.txt','w');
fprintf(fid,'%12.12f\r\n',b6);%fprintf(fid,';');
fclose(fid);

%%%%%%%%%%%%%%%
%����������ݾ���ȡϵͳ����źŷ�Ƶ���Լ�ʱ����
Q_s=E6_11_NoiseAndCarrier;
F1=filter(b1,1,Q_s);s1=F1(1:2:length(F1));m1=max(abs(F1))/max(abs(Q_s))
F2=filter(b2,1,s1); s2=F2(1:2:length(F2));m2=max(abs(F2))/max(abs(s1))
F3=filter(b3,1,s2); s3=F3(1:2:length(F3));m3=max(abs(F3))/max(abs(s2))
F4=filter(b4,1,s3); s4=F4(1:2:length(F4));m4=max(abs(F4))/max(abs(s3))
F5=filter(b5,1,s4); s5=F5(1:2:length(F5));m5=max(abs(F5))/max(abs(s4))
F6=filter(b6,1,s5); s6=F6(1:2:length(F6));m6=max(abs(F6))/max(abs(s5))
sout=s6(100:length(s6));

%���Ƴ�ȡǰ���źŵ�Ƶ��ͼ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%���źŵķ�Ƶ��Ӧ
As=20*log(abs(fft(Q_s,1024)))/log(10); As=As-max(As);
Aout=20*log(abs(fft(sout,1024)))/log(10); Aout=Aout-max(Aout);
%���÷�Ƶ��Ӧ�ĺ����굥λΪHz
x_fs=[0:(F0/length(As)):F0/2];
%ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ
mf_s=As(1:length(x_fs));

%���÷�Ƶ��Ӧ�ĺ����굥λΪHz
x_fout=[0:(Fout/length(Aout)):Fout/2];
%ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ
mf_out=Aout(1:length(x_fout));

figure(1); 
subplot(211);
plot(x_fs,mf_s);
xlabel('Ƶ��(Hz)');ylabel('����(dB)');title('ԭʼ�źŵ�Ƶ��');grid;
subplot(212);
plot(x_fout,mf_out);
xlabel('Ƶ��(Hz)');ylabel('����(dB)');title('Matlab�����˲���ȡ���źŵ�Ƶ��');grid;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%���Ƴ�ȡǰ���źŵ�ʱ����
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Sin=Q_s/max(abs(Q_s));
Sout=sout/max(abs(sout));
Psin=Sin(1:1000);
Psout=Sout(1:40);
figure(2);
subplot(211);
plot(Psin);title('ԭʼ�źŵ�ʱ����');
subplot(212);
plot(Psout);;title('Matlab�����˲���ȡ���źŵ�ʱ����');