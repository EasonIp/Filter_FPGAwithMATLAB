function p=E8_2_PNCodeGenerator(ploynomial)
%  PN�������
%  ploynomialΪ��ԭ����ʽ������������Ϊ��λ����λ�������λ�����λ����Ϊ1��
%�������5��31λ��PN�룬�����ʽ��ʽΪ[1��* * * * 1]
%  �������������ӿƼ���ѧ.�����.���ġ���Ƶͨ��]���в��5��PN��45E������Ϊ[1 0 0 1 0 1]
%��PN��0 1 0 0 0 0 1 0 1 0 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 0 1 0
grade=length(ploynomial)-1;
PN_Length=(2^grade-1);      %����1�����ڵ�PN��

pn=zeros(1,PN_Length);       %PN��
a=zeros(1,grade);            %����PN��ļĴ���
t=zeros(1,grade);            %PN��ļĴ����ݴ���
a(grade-1)=1;                %�ԼĴ����ó�ֵ
                        
q=0;                         %�ҳ���ԭ����ʽ��Ϊ1��λ
for i=1:grade
    if ploynomial(i)==1
        q=q+1;
       c(q)=grade+1-i;
    end
end                          

for j=1:PN_Length
    pn(j)=a(grade);             %���PN��
    t=a; 
    m=0;                        %�洢��λǰ�ļĴ���
    for i=grade-1:-1:1          %��λ
        a(i+1)=a(i);
    end
    for i=1:q
        m=m+t(c(i));
    end
    a(1)=mod(m,2);               %��ͷģ2��
end

for i=1:PN_Length
    if pn(i)==0 
        pn(i)=-1;
    end
end

for i=1:PN_Length                     %����4������
     p(((i-1)*4+1):(i*4))=pn(i);
end

