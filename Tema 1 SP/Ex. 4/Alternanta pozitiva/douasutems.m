t=0:0.2:3;	%realizarea vectoruli timp

s1=0.8*sin(((2*pi)/3)*t);	%realizarea semnalului sinusoidal

s=0.5*(s1+abs(s1));		%redresarea pe alternanta pozitiva a semnalului

plot(t, s);			%reprezentarea grafica a semnalului cerut
axis([0 3 -1 1 ]);
title ('Semnal sinusoidal redresat monoalternanta');
xlabel('Timp');
ylabel('Amplitudine');


