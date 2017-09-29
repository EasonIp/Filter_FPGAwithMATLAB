%snr.m
%����2ASK,2FSK,2PSK,2DPSK���ź����������������
snr=4:0.1:12;
snrt=10.^(snr/10);
ask=0.5*erfc(sqrt(snrt/4));
fsk=0.5*erfc(sqrt(snrt/2));
psk=0.5*erfc(sqrt(snrt));
dpsk=erfc(sqrt(snrt));


semilogy(snr,ask,'+',snr,fsk,'.',snr,psk,'-',snr,dpsk,'--');grid on;
xlabel('Eb/N0');ylabel('������');
legend('ASK','FSK','PSK','DPSK');
