 function output=E7_4_AntennaSigProduce(SJNR,SNR,LEN,M,JANGLE)
 %����������Ԫ�������ź�
 %outputΪ10��2032�о���,ÿ�д���һ��֧·�����ź�
 %����Ϊ:r1,i1,r2,i2,r3,i3,r4,i4,rr,ir
 
 %&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
%����������Ԫ�������ź�
 tsign=randsrc(1,LEN);
 tjam=randsrc(1,LEN);
 sign=zeros(1,LEN*M);
 jam=zeros(1,LEN*M);
 for k=1:LEN                     %����M������
     sign(((k-1)*M+1):(k*M))=tsign(k);
     jam(((k-1)*M+1):(k*M))=tjam(k);
 end 
 
 %%%%%%%%%ԭʼ���źź͸��ž���FIR�˲������в��γ��Σ���ȥ�������Ƶ��%%%%%%%%%%%%%%%%%%%%%%%%%%%
 fn=2/M;              %��һ��Ƶ�ʣ�1��Ӧfs/2��
 b=fir1(80,fn);       %�ο�ͨ���˲���ϵ����ϵ������Ϊ��n1��1��
 sign_filter= filter(b,1,sign);      %�����γ��κ�������ź�
 jam_filter= filter(b,1,jam);        %�����γ��κ�ĸ����ź�

 %%%%%%%%%%%����45������ĸ����ź�%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u=pi*sin(JANGLE*(pi/180))*j;
 %jam1=jam_filter/max(abs(jam_filter));%��һ������
 jam1=jam_filter;
 jam2=jam1*exp(-u);
 jam3=jam1*exp(-2*u);
 jam4=jam1*exp(-3*u);
 %sign=sign_filter/max(abs(sign_filter));%��һ������
 sign=sign_filter;
 
%%%%%%%%%%%%%%%%%%%%����8·������صĸ�˹�������У��ӵ��ĸ�ͨ����I��Q֧·��%%%%%%%%%%%%%%%%%%%%%%%%%%%%
noise1=randn(1,LEN*M);              
noise2=randn(1,LEN*M);               
noise3=randn(1,LEN*M);              
noise4=randn(1,LEN*M);              
noise5=randn(1,LEN*M);               
noise6=randn(1,LEN*M);               
noise7=randn(1,LEN*M);               
noise8=randn(1,LEN*M);

%%%%%%%%%%%%%%%%%%%%�����Ÿ��������Ӧ�������ֵ%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Gs=1;
Gn=10^(-SNR/20);
Gj=10^(-SJNR/20);

%%%%%%%%%%%%%%%%%%%���������Ԫ�ź�%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output=zeros(10,LEN*M);
output(1,:)=Gs*sign+Gn*noise1+Gj*real(jam1);
output(2,:)=Gn*noise2+Gj*imag(jam1);

output(3,:)=Gs*sign+Gn*noise3+Gj*real(jam2);
output(4,:)=Gn*noise4+Gj*imag(jam2);

output(5,:)=Gs*sign+Gn*noise5+Gj*real(jam3);
output(6,:)=Gn*noise6+Gj*imag(jam3);

output(7,:)=Gs*sign+Gn*noise7+Gj*real(jam4);
output(8,:)=Gn*noise8+Gj*imag(jam4);

output(9,:)=Gs*sign;
output(10,:)=zeros(1,LEN*M);
%%%%%%%%%��һ������%%%%%%%%%%%%%%
m=max(max(abs(output)));
output(1,:)=output(1,:)/m;
output(2,:)=output(2,:)/m;
output(3,:)=output(3,:)/m;
output(4,:)=output(4,:)/m;
output(5,:)=output(5,:)/m;
output(6,:)=output(6,:)/m;
output(7,:)=output(7,:)/m;
output(8,:)=output(8,:)/m;
output(9,:)=output(9,:)/m;
output(10,:)=output(10,:)/m;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�����ɵ������Զ��������ݸ�ʽд��txt�ļ���
Q=16;
Q_x=round(output(1,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x1r_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(2,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x1i_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(3,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x2r_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(4,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x2i_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(5,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x3r_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(6,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x3i_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(7,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x4r_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

Q_x=round(output(8,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_x4i_in.txt','w');
for k=1:length(Q_x)
    B_si=dec2bin(Q_x(k)+(Q_x(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

Q_r=round(output(9,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_rr_in.txt','w');
for k=1:length(Q_r)
    B_si=dec2bin(Q_r(k)+(Q_r(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

Q_r=round(output(10,:)*(2^(Q-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier
fid=fopen('D:\FilterVerilog\Chapter_7\E7_4\E7_4_ri_in.txt','w');
for k=1:length(Q_r)
    B_si=dec2bin(Q_r(k)+(Q_r(k)<0)*2^Q,Q);
    for q=1:Q
       if B_si(q)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);