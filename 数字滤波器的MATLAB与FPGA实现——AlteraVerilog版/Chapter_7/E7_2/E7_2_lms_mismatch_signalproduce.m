% E7_2_lms_mismatch_signalproduce.m
%%%%%%


u=1/64;
snr=-10;
output=E7_2_lms_mismatch_in(snr);
r=output(2,:);
x=output(3,:);
w=zeros(1,length(x)+1);w(1)=1;%��ʼȨֵΪ1
e=zeros(1,length(x)+1);
y=zeros(1,length(x)+1);
%LMSͨ��ʧ���㷨
for n=1:length(x)
   y(n)=w(n)'*x(n);
   e(n)=r(n)-y(n);
   w(n+1)=w(n)+2*u*e(n)'*x(n);
end
Square_e=abs(e).^2;

t=1:length(w);
subplot(211);
plot(t,imag(w),'-',t,real(w),'-.');
title('MATLAB�����Ȩֵ����ͼ');
legend('MATLAB�����Ȩֵ�鲿','MATLAB�����Ȩֵʵ��');
subplot(212);
plot(Square_e);title('MATLAB������������ͼ');
