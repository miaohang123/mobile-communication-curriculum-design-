function [X]=sprinkle(N,D0,x_1,y_1)
theta = linspace((1/2)*pi,(5/2)*pi,7);
%theta = linspace(0,2*pi,7);
%D0=2;
D=D0*(2/3)*sqrt(3); %边长
%x_1=1;  %中心横坐标
%y_1=2;  %中心纵坐标
%plot(D*cos(theta)+x_1,D*sin(theta) + y_1,'g-');
%axis square
X=zeros(N,2);
i = 0;
while i < N
x = 2*D0*rand(1)-1*D0;
y = 2*D*rand(1)-1*D;
if ((abs(y) + abs(x)/sqrt(3) ) <= D  )
i = i+1;
X(i,1)=x+x_1;
X(i,2)=y+y_1;
%hold on
%plot(x + x_1, y + y_1,'r*');     
end
end
%hold off