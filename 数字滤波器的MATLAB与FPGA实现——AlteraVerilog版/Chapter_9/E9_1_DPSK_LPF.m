fs=32000000;
fd=[3600000 8400000];  %���ɴ�
mag=[1 0];             %�������������˲�������
dev=[0.01 0.01];      %�Ʋ�
[n,wn,beta,ftype]=kaiserord(fd,mag,dev,fs)  %��ȡ����������
b=fir1(n,wn,ftype,kaiser(n+1,beta));
freqz(b)


%�����ɵ��˲���ϵ������д��FPGA�����COE�ļ���
fid=fopen('D:\FilterVerilog\Chapter_9\E9_1_lpf.txt','w');
for i=1:length(s)
    fprintf(fid,'%32f\r\n',b(i));
   % fprintf('\r\n');
end
fclose(fid);