t=0:0.002:2;		%se creeaza 1 vector de timp cu rezolutia de 2 ms pentru a putea reprezenta semnalul


s=0.75*square((2*pi*0.5*t),25)-0.25;	%realizarea semnalului cerut prin intermediul functiei square
plot(t, s);	%reprezentarea grafica a semnalului
axis([0 2 -1.2 0.6 ]);
title ('Semnal dreptunghiular');
xlabel('Timp');
ylabel('Amplitudine');
