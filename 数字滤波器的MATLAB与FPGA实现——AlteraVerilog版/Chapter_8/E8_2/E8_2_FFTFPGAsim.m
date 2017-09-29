%E8_2_FFTFPGAsim.M
%���ı��ļ��ж�ȡ����
fid=fopen('D:\FilterVerilog\Chapter_8\E8_2\TransformFilter\simulation\modelsim\E8_2_dout.txt','r');
[dout,N]=fscanf(fid,'%lg',inf);
fclose(fid);

%��һ������
dout=dout/max(abs(dout));
%���źŵķ�Ƶ��Ӧ
Fdout=20*log(abs(fft(dout(2001:2256),256)))/log(10); Fdout=Fdout-max(Fdout);

%���Ʒ�Ƶ��Ӧ����
subplot(211)
plot(Fdout);
xlabel('FFT�������');ylabel('����(dB)');legend('FPGA�����ź��˲����Ƶ��');
grid;

%����ʱ����
%������ʾ���ݷ�Χ
subplot(212);
poly=[1 0 0 0 1 1 1 1];
pn=E8_2_PNCodeGenerator(poly)>0;
t=0:length(pn)-1; 
%ͨ�����棬�������λ�ã�ʹ�˲����������ԭʼ���ݶ��룬���ڱȽ�
pnd=[pn(271:4*127-1),pn(1:270)];
N=200-1;
t=0:N-1;
ff=1832+508*2;%����Ϊ����Ϊ127��PN�룬ÿ����Ƭ����4���㣬���ģ����������Ϊ508
filterout=(dout(ff+1:N+ff)>0)+0.1;
plot(t,filterout,'-',t,pnd(1:N),'-');
axis([0 N -0.2 1.2]);legend('FPGA�����˲�������','ԭʼ����');

title('FPGA�����ź��˲����ʱ����');

