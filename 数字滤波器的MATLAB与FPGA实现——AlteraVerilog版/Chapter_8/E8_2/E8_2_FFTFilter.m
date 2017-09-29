function E8_2_FFTFilter
%������α������Ϊ500KHz����Ƶ�ź�����һ��Ƶ��Ϊ100KHz�ĵ������ţ����Ÿɱ�Ϊ0dB��
%�����Ϊ10dB������256��FFT/IFFT�任����%����Ϊ��������50%�ص����������� =20��
%��Ҫ������˲�ǰ���źŵ�Ƶ�׼�ʱ���ź������ͬʱ��Ҫ�˲�����������������Ϊ12����
%���ݣ�������ⲿ�ı��ļ��У���Ϊ����FPGA������Ե�����Դ��
Fpoint=256;%fft�任�ĵ���Ϊ256
poly=[1 0 0 0 1 1 1 1];            %����PN��Ķ���ʽ
%���ݶ���ʽ����α�룬ͬʱ��α�����4������
%E8_2_PNCodeGeneratorΪ�Զ���ĺ��������ڹ����в鿴��������
pn1=E8_2_PNCodeGenerator(poly);    
window1=hamming(Fpoint)';          %����hamming��
%������ͬ���ȵ�α��PN������������window
pn=pn1;
window=window1;
for i=1:9
    pn=[pn,pn1];
end
PN=pn(1:floor(length(pn)/Fpoint)*Fpoint);
N=length(PN);
for i=1:N/Fpoint-1
    window=[window,window1];
end

%��������Ϊ1W��Ƶ��Ϊ100KHz�ĵ��������ź�
f=100000;       %�ź�Ƶ��Ϊ100KHz
Fs=4*10^6;      %����Ƶ��Ϊ4MHz
t=0:1/Fs:(N-1)/Fs;
jam=sqrt(2)*sin(2*pi*f*t);    

S=PN+jam;                          %����SJR=0dB�Ĳ����ź�
S2=[S(Fpoint/2+1:N),S(1:Fpoint/2)];%�������źŽ���50%�ص�

Data_length=length(S)  %�����ܳ���

WS=S.*window;     %�Ӵ�����
WS2=S2.*window;   %�Ӵ�����

%����·�Ӵ��źŽ��б任���˲�����
Fout=zeros(1,N);
for n=1:N/Fpoint
    FWS=fft(WS((n-1)*Fpoint+1:n*Fpoint));
    FWS2=fft(WS2((n-1)*Fpoint+1:n*Fpoint));
    AWS=abs(FWS).*abs(FWS);
    AWS2=abs(FWS2).*abs(FWS2);
    MAWS=sum(AWS)/Fpoint
    MAWS2=sum(AWS2)/Fpoint;
    for i=1:Fpoint
        if AWS(i)>(20*MAWS)
            FWS(i)=0;
        end;
        if AWS2(i)>(20*MAWS2)
            FWS2(i)=0;
        end;
    end;
    iS(((n-1)*Fpoint+1):n*Fpoint)=ifft(FWS); 
    iS2(((n-1)*Fpoint+1):n*Fpoint)=ifft(FWS2);
end
%���˲������·���ݽ����ص���������
Fout=iS+[iS2(N-Fpoint/2+1:N),iS2(1:N-Fpoint/2)];
%��ͼ
Fs=fft(S,256);as=abs(Fs);
%as=20*log10(as);as=as-max(as);
Fsout=fft(Fout,256);asout=abs(Fsout);
%asout=20*log10(asout);asout=asout-max(asout);
figure(1);%�����˲�ǰ���źŵ�Ƶ��ͼ
subplot(211);plot(as);xlabel('FFT�������');ylabel('��һ������(dB)');
legend('���Ӹ��ŵ�ԭʼ����Ƶ��(sjr=0dB)');
subplot(212);plot(asout);xlabel('FFT�������');ylabel('��һ������(dB)');
legend('�˲����ԭʼ����Ƶ��');
figure(2);%�����˲�ǰ���źŵ�ʱ����ͼ
p=1:200;
subplot(311);plot(p,PN(1:200)>0,'-',p,S(1:200)>0,'--',p,Fout(1:200)>0,'+');
axis([0 200 -0.2 1.2]);title('�о����κ������');xlabel('point');
legend('ԭʼ����','�˲�ǰ����','�˲�������');
subplot(312);plot(S(1:200));legend('���Ӹ��ŵ�ԭʼ����');xlabel('point');
subplot(313);plot(Fout(1:200));legend('�˲����ԭʼ����');xlabel('point');


%�������źŽ�����������д���ⲿ�ı��ļ��У���FPGA���Է���ʹ��
%12��������
Q=12;
S=S/max(abs(S));
Q_s=round(S*(2^(Q-1)-1));
fid=fopen('D:\FilterVerilog\Chapter_8\E8_2\E8_2_Bin_s.txt','w');
for i=1:length(Q_s)
    B_s=dec2bin(Q_s(i)+(Q_s(i)<0)*2^Q,Q);
    for j=1:Q
       if B_s(j)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
fprintf(fid,';'); 
fclose(fid);

%�������hamming��������������д���ⲿ�ļ��У���FPGAʹ��
%12��������
w=hamming(256);
Q=12;
S=w/max(abs(w));
Q_s=round(S*(2^(Q-1)-1));
fid=fopen('D:\FilterVerilog\Chapter_8\E8_2\TransformFilter\E8_2_window.mif','w');
fprintf(fid,'WIDTH=12;\r\n');
fprintf(fid,'DEPTH=256;\r\n'); 
fprintf(fid,'ADDRESS_RADIX = UNS;\r\n'); 
fprintf(fid,'DATA_RADIX = UNS;\r\n');
fprintf(fid,'CONTENT BEGIN\r\n'); 
for i=1:length(Q_s)
    fprintf(fid,'%10d : %10d;\r\n',i-1,Q_s(i)); 
end
fprintf(fid,'END;');
fclose(fid);


