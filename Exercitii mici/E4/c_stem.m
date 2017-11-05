n=-15:25;
n2=0:50;
x1=sin((pi/17)*n);
x2=sin((pi/sqrt(23))*n2);
stem(n,x1);
hold on;
stem(n2,x2);
