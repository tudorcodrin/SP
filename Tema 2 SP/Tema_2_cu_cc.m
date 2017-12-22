%Programul reprezinta spectrul de amplitudini si traseaza un grafic cu un
%semnal dreptunghiular atat in forma initiala cat si in forma reconstruita
%pe baza a 50 de coeficienti. Semnalul este un semnal dreptunghiular cu
%factor de umplere 7.5% (3/40), iar analiza se face pe baza seriei Fourier
%exponentiale si armonice
syms timp 
T=40;
N=50;
D=3;
q=D/T;
k=1:N;
t=0:0.01:T;         %definirea unui vector de timp
w=2*pi/T;
Xk=(1/T)*int(exp(-j*k*w*timp),timp,0,3);	%calculul direct al coeficientilor din forma exponentiala
Ak=2*abs(Xk);					%calculul amplitudinilor

n=-N:N;
P=Ak;
o=length(Ak); 
for r=1:length(Ak)				%oglindirea partii din dreapta a semnalului
  
        P(r)=Ak(o);
        o=o-1;
end

    Amp=[P,q,Ak]			%realizarea vectorului amplitudine


stem(n,Amp)			%reprezentarea spectrului de amplitudini, cu componenta continua
title('Spectrul lui x(t)');

x=q;            %semnalului i se atribuie valoarea componentei continue q*A=q, deoarece A=1
for m=1:50          %reconstruirea semnalului
    x=x+(2/(m*pi))*sin(m*pi*q)*cos(m*w.*t-m*pi*q);
end

plot(t,0.5*square(2*pi*t/T,7.5)+0.5);       %trasarea graficului semnalului initial
hold on;
plot(t,x,'--');                       %trasarea graficului semnalului reconstruit
title('x(t) (linie solida) si reconstructia folosind N coeficienti (linie punctata)')
