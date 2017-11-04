t=0:0.02:4;		%realizarea vectorului de timp

s=abs(1.5*sin(((2*pi)/4)*t));		%realizarea si redresarea dubla alternanta a semnalului sinusoidal

plot(t, s);		%reprezentarea grafica a semnalului cerut
axis([0 4 -2 2]);
title ('Semnal sinusoidal redresat dubla alternanta');
xlabel('Timp');
ylabel('Amplitudine');


