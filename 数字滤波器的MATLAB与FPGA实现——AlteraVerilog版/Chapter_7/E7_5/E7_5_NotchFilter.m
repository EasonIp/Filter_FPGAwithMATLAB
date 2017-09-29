%E7_5_NotchFilter.m

len=4000; %���ݳ���
fs=4000;  %����Ƶ��

t=1:len;t=t/fs;

%������Ƶ�����źŵ�Ƶ��/�ο��źŵ�Ƶ��
f1=50;f2=10;
%����4·�ο��ź�
x1=cos(2*pi*f1.*t);x2=sin(2*pi*f1.*t);
x3=cos(2*pi*f2.*t);x4=sin(2*pi*f2.*t);
x=[x1;x2;x3;x4];

%���ɸ����ź�
J1=2*cos(2*pi*f1.*t+pi/3);
J2=2*sin(2*pi*f2.*t+pi/6);

%���������ź�
s=cos(2*pi*400.*t); %Ƶ��Ϊ400Hz�ĵ�Ƶ�ź�
% s=rand(1,len);     %����Ϊ������ź�

%���ɻ��и����źŵ������ź�
d=J1+J2+s;

%LMS�㷨�м������ʼ��
w=zeros(4,len+1);
w(:,1)=ones(4,1)/2;
e=zeros(1,len);
aw=zeros(4,len);
%LMS�㷨
for k=1:len
    y(k)=w(:,k)'*x(:,k);
    e(k)=d(k)-y(k);
    %aw(:,k)=2*(1/128)*x(:,k)*conj(e(k));     %LMS�㷨
    aw(:,k)=2*(1/128)*sign(x(:,k))*conj(e(k));%����LMS�㷨
    w(:,k+1)=w(:,k)+aw(:,k);
end
% clc;
%��ȡLMS�㷨�м��ʱ��������ֵ
% mry=max(max(abs(real(y))))
% miy=max(max(abs(imag(y))))
% mre=max(max(abs(real(e))))
% mie=max(max(abs(imag(e))))
% mrw=max(max(abs(real(w))))
% miw=max(max(abs(imag(w))))
% md=max(d)

%��ͼ
disp_len=300;  %��ʾ300�����ݵ�
% disp_len=2000; %��ʾ2000�����ݵ�
ax=1:disp_len+1;
subplot(511);
plot(ax,s(len-disp_len:len));legend('�����ź�');
subplot(512);
plot(ax,J1(len-disp_len:len));legend('50Hz�ĸ����ź�');
subplot(513);
plot(ax,J2(len-disp_len:len));legend('10Hz�ĸ����ź�');
subplot(514);
plot(ax,d(len-disp_len:len));legend('���Ӹ��ź���ź�');
subplot(515);
plot(ax,e(len-disp_len:len));legend('�˳����ź���ź�');


%���������ݷֱ�д���ⲿ�ļ��ļ���din_sin.txt��din_rand.txt����
s=cos(2*pi*400.*t); %Ƶ��Ϊ400Hz�ĵ�Ƶ�ź�
%s=rand(1,len);     %����Ϊ������ź�
%���ɻ��и����źŵ������ź�
d=2*J1+2*J2+s;

%��������������16����������д��din_sin.txt�ļ���
Q=16;
f_s=d/max(abs(d));%��һ������
Q_s=round(f_s*(2^(Q-1)-1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf
%Invalid file identifier
%�������Ҫ�޸�������䣬�Ըı��ļ������ļ����·��
fid=fopen('D:\FilterVerilog\Chapter_7\E7_5\din_sin.txt','w');
for k=1:length(Q_s)
    B_s=dec2bin(Q_s(k)+(Q_s(k)<0)*2^Q,Q);
    for j=1:Q
       if B_s(j)=='1'
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


%s=cos(2*pi*400.*t); %Ƶ��Ϊ400Hz�ĵ�Ƶ�ź�
s=rand(1,len);     %����Ϊ������ź�
%���ɻ��и����źŵ������ź�
d=2*J1+2*J2+s;

%��������������16����������д��din_rand.txt�ļ���
Q=16;
f_s=d/max(abs(d));%��һ������
Q_s=round(f_s*(2^(Q-1)-1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf
%Invalid file identifier
%�������Ҫ�޸�������䣬�Ըı��ļ������ļ����·��
fid=fopen('D:\FilterVerilog\Chapter_7\E7_5\din_rand.txt','w');
for k=1:length(Q_s)
    B_s=dec2bin(Q_s(k)+(Q_s(k)<0)*2^Q,Q);
    for j=1:Q
       if B_s(j)=='1'
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

