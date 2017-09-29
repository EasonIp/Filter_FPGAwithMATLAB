function output=E7_4_AntennaSim
LEN=2000;
M=8;
JANGLE=60;
%for snr=-10:10:10 
     SNR=0;    
%for sjnr=-30:30  
    SJNR=-20;
    %根据E7_4_AntennaSigProduce函数获取天线阵元输入信号及参考信号
input=E7_4_AntennaSigProduce(SJNR,SNR,LEN,M,JANGLE);
x1=input(1,:)+input(2,:)*j;
x2=input(3,:)+input(4,:)*j;
x3=input(5,:)+input(6,:)*j;
x4=input(7,:)+input(8,:)*j;
r=input(9,:)+input(10,:)*j;
%r=input(9,:);
x=[x1;x2;x3;x4];
% x=floor(x*10^15)/10^15;
% r=floor(r*10^15)/10^15;
w=zeros(4,LEN*M+1);
w(:,1)=ones(4,1)/2;
e=zeros(1,LEN*M);
aw=zeros(4,LEN*M);
%LMS算法
for k=1:LEN*M
    y(k)=w(:,k)'*x(:,k);
    e(k)=r(k)-y(k);
    aw(:,k)=(1/64)*x(:,k)*conj(e(k));
    w(:,k+1)=w(:,k)+aw(:,k);
end
clc;
%求取LMS算法中间变时的最大绝对值
mry=max(max(abs(real(y))))
miy=max(max(abs(imag(y))))
mre=max(max(abs(real(e))))
mie=max(max(abs(imag(e))))
mrw=max(max(abs(real(w))))
miw=max(max(abs(imag(w))))


%绘图
%subplot(311);
subplot(211);
plot(e.*conj(e))
title('误差平方收敛图');xlabel('计算点数');

f=zeros(1,360);
for k=1:360
    Ptheta=pi*sind(k-1)*i;
    x=[1;exp(-Ptheta);exp(-Ptheta*2);exp(-Ptheta*3)];
    f(k)=abs(w(:,LEN*M-1)'*x);
end
Polarf=f/max(f);
Triag=20*log10(Polarf);

angle=0:359;
PolarAngle=angle*pi/180;
%subplot(312);
% polar(PolarAngle,Polarf);
% xlabel('权值所形成的极坐标方向图(\theta=45,sjnr=-30db,snr=-10db)');
%subplot(313);
subplot(212);
plot(angle,Triag);
title('权值所形成的直角坐标方向图(\theta=60,sjnr=-20db,snr=0db)');
xlabel('入射角度');