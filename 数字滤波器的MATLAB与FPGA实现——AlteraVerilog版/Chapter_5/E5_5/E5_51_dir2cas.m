function [b0,B,A]=E5_51_dir2cas(b,a);
%��ֱ����IIR�˲����ṹΪ������ʽ
%b0������ϵ��
%B=��������ϵ��bk��K��3�о���
%A=��������ϵ��ak��K��3�о���
%a=ֱ���ͷ�ĸ����ʽϵ��
%b=ֱ���ͷ��Ӷ���ʽϵ��
%��������ϵ��
bb=b;aa=a;

b0=b(1);b=b/b0;
a0=a(1);a=a/a0;
b0=b0/a0;
%�����ӡ���ĸ����ʽϵ���ĳ��Ȳ�����м���
M=length(b);N=length(a);
if N>M
    b=[b zeros(1,N-M)];
elseif M>N
    a=[a zeros(1,M-N)]; N=M;
else
    N=M;
end
%������ϵ�������ʼ��
K=floor(N/2);B=zeros(K,3);A=zeros(K,3);
if K*2==N
    b=[b 0];
    a=[a 0];
end
%���ݶ���ʽϵ�����ú���roots������еĸ�
%����cplxpair���а�ʵ����С����ĳɶ�����
broots=cplxpair(roots(b));
aroots=cplxpair(roots(a));
%ȡ��������Եĸ��任�ɶ���ʽϵ����Ϊ����
for i=1:2:2*K
    Brow=broots(i:1:i+1,:);
    Brow=real(poly(Brow));
    B(fix(i+1)/2,:)=Brow;
    Arow=aroots(i:1:i+1,:);
    Arow=real(poly(Arow));
    A(fix(i+1)/2,:)=Arow;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�˲�������Ϊ8��ʱ��
%����ת����ǰ����˲�����Ƶ��Ӧ
delta=[1,zeros(1,31)];
F1=filter(bb,aa,delta);
figure(1);plot(abs(fft(F1)));
% F21=filter(B(1,:),A(1,:),delta);
% F22=filter(B(2,:),A(2,:),F21);
% F23=filter(B(3,:),A(3,:),F22);
% F2=filter(b0*B(4,:),A(4,:),F23)
%��������ǰ����˲�����Ƶ��Ӧ
% [Qb1,Qa1]=E5_52_Qcoe(B(1,:),A(1,:),12)
% [Qb2,Qa2]=E5_52_Qcoe(B(2,:),A(2,:),12)
% [Qb3,Qa3]=E5_52_Qcoe(B(3,:),A(3,:),12)
% [Qb4,Qa4]=E5_52_Qcoe(b0*B(4,:),A(4,:),12)
% QF21=filter(B(1,:),A(1,:),delta);
% QF22=filter(B(2,:),A(2,:),QF21);
% QF23=filter(B(3,:),A(3,:),QF22);
% QF2=filter(B(4,:),A(4,:),QF23);
% figure(2);plot(abs(fft(QF2)));
%%%%%%%%%%%%%%%%%%%%%%�Ƚ�F1��F2��ֵ����


