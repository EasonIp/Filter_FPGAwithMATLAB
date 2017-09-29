%E7_3_EqualizerSigProduce.m
%�Ի��ڷ���LMS�㷨������Ӧ���������з��档Ҫ��ֱ�����㷨�����ܷ��桢����FPGA��
%���õ������źš�����Ȩֵ��������������ݷ�Χ���������ܷ��棬Ҫ����治ͬ�������
%���¾�������ϵͳ���ܵĸ�����������治ͬ�ྶ���������¾�������ϵͳ���ܵĸ��������
%LMS�㷨�Ĳ�������Ϊ1/128����FPGA��ʵ������Ӧ�������㷨����������λ��Ϊ16λ��ϵͳ
%ʱ��Ϊ����Ƶ�ʵ�6�����˲�������Ϊ7��������FPGAʵ�ֺ�Ĳ��Է��档
clc
len=2000;   %�������ݳ���
step=1/128;  %����LMS�㷨�Ĳ�������
N=7;         %�˲�������
Q=16;        %����λ��   
p=0.1;       %�ྶ�������
SNR=10;      %�����
s=randsrc(1,len);    %��������ֲ���Դ����
s1=zeros(1,len);     %��ŶྶԴ����
s1(2:len)=s(1:len-1);%����Դ���ݲ����ྶԴ����
s2=sqrt(1-p)*s+sqrt(p)*s1;  %���ݶྶ�������ӣ�������������
s3=awgn(s2,SNR,'measured');  %���������ΪSNR�������ź�
maxs3=max(abs(s3));          %��һ������
maxs=max(abs(s));            %��һ������
m=max(maxs3,maxs)*1;
s3=s3/m;
s=s/m;

x=zeros(1,N);    %����˲����ӳ�����
w=ones(1,N);     %���Ȩֵ����
Mw=0;Me=0;       %������Ȩֵ���������ź�
%����ྶ����Ϊ0.1ʱ�������Ϊ10dBʱ�ľ�����
%����LMS�㷨
for i=N:len
    x(1:N)=s3(i:-1:i-N+1);
    y(i)=x*w';
    e(i)=s(i-3)-y(i);
    w=w+2*step*x*sign(e(i)');
    if max(abs(w))>Mw
        Mw=max(abs(w));
    end
    if max(abs(e))>Me
        Me=max(abs(e));
    end
end
% t=1:length(e);
% plot(t,abs(e).^2);
Mw
Me
My=max(abs(y))

%�����ɵ������Զ��������ݸ�ʽд��txt�ļ���
Q_r=round(s*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\E7_3_r_in.txt','w');
for k=1:length(Q_r)
    B_si=dec2bin(Q_r(k)+(Q_r(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
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

Q_x=round(s3*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\E7_3_x_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
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

%������ź�������д���ⲿ�ļ�����FPGA���Է��������жԱ�
Q_e=round(e*(2^(Q-1)-1));%16��������
fid=fopen('D:\FilterVerilog\Chapter_7\E7_3\E7_3_e_out.txt','w');
fprintf(fid,'%8d\r\n',Q_e);
fprintf(fid,';'); 
fclose(fid);