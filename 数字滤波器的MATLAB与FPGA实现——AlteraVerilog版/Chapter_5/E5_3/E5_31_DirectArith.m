%E5_31_DirectArith.m;
fs=2000;         %����Ƶ��
fc=500;          %�����ֹƵ��
Rs=60;           %���˥����dB��
N=7;             %�˲�������
Qcoe=[8 12];         %�˲���ϵ���ֳ�
Qout=[12 24];         %�˲�������ֳ�
delta=[1,zeros(1,511)];       %��λ�弤�ź���Ϊ�����ź�
[b,a]=cheby2(N,Rs,2*fc/fs);   %����б�ѩ��II��IIR��ͨ�˲���
%���˲���ϵ����������,���������β
m=max(max(abs(a),abs(b)));
Qb8=round(b/m*(2^(Qcoe(1)-1)-1))
Qa8=round(a/m*(2^(Qcoe(1)-1)-1)) 
Qb12=round(b/m*(2^(Qcoe(2)-1)-1))
Qa12=round(a/m*(2^(Qcoe(2)-1)-1))

%�����������Ӧ
y=filter(b,a,delta);
%��������ķ�����Ӧ��E5_32_QuantIIRDirectArithΪ�Ա�ĸ���ϵ���������������λ������
%IIR�˲�������ĺ���
c8o12=E5_32_QuantIIRDirectArith(Qb8,Qa8,delta,Qcoe(1),Qout(1));
c8o24=E5_32_QuantIIRDirectArith(Qb8,Qa8,delta,Qcoe(1),Qout(2));
c12o12=E5_32_QuantIIRDirectArith(Qb12,Qa12,delta,Qcoe(2),Qout(1));
c12o24=E5_32_QuantIIRDirectArith(Qb12,Qa12,delta,Qcoe(2),Qout(2));

%���˲��������Ƶ��Ӧ
Fy=20*log10(abs(fft(y)));             Fy=Fy-max(Fy);
Fc8o12=20*log10(abs(fft(c8o12)));     Fc8o12=Fc8o12-max(Fc8o12);
Fc8o24=20*log10(abs(fft(c8o24)));     Fc8o24=Fc8o24-max(Fc8o24);
Fc12o12=20*log10(abs(fft(c12o12)));   Fc12o12=Fc12o12-max(Fc12o12);
Fc12o24=20*log10(abs(fft(c12o24)));   Fc12o24=Fc12o24-max(Fc12o24);

 %���÷�Ƶ��Ӧ�ĺ����굥λΪHz
 x_f=[0:(fs/length(delta)):fs-1];
 figure(1);
 plot(x_f,Fy,'-',x_f,Fc8o12,'.',x_f,Fc8o24,'-.');
 axis([0 fs/2 -100 5]); %ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ   
 xlabel('Ƶ��(Hz)');ylabel('����(dB)');
 legend('�������','8bitϵ����12��������������','8bitϵ��24��������������'); grid;
 figure(2);
 plot(x_f,Fy,'-',x_f,Fc12o12,'.',x_f,Fc12o24,'-.');
 axis([0 fs/2 -100 5]); %ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ   
 xlabel('Ƶ��(Hz)');ylabel('����(dB)');
 legend('�������','12bitϵ����12��������������','12bitϵ��24��������������'); grid;
 


 
