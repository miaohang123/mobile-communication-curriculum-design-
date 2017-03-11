function L=Cost_231Hata(f_c,h_te,h_re,d)
   % h_te=30;
   %h_re=2;
    a=(1.11*log10(f_c)-0.7).*h_re-(1.56*log10(f_c)-0.8);
    c=0;
    c_t=0;
    c_m=0;
    L=46.3+33.9*log10(f_c)-13.82*log10(h_te)-a+(44.9-6.55*log10(h_te))*log10(d)+c+c_t+c_m;