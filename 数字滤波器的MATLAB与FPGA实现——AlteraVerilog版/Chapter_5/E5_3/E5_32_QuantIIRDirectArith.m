function Qy=E5_32_QuantIIRDirectArith(Qb,Qa,din,Qcoe,Qout);
%ֱ����IIR�˲����ṹ������ϵ��������λ������
%a=ֱ���ͷ�ĸ����ʽϵ��
%b=ֱ���ͷ��Ӷ���ʽϵ��
%din������ԭʼ����
%Qcoe=IIR�˲���ϵ��������λ��
%Qy=IIR�˲������������λ��
%y=IIR�˲����������

%�˲���ϵ������
%y=zeros(1,length(din));
%�����������
Qy=zeros(1,length(din));
%m=max(max(abs(a),abs(b)));
%Qb=round(b/m*(2^(Qcoe-1)-1))/(2^(Qcoe-1)-1)*m;%���������β
%Qa=round(a/m*(2^(Qcoe-1)-1))/(2^(Qcoe-1)-1)*m;

%Qb=round(b/m*(2^(Qcoe-1)-1)); %���������β
%Qa=round(a/m*(2^(Qcoe-1)-1))
% Qb=Qb/Qa(1);%�����a(1)���й�һ��
% Qa=Qa/Qa(1);%�����a(1)���й�һ��
% a
% b


%����ֱ����ʽ��ȡ�����˲������
% for i=1:length(din)
%     for j=1:length(b)
%         if i<j
%             Rb=0;
%         else
%             Rb=din(i-j+1);
%         end
%         if i<j+1 
%             Ra=0;
%         else
%             Ra=y(i-j);
%         end
%          if j==length(a)
%             y(i)=y(i)+b(j)*Rb;
%          else
%             y(i)=y(i)+b(j)*Rb-a(j+1)*Ra;
%          end
%     end
% end
%����ֱ����ʽ��ȡ�����˲������
for i=1:length(din)
    for j=1:length(Qb)
        if i<j
            Rb=0;
        else
            Rb=din(i-j+1);
        end
        if i<j+1 
            Ra=0;
        else
            Ra=Qy(i-j);
        end
         if j==length(Qa)
            Qy(i)=Qy(i)+Qb(j)*Rb;
         else
            Qy(i)=Qy(i)+Qb(j)*Rb-Qa(j+1)*Ra;
         end
    end
    Qy(i)=Qy(i)/Qa(1);
    Qy(i)=floor(Qy(i)*(2^(Qout-1)-1))/(2^(Qout-1)-1);%ֱ�ӽ�β
end
% %���˲��������Ƶ��Ӧ
% fy=20*log10(abs(fft(y)));   fy=fy-max(fy);
% Qfy=20*log10(abs(fft(Qy))); Qfy=Qfy-max(Qfy);
% 
%  %���÷�Ƶ��Ӧ�ĺ����굥λΪHz
%  x_f=[0:(fs/length(din)):fs-1];
%  plot(x_f,fy,'.',x_f,Qfy,'-');
%  %ֻ��ʾ��Ƶ�ʲ��ֵķ�Ƶ��Ӧ
%  axis([0 fs/2 -100 5]);    
%  xlabel('Ƶ��(Hz)');ylabel('����(dB)');
%  legend('�������','�������'); grid;

 
