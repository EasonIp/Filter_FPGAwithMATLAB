%E3_3_QuantArith.m
x=[7/8 zeros(1,15)];
y=zeros(1,length(x));   %���ԭʼ������
B=2;                    %����λ��
Qy=zeros(1,length(x));   %�������������
Qy2=zeros(1,length(x));  %�������������
Qy4=zeros(1,length(x));  %�������������
Qy6=zeros(1,length(x));  %�������������

%ϵͳϵ��
A=0.5;
b=[1];
a=[1,A];

%δ�����������������
for i=1:length(x);
    if i==1
        y(i)=x(i);
    else
        y(i)=-A*y(i-1)+x(i);
    end
end

%�����������������
for i=1:length(x);
    if i==1
        Qy(i)=x(i);
        Qy(i)=round(Qy(i)*(2^(B-1)))/2^(B-1);
    else
        Qy(i)=-A*Qy(i-1)+x(i);
        Qy(i)=round(Qy(i)*(2^(B-1)))/2^(B-1);
    end
end
Qy2=Qy;

B=4;
%�����������������
for i=1:length(x);
    if i==1
        Qy(i)=x(i);
        Qy(i)=round(Qy(i)*(2^(B-1)))/2^(B-1);
    else
        Qy(i)=-A*Qy(i-1)+x(i);
        Qy(i)=round(Qy(i)*(2^(B-1)))/2^(B-1);
    end
end
Qy4=Qy;

B=6;
%�����������������
for i=1:length(x);
    if i==1
        Qy(i)=x(i);
        Qy(i)=round(Qy(i)*(2^(B-1)))/2^(B-1);
    else
        Qy(i)=-A*Qy(i-1)+x(i);
        Qy(i)=round(Qy(i)*(2^(B-1)))/2^(B-1);
    end
end
Qy6=Qy;

xa=0:1:length(x)-1;
plot(xa,y,'-',xa,Qy2,'--',xa,Qy4,'O',xa,Qy6,'+');
legend('ԭϵͳ������','2bit����������','4bit����������','6bit����������')
xlabel('�������');ylabel('�˲����');



