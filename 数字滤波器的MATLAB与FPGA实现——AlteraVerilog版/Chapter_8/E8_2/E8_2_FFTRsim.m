function E8_2_FFTRsim
%Transform domain filter
%length of pn code:127; code rate:500k;
%sample rate:8M; smaple times every chip:16;
%point of fft:256;
%frequency of noise: 100k;

b=fir1(101,0.5);
poly=[1 0 0 0 1 1 1 1];        %polynoimal of pn code producing
tpn=E8_2_PNCodeGenerator(poly);    %produce code with 4 smapling times by calling function fpncodegenerator
t_pn=[tpn,tpn];
point=256;
pn=zeros(756,point);
for i=1:756
    pn(i,:)=t_pn(i:i+point-1);       %pitch 256 point for fft
end
  
noise=randn(1,point);  %produce noise power=1w

ss=10;%snr=10dB
sn=1;
for i=1:756
    win(i,:)=(10*pn(i,:)+sn*noise).*hamming(point)';        %window pn code with hamming function
    z_pn(i,:)=fft(win(i,:));                                             %fft transform
    mode_pn(i,:)=(real(z_pn(i,:)).^2)+(imag(z_pn(i,:)).^2);              %calculate the amplitude 
    max_pn(i)=max(mode_pn(i,:));         %calculate the max value of amplitude
    mean_pn(i)=mean(mode_pn(i,:));
    d(i)=max_pn(i)/mean_pn(i);
end

ss=10;%snr=30dB
sn=1;
for i=1:756
    winx(i,:)=(10*pn(i,:)+sn*noise).*hamming(point)';;        %window pn code with hamming function
    z_pnx(i,:)=fft(winx(i,:));                                       %fft transform
    mode_pnx(i,:)=(real(z_pnx(i,:)).^2)+(imag(z_pnx(i,:)).^2);        %calculate the amplitude 
    max_pnx(i)=max(mode_pnx(i,:));         %calculate the max value of amplitude
    mean_pnx(i)=mean(mode_pnx(i,:));
    dx(i)=max_pnx(i)/mean_pnx(i);
end
subplot(121);
n=1:756;
plot(n,d,'-',n,dx,'+');xlabel('start point');ylabel('max/mean');
legend('SNR=10dB','SNR=30dB');

f=100000;       %信号频率为100KHz
Fs=4*10^6;      %采样频率为4MHz
t=0:1/Fs:(point-1)/Fs;
jam=sqrt(2)*sin(2*pi*f*t);       %产生功率为1W，频率为100KHz的单音干扰信号 
noise=sqrt(0.1)*randn(1,point);  %功率为0.1W的白噪声信号 

Aj=(0.1:0.1:10);
for i=1:length(Aj)
    z=(t_pn(1:point)+Aj(i)*jam+noise).*hamming(256)';
    mode_pn=real(fft(z)).^2+imag(fft(z)).^2;
    m(i)=max(mode_pn)/mean(mode_pn);
end
sjr=-10*log10(Aj);
theata=20*ones(1,length(Aj));

subplot(122);
plot(sjr,m,'-',sjr,theata,'-.');xlabel('信干比');ylabel('max/mean');
legend('max/mean(snr=10dB)','门限');




