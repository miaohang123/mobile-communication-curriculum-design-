%N=1
clc,clear;
f_c=1000;%2000;
var=8;%10
h_te=30;
h_re=2;
d=1;%5
p_t=30;%20
p_t=10^(0.1*p_t);
%��С�����ĵ�����
x_1=2*d;  y_1=sqrt(3)*d;
x_2=4*d;  y_2=sqrt(3)*d;
x_3=6*d;  y_3=sqrt(3)*d;
x_4=d;    y_4=0;
x_5=3*d;  y_5=0;
x_6=5*d;  y_6=0;
x_7=7*d;  y_7=0;
x_8=2*d;  y_8=-sqrt(3)*d;
x_9=4*d;  y_9=-sqrt(3)*d;
x_10=6*d; y_10=-sqrt(3)*d;
d_1=distance(0,0,x_1,y_1);
%4��Ϊ����С��
for D=0:0.01:2*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_5=distance(D,0,x_5,y_5);
    d_6=distance(D,0,x_6,y_6);
    d_7=distance(D,0,x_7,y_7);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_4=d-D;
    else
        d_4=D-d;
    end
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    SIR=10*log(pr_4/(pr_1+pr_2+pr_3+pr_5+pr_6+pr_7+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)),'b.');
     hold on;
     title('Okumura-Hata·�����Ԥ��')
     xlabel('�ƶ�̨��ʻ�ľ���(km)')
     ylabel('·�����(dB)')
    set(gca,'xlim',[0 8],'ylimmode','auto');  
%     subplot(1,2,2)
%     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)),'b.');
%     hold on;
%     title('Okumura-Hata·�����Ԥ�⣨��������Ӱ˥�䣩')
%     xlabel('�ƶ�̨��ʻ�ľ���(km)')
%     ylabel('·�����(dB)')
%     figure(1)
%     plot(D,SIR,'b.');
%     title('SIR-����')
%     xlabel('�ƶ�̨��ʻ�ľ���(km)')
%     ylabel('SIR(dB)')
%     hold on;
end
%5��Ϊ����С��
for D=2*d:0.01:4*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_4=distance(D,0,x_4,y_4);
    d_6=distance(D,0,x_6,y_6);
    d_7=distance(D,0,x_7,y_7);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_5=3*d-D;
    else
        d_5=D-3*d;
    end
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    SIR=10*log(pr_5/(pr_1+pr_2+pr_3+pr_4+pr_6+pr_7+pr_8+pr_9+pr_10));
    figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)),'b.');
     hold on;
%     subplot(1,2,2)
%     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)),'b.');
%     hold on;
%     figure(1)
%     plot(D,SIR,'b.');
%     hold on;
%     
end
%6��Ϊ����С��
for D=4*d:0.01:6*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_4=distance(D,0,x_4,y_4);
    d_5=distance(D,0,x_5,y_5);
    d_7=distance(D,0,x_7,y_7);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_6=5*d-D;
    else
        d_6=D-5*d;
    end
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6))));
    SIR=10*log(pr_6/(pr_1+pr_2+pr_3+pr_4+pr_5+pr_7+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)),'b.')
     hold on;
%     subplot(1,2,2)
%     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)),'b.')
%     hold on;
%     figure(1)
%     plot(D,SIR,'b.');
%     hold on;
end
%7��Ϊ����С��
for D=6*d:0.01:8*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_4=distance(D,0,x_4,y_4);
    d_5=distance(D,0,x_5,y_5);
    d_6=distance(D,0,x_6,y_6);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_7=7*d-D;
    else
        d_7=D-7*d;
    end
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    SIR=10*log(pr_7/(pr_1+pr_2+pr_3+pr_4+pr_5+pr_6+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)),'b.')
     hold on;
%     figure(1)
%     plot(D,SIR,'b.');
%     hold on
end

d=2;%5
p_t=30;%20
p_t=10^(0.1*p_t);
%��С�����ĵ�����
x_1=2*d;  y_1=sqrt(3)*d;
x_2=4*d;  y_2=sqrt(3)*d;
x_3=6*d;  y_3=sqrt(3)*d;
x_4=d;    y_4=0;
x_5=3*d;  y_5=0;
x_6=5*d;  y_6=0;
x_7=7*d;  y_7=0;
x_8=2*d;  y_8=-sqrt(3)*d;
x_9=4*d;  y_9=-sqrt(3)*d;
x_10=6*d; y_10=-sqrt(3)*d;
d_1=distance(0,0,x_1,y_1);
%4��Ϊ����С��
for D=0:0.01:2*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_5=distance(D,0,x_5,y_5);
    d_6=distance(D,0,x_6,y_6);
    d_7=distance(D,0,x_7,y_7);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_4=d-D;
    else
        d_4=D-d;
    end
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    SIR=10*log(pr_4/(pr_1+pr_2+pr_3+pr_5+pr_6+pr_7+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)),'y.');
     hold on;
end
%5��Ϊ����С��
for D=2*d:0.01:4*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_4=distance(D,0,x_4,y_4);
    d_6=distance(D,0,x_6,y_6);
    d_7=distance(D,0,x_7,y_7);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_5=3*d-D;
    else
        d_5=D-3*d;
    end
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    SIR=10*log(pr_5/(pr_1+pr_2+pr_3+pr_4+pr_6+pr_7+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)),'y.');
     hold on;
    
end
%6��Ϊ����С��
for D=4*d:0.01:6*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_4=distance(D,0,x_4,y_4);
    d_5=distance(D,0,x_5,y_5);
    d_7=distance(D,0,x_7,y_7);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_6=5*d-D;
    else
        d_6=D-5*d;
    end
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    SIR=10*log(pr_6/(pr_1+pr_2+pr_3+pr_4+pr_5+pr_7+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)),'y.')
     hold on;
end
%7��Ϊ����С��
for D=6*d:0.01:8*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_4=distance(D,0,x_4,y_4);
    d_5=distance(D,0,x_5,y_5);
    d_6=distance(D,0,x_6,y_6);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_7=7*d-D;
    else
        d_7=D-7*d;
    end
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    SIR=10*log(pr_7/(pr_1+pr_2+pr_3+pr_4+pr_5+pr_6+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)),'y.')
     hold on;
end

d=3;%5
p_t=30;%20
p_t=10^(0.1*p_t);
%��С�����ĵ�����
x_1=2*d;  y_1=sqrt(3)*d;
x_2=4*d;  y_2=sqrt(3)*d;
x_3=6*d;  y_3=sqrt(3)*d;
x_4=d;    y_4=0;
x_5=3*d;  y_5=0;
x_6=5*d;  y_6=0;
x_7=7*d;  y_7=0;
x_8=2*d;  y_8=-sqrt(3)*d;
x_9=4*d;  y_9=-sqrt(3)*d;
x_10=6*d; y_10=-sqrt(3)*d;
d_1=distance(0,0,x_1,y_1);
%4��Ϊ����С��
for D=0:0.01:2*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_5=distance(D,0,x_5,y_5);
    d_6=distance(D,0,x_6,y_6);
    d_7=distance(D,0,x_7,y_7);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_4=d-D;
    else
        d_4=D-d;
    end
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    SIR=10*log(pr_4/(pr_1+pr_2+pr_3+pr_5+pr_6+pr_7+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)),'r.');
     hold on;
end
%5��Ϊ����С��
for D=2*d:0.01:4*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_4=distance(D,0,x_4,y_4);
    d_6=distance(D,0,x_6,y_6);
    d_7=distance(D,0,x_7,y_7);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_5=3*d-D;
    else
        d_5=D-3*d;
    end
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    SIR=10*log(pr_5/(pr_1+pr_2+pr_3+pr_4+pr_6+pr_7+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)),'r.');
     hold on;
    
end
%6��Ϊ����С��
for D=4*d:0.01:6*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_4=distance(D,0,x_4,y_4);
    d_5=distance(D,0,x_5,y_5);
    d_7=distance(D,0,x_7,y_7);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_6=5*d-D;
    else
        d_6=D-5*d;
    end
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    SIR=10*log(pr_6/(pr_1+pr_2+pr_3+pr_4+pr_5+pr_7+pr_8+pr_9+pr_10));
     figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)),'r.')
     hold on;

end
%7��Ϊ����С��
for D=6*d:0.01:8*d
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(D,0,x_1,y_1);
    d_2=distance(D,0,x_2,y_2);
    d_3=distance(D,0,x_3,y_3);
    d_4=distance(D,0,x_4,y_4);
    d_5=distance(D,0,x_5,y_5);
    d_6=distance(D,0,x_6,y_6);
    d_8=distance(D,0,x_8,y_8);
    d_9=distance(D,0,x_9,y_9);
    d_10=distance(D,0,x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    if D<=d
        d_7=7*d-D;
    else
        d_7=D-7*d;
    end
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    SIR=10*log(pr_7/(pr_1+pr_2+pr_3+pr_4+pr_5+pr_6+pr_8+pr_9+pr_10));
    figure(1)
%     subplot(1,2,1)
     plot(D,0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)),'r.')
     hold on;
end
