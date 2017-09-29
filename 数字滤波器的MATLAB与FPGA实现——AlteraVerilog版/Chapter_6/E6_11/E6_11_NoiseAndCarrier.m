%E6_11_NoiseAndCarrier.M
function Q_s=E6_11_NoiseAndCarrier;

% fp=20;
% fs=25;
% F0=3200;
% Fout=50;
% dev=0.001;
% Q=12;
% D=log2(F0/Fout);
% devi=dev/D;

f1=10;       %�ź�1Ƶ��Ϊ10Hz
f2=25;       %�ź�2Ƶ��Ϊ25Hz
f3=400;      %�ź�3Ƶ��Ϊ40Hz
f4=1000;     %�ź�3Ƶ��Ϊ1000Hz
Fs=3200;     %����Ƶ��Ϊ3200Hz
N=8;        %������������λ��

%�����ź�
t=0:1/Fs:100;
c1=2*pi*f1*t;
c2=2*pi*f2*t;
c3=2*pi*f3*t;
c4=2*pi*f4*t;
s1=sin(c1);%�������Ҳ�
s2=sin(c2);%�������Ҳ�
s3=sin(c3);%�������Ҳ�
s4=sin(c4);%�������Ҳ�
%������������ź�
noise=randn(1,length(t));%������˹����������
s=s1+1*s2+1*s3+1*s4+0.0*noise;     %�����ϳɺ���ź�

%��һ������
s=s/max(abs(s));
%10��������
Q_s=round(s*(2^(N-1)-1));

%�����ɵ�������ʮ�������ݸ�ʽд��txt�ļ���
fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_Int_Sin.txt','w');
fprintf(fid,'%8d\r\n',Q_s);
fprintf(fid,';'); 
fclose(fid);

%�����ɵ������Զ��������ݸ�ʽд��txt�ļ���
fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\E6_11_Bin_Sin.txt','w');
for i=1:length(Q_s)
    B_noise=dec2bin(Q_s(i)+(Q_s(i)<0)*2^N,N);
    for j=1:N
       if B_noise(j)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
fprintf(fid,';'); 
fclose(fid);

