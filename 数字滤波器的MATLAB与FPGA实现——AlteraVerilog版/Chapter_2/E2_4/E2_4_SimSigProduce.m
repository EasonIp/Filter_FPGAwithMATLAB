%E2_4_SimSigProduce.m�����嵥
%����ϵͳ����
fi=625000;					%�����źŵ�Ƶ��
fc=625000;					%�����źŵ�Ƶ��
Fs=5000000;					%����Ƶ��
L=1024;						%���ݳ���
N=10;						%����λ��

%���������ź�
t=0:1/Fs:(1/Fs)*(L-1);		%��������Ƶ�ʵ�ʱ������
theta=rand()*2*pi;			%����һ�������λ�Ƕ�
si=sin(2*pi*fi*t+theta);	%���ɾ������ʼ��λ�����Ҳ������ź�
si=round(si*(2^(N-1)-1));	%10bit����

%���������ź�
sc=sin(2*pi*fc*t);			%���ɱ����ź�
sc=round(sc*(2^(N-1)-1));	%10bit����


%�����Ƶ�������ͼ
so=si.*sc;						%��Ƶ�����
sof=so-mean(so);				%��Ƶ���˳�ֱ�����������
fso=abs(fft(so,L));				%��FFT�任�ķ���ֵ
%��һ������
sc=sc/max(abs(sc));				
si=si/max(abs(si));
so=so/max(abs(so));
sof=sof/max(abs(sof));
fso=fso/max(fso);
%ת���������ԭ��ԳƵ��ź�
fso=[fso(L/2+1:L),fso(1:L/2)];		
%��ͼ
m=[-L/2:1:(L/2-1)]*Fs/L*(10^(-6));	%����Ƶ��������,��λΪMHz
t=t*(10^6);						    %����ʱ��������,��λΪ?s
subplot(221);plot(t(1:32),si(1:32));
title('10bit������������ź�(a)','fontsize',8);
subplot(222);plot(t(1:32),so(1:32));
title('20bit������Ļ�Ƶ����ź�(b)','fontsize',8);
subplot(223);plot(t(1:32),sof(1:32));
title('�˳�ֱ��������Ļ�Ƶ����ź�(c)','fontsize',8);
subplot(224);plot(m,fso);
title('��Ƶ����źŵķ�Ƶ��Ӧ(d)','fontsize',8);

%�����ɵ����������ź����ݣ�д���ⲿ�ı��ļ�(SinIn.txt)��
f_s=si/max(abs(si));%��һ������
Q_s=round(f_s*(2^(N-1)-1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_2\E2_4\Mixer\simulation\modelsim\SinIn.txt','w');
for k=1:length(Q_s)
    B_s=dec2bin(Q_s(k)+(Q_s(k)<0)*2^N,N);
    %k;
    for j=1:N
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

