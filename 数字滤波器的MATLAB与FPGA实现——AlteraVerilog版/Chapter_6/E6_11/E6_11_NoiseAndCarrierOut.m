%E6_11_NoiseAndCarrierOut.M
% f1=200;        %�ź�1Ƶ��Ϊ200Hz
% f2=800;        %�ź�2Ƶ��Ϊ800Hz
 Fs=50;       %����Ƶ��Ϊ2KHz
% N=12;          %����λ��


%���ı��ļ��ж�ȡ����
%�˲�������������ݷֱ����Noise_out��S_out������
 fid=fopen('D:\FilterVerilog\Chapter_6\E6_11\MultiHalfBand\simulation\modelsim\Sout.txt','r');
[S_out,S_count]=fscanf(fid,'%lg',inf)
fclose(fid);

%��һ������
S_out=S_out/max(abs(S_out));

%���źŵķ�Ƶ��Ӧ
%out_s=20*log(abs(fft(S_out)))/log(10); out_s=out_s-max(out_s);
out_s=20*log(abs(fft(S_out(S_count-63:S_count))))/log(10); out_s=out_s-max(out_s);
%���÷�Ƶ��Ӧ�ĺ����굥λΪHz
x_f=[0:(Fs/length(out_s)):Fs/2];
%ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ
mf_s=out_s(1:length(x_f));
%���Ʒ�Ƶ��Ӧ����
subplot(211); 
plot(x_f,mf_s);
%axis([0 Fs/2 -100 3]);
xlabel('Ƶ��(Hz)');ylabel('����(dB)');title('FPGA�����ź��˲����Ƶ��');
%legend('�����ź�Ƶ��','����ź�Ƶ��','�˲�����Ӧ');
grid;
subplot(212); 
%����ʱ����
%������ʾ���ݷ�Χ
t=0:1/Fs:100/Fs;t=t*1000; 
t_out_s=S_out(1:length(t));
plot(t,t_out_s);
xlabel('ʱ��(ms)');ylabel('����');title('FPGA�����ź��˲����ʱ����');


