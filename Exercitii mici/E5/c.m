F = 50; 
t = 0:0.001:0.2; 
s = 2*sin(2*pi*F*t); 
plot(t,s,'.-'),
xlabel('Timp [s]'),
grid 
hold on;
semnal=cos(2*pi*20*t);
plot(t,semnal,'r');