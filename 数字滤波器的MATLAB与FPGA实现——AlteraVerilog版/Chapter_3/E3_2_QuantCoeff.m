%E3_2_QuantCoeff.m
B=8;             %����λ��
Fs=1000;         %����Ƶ��
a=[1 1.7 0.745]; %ϵͳ����
b=[0.05];
Ps=roots(a);
[Ph,Pf]=freqz(b,a,1024,Fs);  %��Ƶ����Ӧ

%��һ������
c=[a b];
Max=max(abs(c));
a=a/Max;
b=b/Max;
%��β����
Ra=floor(a*(2^(B-1)-1));
Rb=floor(b*(2^(B-1)-1));
PRs=roots(Ra)
[PRh,PRf]=freqz(Rb,Ra,2048,Fs);  %��Ƶ����Ӧ

%PRmag=abs(PRh);  %����ת����dB��λ  
%Pmag=abs(Ph);    %����ת����dB��λ  
PRmag=20*log(abs(PRh))/log(10);  %����ת����dB��λ  
Pmag=20*log(abs(Ph))/log(10);    %����ת����dB��λ    
plot(Pf,Pmag,'-',PRf,PRmag,'--');
legend('ԭϵͳ��Ӧ','��bit���������Ӧ')
xlabel('Ƶ��(Hz)'); ylabel('����(dB)');
grid;


%zplane(Rb,Ra);
