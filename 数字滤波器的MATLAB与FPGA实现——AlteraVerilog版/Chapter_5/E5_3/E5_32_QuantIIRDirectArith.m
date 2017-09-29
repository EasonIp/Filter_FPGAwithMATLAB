function Qy=E5_32_QuantIIRDirectArith(Qb,Qa,din,Qcoe,Qout);
%直接型IIR滤波器结构的量化系数及运算位数仿真
%a=直接型分母多项式系数
%b=直接型分子多项式系数
%din＝输入原始数据
%Qcoe=IIR滤波器系数的量化位数
%Qy=IIR滤波器的输出量化位数
%y=IIR滤波器理论输出

%滤波器系数量化
%y=zeros(1,length(din));
%输出数据清零
Qy=zeros(1,length(din));
%m=max(max(abs(a),abs(b)));
%Qb=round(b/m*(2^(Qcoe-1)-1))/(2^(Qcoe-1)-1)*m;%四舍五入截尾
%Qa=round(a/m*(2^(Qcoe-1)-1))/(2^(Qcoe-1)-1)*m;

%Qb=round(b/m*(2^(Qcoe-1)-1)); %四舍五入截尾
%Qa=round(a/m*(2^(Qcoe-1)-1))
% Qb=Qb/Qa(1);%相对于a(1)进行归一化
% Qa=Qa/Qa(1);%相对于a(1)进行归一化
% a
% b


%根据直接型式求取理想滤波器输出
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
%根据直接型式求取量化滤波器输出
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
    Qy(i)=floor(Qy(i)*(2^(Qout-1)-1))/(2^(Qout-1)-1);%直接截尾
end
% %求滤波器输出幅频响应
% fy=20*log10(abs(fft(y)));   fy=fy-max(fy);
% Qfy=20*log10(abs(fft(Qy))); Qfy=Qfy-max(Qfy);
% 
%  %设置幅频响应的横坐标单位为Hz
%  x_f=[0:(fs/length(din)):fs-1];
%  plot(x_f,fy,'.',x_f,Qfy,'-');
%  %只显示正频率部分的幅频响应
%  axis([0 fs/2 -100 5]);    
%  xlabel('频率(Hz)');ylabel('幅度(dB)');
%  legend('理想输出','量化输出'); grid;

 
