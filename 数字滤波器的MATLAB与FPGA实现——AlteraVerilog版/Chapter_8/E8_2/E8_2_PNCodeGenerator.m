function p=E8_2_PNCodeGenerator(ploynomial)
%  PN码产生器
%  ploynomial为本原多项式，从左到右依次为高位到低位，且最高位与最低位必须为1。
%　如产生5级31位的PN码，则从项式形式为[1　* * * * 1]
%  例：从西安电子科技大学.查光明.著的《扩频通信]》中查出5级PN码45E，参数为[1 0 0 1 0 1]
%　PN：0 1 0 0 0 0 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0
grade=length(ploynomial)-1;
PN_Length=(2^grade-1);      %产生1个周期的PN码

pn=zeros(1,PN_Length);       %PN码
a=zeros(1,grade);            %产生PN码的寄存器
t=zeros(1,grade);            %PN码的寄存器暂存器
a(grade-1)=1;                %对寄存器置初值
                        
q=0;                         %找出本原多项式中为1的位
for i=1:grade
    if ploynomial(i)==1
        q=q+1;
       c(q)=grade+1-i;
    end
end                          

for j=1:PN_Length
    pn(j)=a(grade);             %输出PN码
    t=a; 
    m=0;                        %存储移位前的寄存器
    for i=grade-1:-1:1          %移位
        a(i+1)=a(i);
    end
    for i=1:q
        m=m+t(c(i));
    end
    a(1)=mod(m,2);               %抽头模2加
end

for i=1:PN_Length
    if pn(i)==0 
        pn(i)=-1;
    end
end

for i=1:PN_Length                     %进行4倍采样
     p(((i-1)*4+1):(i*4))=pn(i);
end

