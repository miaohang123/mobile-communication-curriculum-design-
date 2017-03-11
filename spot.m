function p=spot(d,dot)
%clc,clear;
%d=1;
f_c=1000;%2000;
var=8;%10
h_te=30;
h_re=2;
p_t=30;%20
p_t=10^(0.1*p_t);
%各小区中心点坐标
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
%dot=sprinkle(100,d,x_1,y_1);
for i=1:size(dot,1)
    n=normrnd(0,10.^(var/10));
    r=10.*log(n);
    d_1=distance(dot(i,1),dot(i,2),x_1,y_1);
    d_2=distance(dot(i,1),dot(i,2),x_2,y_2);
    d_3=distance(dot(i,1),dot(i,2),x_3,y_3);
    d_4=distance(dot(i,1),dot(i,2),x_4,y_4);
    d_5=distance(dot(i,1),dot(i,2),x_5,y_5);
    d_6=distance(dot(i,1),dot(i,2),x_6,y_6);
    d_7=distance(dot(i,1),dot(i,2),x_7,y_7);
    d_8=distance(dot(i,1),dot(i,2),x_8,y_8);
    d_9=distance(dot(i,1),dot(i,2),x_9,y_9);
    d_10=distance(dot(i,1),dot(i,2),x_10,y_10);
    pr_1=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_1)+r)));
    pr_2=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_2)+r)));    
    pr_3=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_3)+r)));
    pr_4=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_4)+r)));
    pr_5=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_5)+r)));
    pr_6=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_6)+r)));
    pr_7=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_7)+r)));
    pr_8=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_8)+r)));
    pr_9=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_9)+r)));
    pr_10=p_t/(10^(0.1*(Okumura_Hata(f_c,h_te,h_re,d_10)+r)));
    P=[pr_1,pr_2,pr_3,pr_4,pr_5,pr_6,pr_7,pr_8,pr_9,pr_10];
    max_p=max(P);
    p(i)=10*log(max_p/(pr_1+pr_2+pr_3+pr_4+pr_5+pr_6+pr_7+pr_8+pr_9+pr_10-max_p));
end
