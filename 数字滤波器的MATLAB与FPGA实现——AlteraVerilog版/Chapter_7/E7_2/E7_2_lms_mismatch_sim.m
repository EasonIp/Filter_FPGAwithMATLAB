%E7_2_lms_mismatch_sim.m
%%%%%%
%%%%幅度失配

u=1/64;
snr=-10;
output=E7_2_lms_mismatch_in(snr);
x=output(1,:);
for i=1:15
    mis_amp=i*0.1;
    mis_ang=pi/4;
    mis=(1+mis_amp)*exp(j*mis_ang);
    xinput=x*mis;%input misptch signal
    w=zeros(1,length(x)+1);w(1)=1;
    e=zeros(1,length(x)+1);
    y=zeros(1,length(x)+1);
    for n=1:length(x)
       y(n)=w(n)'*xinput(n);
       e(n)=x(n)-y(n);
       w(n+1)=w(n)+u*e(n)'*x(n);
   end
   amp_10(i)=abs((1+mis_amp)*abs(w(length(x)))-1)
end

snr=0;
output=E7_2_lms_mismatch_in(snr);
x=output(1,:);
for i=1:15
    mis_amp=i*0.1;
    mis_ang=pi/4;
    mis=(1+mis_amp)*exp(j*mis_ang);
    xinput=x*mis;%input misptch signal
    w=zeros(1,length(x)+1);w(1)=1;
    e=zeros(1,length(x)+1);
    y=zeros(1,length(x)+1);
    for n=1:length(x)
       y(n)=w(n)'*xinput(n);
       e(n)=x(n)-y(n);
       w(n+1)=w(n)+u*e(n)'*x(n);
   end
   amp0(i)=abs((1+mis_amp)*abs(w(length(x)))-1)
end

snr=10;
output=E7_2_lms_mismatch_in(snr);
x=output(1,:);
for i=1:15
    mis_amp=i*0.1;
    mis_ang=pi/4;
    mis=(1+mis_amp)*exp(j*mis_ang);
    xinput=x*mis;%input misptch signal
    w=zeros(1,length(x)+1);w(1)=1;
    e=zeros(1,length(x)+1);
    y=zeros(1,length(x)+1);
    for n=1:length(x)
       y(n)=w(n)'*xinput(n);
       e(n)=x(n)-y(n);
       w(n+1)=w(n)+u*e(n)'*x(n);
   end
   amp10(i)=abs((1+mis_amp)*abs(w(length(x)))-1)
end




snr=-10;
output=E7_2_lms_mismatch_in(snr);
x=output(1,:);
for i=-6:6
    mis_amp=0.5;
    mis_ang=i*0.1*pi;
    mis=(1+mis_amp)*exp(j*mis_ang);
    xinput=x*mis;%input misptch signal
    w=zeros(1,length(x)+1);w(1)=1;
    e=zeros(1,length(x)+1);
    y=zeros(1,length(x)+1);
    for n=1:length(x)
       y(n)=w(n)'*xinput(n);
       e(n)=x(n)-y(n);
       w(n+1)=w(n)+u*e(n)'*x(n);
   end
   ang_10(i+7)=abs(angle(mis)-angle(w(length(x))))*180/pi;
end

snr=0;
output=E7_2_lms_mismatch_in(snr);
x=output(1,:);
for i=-6:6
    mis_amp=0.5;
    mis_ang=i*0.1*pi;
    mis=(1+mis_amp)*exp(j*mis_ang);
    xinput=x*mis;%input misptch signal
    w=zeros(1,length(x)+1);w(1)=1;
    e=zeros(1,length(x)+1);
    y=zeros(1,length(x)+1);
    for n=1:length(x)
       y(n)=w(n)'*xinput(n);
       e(n)=x(n)-y(n);
       w(n+1)=w(n)+u*e(n)'*x(n);
   end
   ang0(i+7)=abs(angle(mis)-angle(w(length(x))))*180/pi;
end

snr=10;
output=E7_2_lms_mismatch_in(snr);
x=output(1,:);
for i=-6:6
    mis_amp=0.5;
    mis_ang=i*0.1*pi;
    mis=(1+mis_amp)*exp(j*mis_ang);
    xinput=x*mis;%input misptch signal
    w=zeros(1,length(x)+1);w(1)=1;
    e=zeros(1,length(x)+1);
    y=zeros(1,length(x)+1);
    for n=1:length(x)
       y(n)=w(n)'*xinput(n);
       e(n)=x(n)-y(n);
       w(n+1)=w(n)+u*e(n)'*x(n);
   end
   ang10(i+7)=abs(angle(mis)-angle(w(length(x))))*180/pi;
   %ang10(i+7)=angle(w(length(x)))*180/pi;
end

len=1:15;
len=len*0.1;
subplot(211);plot(len,amp_10,'+',len,amp0,'-',len,amp10,'-.');legend('snr=-10dB','snr=0dB','snr=10db');
xlabel('校正前幅度失配度');ylabel('校正后幅度失配度');
grid;
len=-6:6;
len=len*18;
subplot(212);plot(len,ang_10,'+',len,ang0,'-',len,ang10,'-.');legend('snr=-10dB','snr=0dB','snr=10db');
xlabel('校正前相位失配度');ylabel('校正后相位失配度');

grid;
