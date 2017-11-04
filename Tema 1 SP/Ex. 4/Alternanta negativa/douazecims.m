t=0:0.02:3;		%realizarea vectorului timp

s1=0.8*sin(((2*pi)/3)*t);	%realizarea semnalului sinusoidal

s=0.5*(s1-abs(s1));		%redresarea pe alternanta negativa a semnalului

plot(t, s);		%reprezentarea grafica a semnalului obtinut
axis([0 3 -1 1 ]);
title ('Semnal sinusoidal redresat monoalternanta');
xlabel('Timp');
ylabel('Amplitudine');


