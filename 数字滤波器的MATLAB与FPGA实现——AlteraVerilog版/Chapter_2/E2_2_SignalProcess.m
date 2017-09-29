%E2_2_SignalProcess.m�ļ�Դ����
%Matlab�����źŷ�����������ʾʵ������дһ��M�ļ����ֱ���filter��impz������ȡָ����ɢϵͳ
%��b=[0.8 0.5 0.6]��a=[1 0.2 0.4 -0.8]���ĵ�λ������Ӧ����freqz������ȡϵͳ��Ƶ����Ӧ����
%����root��zplane������ȡϵͳ���㼫��ͼ�����档

L=128;             %��λ�������еĳ���
Fs=1000;           %����Ƶ��Ϊ1KHz
b=[0.8 0.5 0.6];        %ϵͳ�����ķ���ϵ������
a=[1 0.2 0.4 -0.8];     %ϵͳ�����ķ�ĸϵ������
delta=[1 zeros(1,L-1)]; %���ɳ���ΪL�ĵ�λ��������

FilterOut=filter(b,a,delta); %filter������ȡ��λ������Ӧ
ImpzOut=impz(b,a,L);         %impz������ȡ��λ������Ӧ 
[h,f]=freqz(b,a,L,Fs);       %freqz������Ƶ����Ӧ
mag=20*log(abs(h))/log(10);  %����ת����dB��λ    
ph=angle(h)*180/pi;          %��λֵ��λת��
zr=roots(b)  %��ϵͳ����㣬����ʾ�������
pk=roots(a)  %��ϵͳ�ļ��㣬����ʾ�������
g=b(1)/a(1)  %��ϵͳ�����棬����ʾ�������

%��ͼ
figure(1);
subplot(221);stem(FilterOut);
title('filter()��ȡ��λ������Ӧ','fontsize',8);
subplot(222);stem(ImpzOut);
title('impz()��ȡ��λ������Ӧ','fontsize',8);
subplot(223);plot(f,mag);
xlabel('Ƶ��(Hz)','fontsize',8);
ylabel('����(dB)','fontsize',8);
title('freqz()��Ƶ��Ӧ','fontsize',8);
subplot(224);plot(f,ph);
xlabel('Ƶ��(Hz)','fontsize',8);
ylabel('��λ(��)','fontsize',8);
title('freqz()��Ƶ��Ӧ','fontsize',8);
figure(2);
freqz(b,a); %��feqz��������ϵͳƵ����Ӧ
title('freqz()�Զ����Ƶ�Ƶ����Ӧͼ','fontsize',14);
figure(3);  
zplane(b,a);%��zplane��������ϵͳ�㼫��ͼ
title('zplane()�Զ����Ƶ�ϵͳ�㼫��ͼ','fontsize',14);