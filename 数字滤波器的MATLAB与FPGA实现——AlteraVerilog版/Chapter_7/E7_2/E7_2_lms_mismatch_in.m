function output=E7_2_lms_mismatch_in(SNR)
%�Ի���LMS�㷨��ͨ��ʧ��У��ģ�ͽ��з��档Ҫ��ֱ�����㷨�����ܷ��桢����FPGA�����õ������źš�����Ȩֵ��������������ݷ�Χ���������ܷ��棬Ҫ
%����治ͬ�����������У��ǰ���ͨ��ʧ��ȸ���������ο��ź�Ϊ��������������������źš�

N=4000; %���ݷ��泤��
Q=16;   %��������λ��
output=zeros(3,N);
%%%%%%%%������������ź�Ϊע��ԭʼ�ź�%%%%%%%%%%%%%%%%%%%%%%%%%%%
rs=randn(1,N)>0;

%%%%%%����2·������صĸ�˹�������У�����ͨ��ģ���ŵ�������%%%%%%%%
noise1=randn(1,N);              
noise2=randn(1,N);               

%%%%%%%%%%%%%%%%%%%%�����Ÿ��������Ӧ�������ֵ%%%%%%%%%%%%%%%%%%
Gs=1;
Gn=Gs/(10^(SNR/20));
normal_gs=Gs/(Gs+Gn);
normal_gn=Gn/(Gs+Gn);

%%%%%%%%%%%%%%%%%%%�����������������ο�ע���ź�%%%%%%%%%%%%%%%%%%
rn=(normal_gs*rs+normal_gn*noise1)+normal_gn*noise2*i;
%%%%%%%%%%%%%%%%%%����ʧ���ź���ΪFPGA���������ź�%%%%%%%%%%%%%%%%
mis_amp=1.5;mis_ang=pi/4;
xn=rn.*((1+mis_amp)*exp(j*mis_ang));
%�Բο��źż����������źŽ��й�һ������
rr=real(rn);mrr=max(abs(rr));
ri=imag(rn);mri=max(abs(ri));
xr=real(xn);mxr=max(abs(xr));
xi=imag(xn);mxi=max(abs(xi));
m=max([mrr,mri,mxr,mxi])
rr=rr/m;ri=ri/m;xr=xr/m;xi=xi/m;
%�����ɵ������Զ��������ݸ�ʽд��txt�ļ���
Q_rr=round(rr*(2^(16-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_2\E7_2_rr_in.txt','w');
for k=1:length(Q_rr)
    B_si=dec2bin(Q_rr(k)+(Q_rr(k)<0)*2^Q,Q);
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

Q_ri=round(ri*(2^(16-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_2\E7_2_ri_in.txt','w');
for k=1:length(Q_ri)
    B_si=dec2bin(Q_ri(k)+(Q_ri(k)<0)*2^Q,Q);
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

Q_xr=round(xr*(2^(16-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_2\E7_2_xr_in.txt','w');
for k=1:length(Q_xr)
    B_si=dec2bin(Q_xr(k)+(Q_xr(k)<0)*2^Q,Q);
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

Q_xi=round(xi*(2^(16-1)-1));%16��������
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf����
%Invalid file identifier -1.
fid=fopen('D:\FilterVerilog\Chapter_7\E7_2\E7_2_xi_in.txt','w');
for k=1:length(Q_xi)
    B_si=dec2bin(Q_xi(k)+(Q_xi(k)<0)*2^Q,Q);
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
output(1,:)=rn;    %ԭʼ�ο��ź�
output(2,:)=rr+ri*j;
output(3,:)=xr+xi*j;
