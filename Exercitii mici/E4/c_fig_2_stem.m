n=-15:25;
n2=0:50;
x1=sin((pi/17)*n);
x2=sin((pi/sqrt(23))*n2);
subplot(2,1,1);
stem(n,x1);
subplot(2,1,2);
stem(n2,x2);
