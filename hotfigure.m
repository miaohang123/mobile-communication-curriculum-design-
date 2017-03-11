%N=3
clc,clear;
f_c=1000;%2000;
var=8;%10
h_te=30;
h_re=2;
d0=1;
d=(2/3)*sqrt(3)*d0;%5
p_t=30;%20
p_t=10^(0.1*p_t);
num=5000;%每个小区撒点数
%各小区中心点坐标
x_1=2*d0;  y_1=sqrt(3)*d0;
x_2=4*d0;  y_2=sqrt(3)*d0;
x_3=6*d0;  y_3=sqrt(3)*d0;
x_4=d0;    y_4=0;
x_5=3*d0;  y_5=0;
x_6=5*d0;  y_6=0;
x_7=7*d0;  y_7=0;
x_8=2*d0;  y_8=-sqrt(3)*d0;
x_9=4*d0;  y_9=-sqrt(3)*d0;
x_10=6*d0; y_10=-sqrt(3)*d0;
theta = linspace((1/6)*pi,(13/6)*pi,7);
plot(x_1,y_1,'k.');hold on;
plot(x_2,y_2,'k.');hold on;
plot(x_3,y_3,'k.');hold on;
plot(x_4,y_4,'k.');hold on;
plot(x_5,y_5,'k.');hold on;
plot(x_6,y_6,'k.');hold on;
plot(x_7,y_7,'k.');hold on;
plot(x_8,y_8,'k.');hold on;
plot(x_9,y_9,'k.');hold on;
plot(x_10,y_10,'k.');hold on;
test1=sprinkle(num,d0,x_1,y_1);
test2=sprinkle(num,d0,x_2,y_2);
test3=sprinkle(num,d0,x_3,y_3);
test4=sprinkle(num,d0,x_4,y_4);
test5=sprinkle(num,d0,x_5,y_5);
test6=sprinkle(num,d0,x_6,y_6);
test7=sprinkle(num,d0,x_7,y_7);
test8=sprinkle(num,d0,x_8,y_8);
test9=sprinkle(num,d0,x_9,y_9);
test10=sprinkle(num,d0,x_10,y_10);
result1=abs(spot(d0,test1));min1=min(result1);max1=max(result1);
result2=abs(spot(d0,test2));min2=min(result2);max2=max(result2);
result3=abs(spot(d0,test3));min3=min(result3);max3=max(result3);
result4=abs(spot(d0,test4));min4=min(result4);max4=max(result4);
result5=abs(spot(d0,test5));min5=min(result5);max5=max(result5);
result6=abs(spot(d0,test6));min6=min(result6);max6=max(result6);
result7=abs(spot(d0,test7));min7=min(result7);max7=max(result7);
result8=abs(spot(d0,test8));min8=min(result8);max8=max(result8);
result9=abs(spot(d0,test9));min9=min(result9);max9=max(result9);
result10=abs(spot(d0,test10));min10=min(result10);max10=max(result10);
%result=[result1,result2,result3,result4,result5,result6,result7,result8,result9,result10];
threshold1=0.2;threshold2=0.4;
count1=0;count2=0;count3=0;
max1
min1
temp1=min1+threshold1*(max1-min1)
temp2=min1+threshold2*(max1-min1)
for i=1:num
%     if (result1(i)<(min1+threshold1*(max1-min1)))
%         plot(test1(i,1),test1(i,2),'b.');hold on;count1=count1+1;
%     elseif (result1(i)>=(min1+threshold1*(max1-min1))&&result1(i)<(min1+threshold2*(max1-min1)))
%         plot(test1(i,1),test1(i,2),'y.');hold on;count2=count2+1;
%     else
%         plot(test1(i,1),test1(i,2),'r.');hold on;count3=count3+1;
%     end
% if (result1(i)<20)
%         plot(test1(i,1),test1(i,2),'b.');hold on;count1=count1+1;
%     elseif (result1(i)>=20&&result1(i)<60)
%         plot(test1(i,1),test1(i,2),'y.');hold on;count2=count2+1;
%     else
%         plot(test1(i,1),test1(i,2),'r.');hold on;count3=count3+1;
%     end
%     if (result2(i)<(min2+threshold1*(max2-min2)))
%         plot(test2(i,1),test2(i,2),'b.');hold on;
%     elseif (result2(i)>=(min2+threshold1*(max2-min2))&&result2(i)<(min2+threshold2*(max2-min2)))
%         plot(test2(i,1),test2(i,2),'y.');hold on;
%     else
%         plot(test2(i,1),test2(i,2),'r.');hold on;
%     end
%     if (result3(i)<(min3+threshold1*(max3-min3)))
%         plot(test3(i,1),test3(i,2),'b.');hold on;
%     elseif (result3(i)>=(min3+threshold1*(max3-min3))&&result3(i)<(min3+threshold2*(max3-min3)))
%         plot(test3(i,1),test3(i,2),'y.');hold on;
%     else
%         plot(test3(i,1),test3(i,2),'r.');hold on;
%     end
%     if (result4(i)<(min4+threshold1*(max4-min4)))
%         plot(test4(i,1),test4(i,2),'b.');hold on;
%     elseif (result4(i)>=(min4+threshold1*(max4-min4))&&result4(i)<(min4+threshold2*(max4-min4)))
%         plot(test4(i,1),test4(i,2),'y.');hold on;
%     else
%         plot(test4(i,1),test4(i,2),'r.');hold on;
%     end
%     if (result5(i)<(min5+threshold1*(max5-min5)))
%         plot(test5(i,1),test5(i,2),'b.');hold on;
%     elseif (result5(i)>=(min5+threshold1*(max5-min5))&&result5(i)<(min5+threshold2*(max5-min5)))
%         plot(test5(i,1),test5(i,2),'y.');hold on;
%     else
%         plot(test5(i,1),test5(i,2),'r.');hold on;
%     end
%     if (result6(i)<(min6+threshold1*(max6-min6)))
%         plot(test6(i,1),test6(i,2),'b.');hold on;
%     elseif (result6(i)>=(min6+threshold1*(max6-min6))&&result6(i)<(min6+threshold2*(max6-min6)))
%         plot(test6(i,1),test6(i,2),'y.');hold on;
%     else
%         plot(test6(i,1),test6(i,2),'r.');hold on;
%     end
%     if (result7(i)<(min7+threshold1*(max7-min7)))
%         plot(test7(i,1),test7(i,2),'b.');hold on;
%     elseif (result7(i)>=(min7+threshold1*(max7-min7))&&result7(i)<(min7+threshold2*(max7-min7)))
%         plot(test7(i,1),test7(i,2),'y.');hold on;
%     else
%         plot(test7(i,1),test7(i,2),'r.');hold on;
%     end
%     if (result8(i)<(min8+threshold1*(max8-min8)))
%         plot(test8(i,1),test8(i,2),'b.');hold on;
%     elseif (result8(i)>=(min8+threshold1*(max8-min8))&&result8(i)<(min8+threshold2*(max8-min8)))
%         plot(test8(i,1),test8(i,2),'y.');hold on;
%     else
%         plot(test8(i,1),test8(i,2),'r.');hold on;
%     end
%     if (result9(i)<(min9+threshold1*(max9-min9)))
%         plot(test9(i,1),test9(i,2),'b.');hold on;
%     elseif (result9(i)>=(min9+threshold1*(max9-min9))&&result9(i)<(min9+threshold2*(max9-min9)))
%         plot(test9(i,1),test9(i,2),'y.');hold on;
%     else
%         plot(test9(i,1),test9(i,2),'r.');hold on;
%     end
%     if (result10(i)<(min10+threshold1*(max10-min10)))
%         plot(test10(i,1),test10(i,2),'b.');hold on;
%     elseif (result10(i)>=(min10+threshold1*(max10-min10))&&result10(i)<(min10+threshold2*(max10-min10)))
%         plot(test10(i,1),test10(i,2),'y.');hold on;
%     else
%         plot(test10(i,1),test10(i,2),'r.');hold on;
%     end
    if (result1(i)<20)
        plot(test1(i,1),test1(i,2),'b.');hold on;count1=count1+1;
    elseif (result1(i)>=20&&result1(i)<60)
        plot(test1(i,1),test1(i,2),'y.');hold on;count2=count2+1;
    else
        plot(test1(i,1),test1(i,2),'r.');hold on;count3=count3+1;
    end
    if (result2(i)<20)
        plot(test2(i,1),test2(i,2),'b.');hold on;
    elseif (result2(i)>=20&&result2(i)<60)
        plot(test2(i,1),test2(i,2),'y.');hold on;
    else
        plot(test2(i,1),test2(i,2),'r.');hold on;
    end
    if (result3(i)<20)
        plot(test3(i,1),test3(i,2),'b.');hold on;
    elseif (result3(i)>=20&&result3(i)<60)
        plot(test3(i,1),test3(i,2),'y.');hold on;
    else
        plot(test3(i,1),test3(i,2),'r.');hold on;
    end
    if (result4(i)<20)
        plot(test4(i,1),test4(i,2),'b.');hold on;
    elseif (result4(i)>=20&&result4(i)<60)
        plot(test4(i,1),test4(i,2),'y.');hold on;
    else
        plot(test4(i,1),test4(i,2),'r.');hold on;
    end
    if (result5(i)<20)
        plot(test5(i,1),test5(i,2),'b.');hold on;
    elseif (result5(i)>=20&&result5(i)<60)
        plot(test5(i,1),test5(i,2),'y.');hold on;
    else
        plot(test5(i,1),test5(i,2),'r.');hold on;
    end
    if (result6(i)<20)
        plot(test6(i,1),test6(i,2),'b.');hold on;
    elseif (result6(i)>=20&&result6(i)<60)
        plot(test6(i,1),test6(i,2),'y.');hold on;
    else
        plot(test6(i,1),test6(i,2),'r.');hold on;
    end
    if (result7(i)<20)
        plot(test7(i,1),test7(i,2),'b.');hold on;
    elseif (result7(i)>=20&&result7(i)<60)
        plot(test7(i,1),test7(i,2),'y.');hold on;
    else
        plot(test7(i,1),test7(i,2),'r.');hold on;
    end
    if (result8(i)<20)
        plot(test8(i,1),test8(i,2),'b.');hold on;
    elseif (result8(i)>=20&&result8(i)<60)
        plot(test8(i,1),test8(i,2),'y.');hold on;
    else
        plot(test8(i,1),test8(i,2),'r.');hold on;
    end
    if (result9(i)<20)
        plot(test9(i,1),test9(i,2),'b.');hold on;
    elseif (result9(i)>=20&&result9(i)<60)
        plot(test9(i,1),test9(i,2),'y.');hold on;
    else
        plot(test9(i,1),test9(i,2),'r.');hold on;
    end
    if (result10(i)<20)
        plot(test10(i,1),test10(i,2),'b.');hold on;
    elseif (result10(i)>=20&&result10(i)<60)
        plot(test10(i,1),test10(i,2),'y.');hold on;
    else
        plot(test10(i,1),test10(i,2),'r.');hold on;
    end
end
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_1,d0*sqrt(3)*(2/3)*sin(theta) + y_1,'k-');hold on;
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_2,d0*sqrt(3)*(2/3)*sin(theta) + y_2,'k-');hold on;
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_3,d0*sqrt(3)*(2/3)*sin(theta) + y_3,'k-');hold on;
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_4,d0*sqrt(3)*(2/3)*sin(theta) + y_4,'k-');hold on;
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_5,d0*sqrt(3)*(2/3)*sin(theta) + y_5,'k-');hold on;
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_6,d0*sqrt(3)*(2/3)*sin(theta) + y_6,'k-');hold on;
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_7,d0*sqrt(3)*(2/3)*sin(theta) + y_7,'k-');hold on;
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_8,d0*sqrt(3)*(2/3)*sin(theta) + y_8,'k-');hold on;
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_9,d0*sqrt(3)*(2/3)*sin(theta) + y_9,'k-');hold on;
plot(d0*sqrt(3)*(2/3)*cos(theta)+x_10,d0*sqrt(3)*(2/3)*sin(theta) + y_10,'k-');hold on;
