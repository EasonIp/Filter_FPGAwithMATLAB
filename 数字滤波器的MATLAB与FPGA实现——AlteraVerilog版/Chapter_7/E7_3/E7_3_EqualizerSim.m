%E7_3_EqualizerSim.m
%�Ի��ڷ���LMS�㷨������Ӧ���������з��档Ҫ��ֱ�����㷨�����ܷ��桢����FPGA��
%���õ������źš�����Ȩֵ��������������ݷ�Χ���������ܷ��棬Ҫ����治ͬ�������
%���¾�������ϵͳ���ܵĸ�����������治ͬ�ྶ���������¾�������ϵͳ���ܵĸ��������
%LMS�㷨�Ĳ�������Ϊ1/128����FPGA��ʵ������Ӧ�������㷨����������λ��Ϊ16λ��ϵͳ
%ʱ��Ϊ����Ƶ�ʵģ�����������FPGAʵ�ֺ�Ĳ��Է��档

len=20000;  %�������ݳ���
Tlen=2000;  %ѵ�����ݳ���
step=1/128;  %����LMS�㷨�Ĳ�������
N=7;        %�˲�������
s=zeros(1,len);  %���Դ����
s1=zeros(1,len); %��ŶྶԴ����
x=zeros(1,N);    %����˲����ӳ�����
w=ones(1,N);     %���Ȩֵ����
s=randsrc(1,len);%��������ֲ���Դ����
s1(2:len)=s(1:len-1);%����Դ���ݲ����ྶԴ����
%����ྶ����Ϊ0.1ʱ��������������ʹ�ϵ
p=0.1;
SNR=[0:10];
for db=1:length(SNR)
    s2=sqrt(1-p)*s+sqrt(p)*s1;  %���ݶྶ�������ӣ�������������
    s3=awgn(s2,db,'measured');  %���������Ϊdb�������ź�
    %����LMS�㷨
    for i=N:len
        x(1:N)=s3(i:-1:i-N+1);
        y(i)=x*w';
        e(i)=s(i-3)-y(i);
        w=w+2*step*sign(x)*e(i)';
        %����������������������
        if y(i)>0
            y1(i)=1;
        else
            y1(i)=-1;
        end
        %���δ�������⴦�������
        if s3(i)>0
            y2(i)=1;
        else
            y2(i)=-1;
        end
    end
    %ͳ���������
    errornum1=sum(y1(Tlen:end)~=s(Tlen-3:end-3));
    errornum2=sum(y2(Tlen:end)~=s(Tlen:end));
    %ͳ��������
    ber1(db)=errornum1/(len-Tlen);
    ber2(db)=errornum2/(len-Tlen);
end
%��ͼ
subplot(121);
semilogy(SNR,ber1,'+-',SNR,ber2,'-');
xlabel('�����(SNR)');ylabel('������');title('������������ʹ�ϵ(p=0.1)');
legend('�о�����','�޾�����');
%���������Ϊ10dBʱ���ྶ�����������ʵĹ�ϵ
db=10;
p=[0:0.05:1];
for m=1:length(p)
    s2=sqrt(1-m*0.05)*s+sqrt(m*0.05)*s1;
    s3=awgn(s2,db,'measured');
    for i=N:len
        x(1:N)=s3(i:-1:i-N+1);
        y(i)=x*w';
        e(i)=s(i-3)-y(i);
        w=w+2*step*sign(x)*e(i)'; 
        if y(i)>0
            y1(i)=1;
        else
            y1(i)=-1;
        end
        if s3(i)>0
            y2(i)=1;
        else
            y2(i)=-1;
        end
    end
    errornum1=sum(y1(Tlen:end)~=s(Tlen-3:end-3));
    errornum2=sum(y2(Tlen:end)~=s(Tlen:end));
    ber3(m)=errornum1/(len-Tlen);
    ber4(m)=errornum2/(len-Tlen);
end

subplot(122);
semilogy(p,ber3,'+-',p,ber4,'-');
xlabel('�ྶ���(P)');ylabel('������');title('�ྶ��������������ʹ�ϵ(SNR=10dB)');
legend('�о�����','�޾�����');
