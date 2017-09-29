%snr.m
%绘制2ASK,2FSK,2PSK,2DPSK的信号噪比与误码率曲线
snr=4:0.1:12;
snrt=10.^(snr/10);
ask=0.5*erfc(sqrt(snrt/4));
fsk=0.5*erfc(sqrt(snrt/2));
psk=0.5*erfc(sqrt(snrt));
dpsk=erfc(sqrt(snrt));


semilogy(snr,ask,'+',snr,fsk,'.',snr,psk,'-',snr,dpsk,'--');grid on;
xlabel('Eb/N0');ylabel('误码率');
legend('ASK','FSK','PSK','DPSK');
