%E6_4_MultCIC.M
%��6-4��
%��Matlab���治ͬ���ȵ�5��CIC�˲�����Ƶ�����ԡ�

M=2;         %�˲�������
b=ones(1,M);
delta=[1,zeros(1,1023)];
s1=filter(b,1,delta);        %��ȡ�˲����弤��Ӧ
s2=filter(b,1,s1);           %��ȡ�˲����弤��Ӧ
s3=filter(b,1,s2);           %��ȡ�˲����弤��Ӧ
s4=filter(b,1,s3);           %��ȡ�˲����弤��Ӧ
s=filter(b,1,s4);            %��ȡ�˲����弤��Ӧ
Spec=20*log10(abs(fft(s))); %��ȡ�˲���Ƶ������
Spec2=Spec-max(Spec);
f=0:length(Spec)-1;
f=2*f/(length(Spec)-1);     %��Ƶ������й�һ������

M=5;         %�˲�������
b=ones(1,M);
delta=[1,zeros(1,1023)];
s1=filter(b,1,delta);        %��ȡ�˲����弤��Ӧ
s2=filter(b,1,s1);           %��ȡ�˲����弤��Ӧ
s3=filter(b,1,s2);           %��ȡ�˲����弤��Ӧ
s4=filter(b,1,s3);           %��ȡ�˲����弤��Ӧ
s=filter(b,1,s4);            %��ȡ�˲����弤��Ӧ
Spec=20*log10(abs(fft(s))); %��ȡ�˲���Ƶ������
Spec5=Spec-max(Spec);

M=7;         %�˲�������
b=ones(1,M);
delta=[1,zeros(1,1023)];
s1=filter(b,1,delta);        %��ȡ�˲����弤��Ӧ
s2=filter(b,1,s1);           %��ȡ�˲����弤��Ӧ
s3=filter(b,1,s2);           %��ȡ�˲����弤��Ӧ
s4=filter(b,1,s3);           %��ȡ�˲����弤��Ӧ
s=filter(b,1,s4);            %��ȡ�˲����弤��Ӧ
Spec=20*log10(abs(fft(s))); %��ȡ�˲���Ƶ������
Spec7=Spec-max(Spec);

M=8;         %�˲�������
b=ones(1,M);
delta=[1,zeros(1,1023)];
s1=filter(b,1,delta);        %��ȡ�˲����弤��Ӧ
s2=filter(b,1,s1);           %��ȡ�˲����弤��Ӧ
s3=filter(b,1,s2);           %��ȡ�˲����弤��Ӧ
s4=filter(b,1,s3);           %��ȡ�˲����弤��Ӧ
s=filter(b,1,s4);            %��ȡ�˲����弤��Ӧ
Spec=20*log10(abs(fft(s))); %��ȡ�˲���Ƶ������
Spec8=Spec-max(Spec);

% plot(f,Spec2,f,Spec5,f,Spec7,f,Spec8);axis([0 1 -50 0]);grid;
% xlabel('��һ��Ƶ��');ylabel('����(dB)');
% legend('��=��','��=5','��=7','��=8');
% grid;
plot(f,Spec2,'-',f,Spec5,'.',f,Spec8,'--');axis([0 1 -200 0]);
xlabel('��һ��Ƶ��');ylabel('����(dB)');
legend('��=2','��=5','��=8');
grid;