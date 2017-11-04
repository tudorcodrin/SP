Ex 1

t=0:0.2:2;
t1=0:0.2:0.5;
t2=0.7:0.2:2;
y1=zeros(1,5);
y2=zeros(1,6);

for i=1:1:5;
y1(i)=0.5;
end

for i=1:1:6;
y2(i)=-1;
end

s=[y1 y2];
plot(t, s);
axis([0 2 -1.2 0.6 ]);
title ('Semnal dreptunghiular');
xlabel('Timp');
ylabel('Amplitudine');


Ex 2

t=0:0.2:5;
t1=0:0.2:1;
t2=1.2:0.2:4;
t3=4.2:0.2:5;
y1=t1;
y2=-t2+2;
y3=2*t3-10;
s=[y1 y2 y3];
plot(t, s);
title ('Semnal triunghiular');
xlabel('Timp');
ylabel('Amplitudine');


Ex 3
a)


t=0:0.02:0.25;
y1=zeros(1,7);
y2=zeros(1,6);



for i=1:1:7;
    y1(i)=1;
end

for i=1:1:6;
    y2(i)=-1;
end


semnal=[y1 y2];
plot(t, semnal);

title('Semnal dreptunghiular multinivel, aleator')
xlabel('Timp');
ylabel('Amplitudine');
grid;


b)


t=0:0.02:0.5;
y1=zeros(1,7);
y2=zeros(1,6);

y3=zeros(1,7);
y4=zeros(1,6);


for i=1:1:7;
    y1(i)=1;
end

for i=1:1:6;
    y2(i)=-1;
end

for i=1:1:7;
    y3(i)=3;
end

for i=1:1:6;
    y4(i)=-3;
end


semnal=[y1 y2 y3 y4];
plot(t, semnal);

title('Semnal dreptunghiular multinivel, aleator')
xlabel('Timp');
ylabel('Amplitudine');
grid;



c)


t=0:0.02:0.75;
y1=zeros(1,7);
y2=zeros(1,6);

y3=zeros(1,7);
y4=zeros(1,6);

y5=zeros(1,6);
y6=zeros(1,6);


for i=1:1:7;
    y1(i)=1;
end

for i=1:1:6;
    y2(i)=-1;
end

for i=1:1:7;
    y3(i)=3;
end

for i=1:1:6;
    y4(i)=-3;
end

for i=1:1:6;
    y5(i)=5;
end

for i=1:1:6;
    y6(i)=-5;
end



semnal=[y1 y2 y3 y4 y5 y6];
plot(t, semnal);

title('Semnal dreptunghiular multinivel aleator')
xlabel('Timp');
ylabel('Amplitudine');
grid;


d)

t=0:0.02:1;
y1=zeros(1,2);
y2=zeros(1,1);

y3=zeros(1,7);
y4=zeros(1,6);

y5=zeros(1,6);
y6=zeros(1,6);

y7=zeros(1,7);
y8=zeros(1,6);

for i=1:1:7;
    y1(i)=1;
end

for i=1:1:6;
    y2(i)=-1;
end

for i=1:1:7;
    y3(i)=3;
end

for i=1:1:6;
    y4(i)=-3;
end

for i=1:1:6;
    y5(i)=5;
end

for i=1:1:6;
    y6(i)=-5;
end

for i=1:1:7;
    y7(i)=7;
end

for i=1:1:6;
    y8(i)=-7;
end

semnal=[y1 y2 y3 y4 y5 y6 y7 y8];
plot(t, semnal);


title('Semnal dreptunghiular multinivel aleator')
xlabel('Timp');
ylabel('Amplitudine');
grid;



Ex 4

NEGATIVA


t=0:0.2:3;

s1=0.8*sin(((2*pi)/3)*t);

s=0.5*(s1-abs(s1));

plot(t, s);
axis([0 3 -1 1 ]);
title ('Semnal sinusoidal redresat monoalternanta');
xlabel('Timp');
ylabel('Amplitudine');


POZITIVA


t=0:0.2:3;

s1=0.8*sin(((2*pi)/3)*t);

s=0.5*(s1+abs(s1));

plot(t, s);
axis([0 3 -1 1 ]);
title ('Semnal sinusoidal redresat monoalternanta');
xlabel('Timp');
ylabel('Amplitudine');


EX 5

t=0:0.2:4;

s=abs(1.5*sin(((2*pi)/4)*t));

plot(t, s);
axis([0 4 -2 2]);
title ('Semnal sinusoidal redresat dubla alternanta');
xlabel('Timp');
ylabel('Amplitudine');



