%E7_3_EqualizerSim.m
%对基于符号LMS算法的自适应均衡器进行仿真。要求分别进行算法的性能仿真、生成FPGA测
%试用的输入信号、仿真权值在运算过程中数据范围。对于性能仿真，要求仿真不同信噪比条
%件下均衡器对系统性能的改善情况，仿真不同多径干扰条件下均衡器对系统性能的改善情况；
%LMS算法的步长因子为1/128。在FPGA上实现自适应均衡器算法，其中数据位数为16位、系统
%时钟为数据频率的８倍，最后进行FPGA实现后的测试仿真。

len=20000;  %仿真数据长度
Tlen=2000;  %训练数据长度
step=1/128;  %符号LMS算法的步长因子
N=7;        %滤波器长度
s=zeros(1,len);  %存放源数据
s1=zeros(1,len); %存放多径源数据
x=zeros(1,N);    %存放滤波器延迟数据
w=ones(1,N);     %存放权值数据
s=randsrc(1,len);%产生随机分布的源数据
s1(2:len)=s(1:len-1);%根据源数据产生多径源数据
%仿真多径干扰为0.1时，信噪比与误码率关系
p=0.1;
SNR=[0:10];
for db=1:length(SNR)
    s2=sqrt(1-p)*s+sqrt(p)*s1;  %根据多径干扰因子，产生输入数据
    s3=awgn(s2,db,'measured');  %产生信噪比为db的输入信号
    %符号LMS算法
    for i=N:len
        x(1:N)=s3(i:-1:i-N+1);
        y(i)=x*w';
        e(i)=s(i-3)-y(i);
        w=w+2*step*sign(x)*e(i)';
        %解调经过均衡器处理的数据
        if y(i)>0
            y1(i)=1;
        else
            y1(i)=-1;
        end
        %解调未经过均衡处理的数据
        if s3(i)>0
            y2(i)=1;
        else
            y2(i)=-1;
        end
    end
    %统计误码个数
    errornum1=sum(y1(Tlen:end)~=s(Tlen-3:end-3));
    errornum2=sum(y2(Tlen:end)~=s(Tlen:end));
    %统计误码率
    ber1(db)=errornum1/(len-Tlen);
    ber2(db)=errornum2/(len-Tlen);
end
%绘图
subplot(121);
semilogy(SNR,ber1,'+-',SNR,ber2,'-');
xlabel('信噪比(SNR)');ylabel('误码率');title('信噪比与误码率关系(p=0.1)');
legend('有均衡器','无均衡器');
%仿真信噪比为10dB时，多径干扰与误码率的关系
db=10;
p=[0:0.05:1];
for m=1:length(p)
    s2=sqrt(1-m*0.05)*s+sqrt(m*0.05)*s1;
    s3=awgn(s2,db,'measured');
    for i=N:len
        x(1:N)=s3(i:-1:i-N+1);
        y(i)=x*w';
        e(i)=s(i-3)-y(i);
        w=w+2*step*sign(x)*e(i)'; 
        if y(i)>0
            y1(i)=1;
        else
            y1(i)=-1;
        end
        if s3(i)>0
            y2(i)=1;
        else
            y2(i)=-1;
        end
    end
    errornum1=sum(y1(Tlen:end)~=s(Tlen-3:end-3));
    errornum2=sum(y2(Tlen:end)~=s(Tlen:end));
    ber3(m)=errornum1/(len-Tlen);
    ber4(m)=errornum2/(len-Tlen);
end

subplot(122);
semilogy(p,ber3,'+-',p,ber4,'-');
xlabel('多径损耗(P)');ylabel('误码率');title('多径损耗因子与误码率关系(SNR=10dB)');
legend('有均衡器','无均衡器');
