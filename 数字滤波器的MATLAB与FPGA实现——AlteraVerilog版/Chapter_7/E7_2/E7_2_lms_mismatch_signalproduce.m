% E7_2_lms_mismatch_signalproduce.m
%%%%%%


u=1/64;
snr=-10;
output=E7_2_lms_mismatch_in(snr);
r=output(2,:);
x=output(3,:);
w=zeros(1,length(x)+1);w(1)=1;%初始权值为1
e=zeros(1,length(x)+1);
y=zeros(1,length(x)+1);
%LMS通道失配算法
for n=1:length(x)
   y(n)=w(n)'*x(n);
   e(n)=r(n)-y(n);
   w(n+1)=w(n)+2*u*e(n)'*x(n);
end
Square_e=abs(e).^2;

t=1:length(w);
subplot(211);
plot(t,imag(w),'-',t,real(w),'-.');
title('MATLAB仿真的权值收敛图');
legend('MATLAB仿真的权值虚部','MATLAB仿真的权值实部');
subplot(212);
plot(Square_e);title('MATLAB仿真的误差收敛图');
