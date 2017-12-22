%Programul reprezinta spectrul de amplitudini si traseaza un grafic cu un
%semnal dreptunghiular atat in forma initiala cat si in forma reconstruita
%pe baza a 50 de coeficienti. Semnalul este un semnal dreptunghiular cu
%factor de umplere 7.5% (3/40), iar analiza se face pe baza seriei Fourier
%exponentiale si armonice
T=40;
N=50;
t=0:0.001:T; %crearea unui vector de timp
w=2*pi/T;
q=3/40;
x=0.5*square(2*pi*t/T,7.5)+0.5; %generarea semnalului
plot(t,x);
axis([0 40 -0.2 1.2]);
X=fft(x);       %transformata Fourier 
n=-(length(X)-1)/2:((length(X))-1)/2;   %am creat un vector pentru a afisa spectrul
stem(n,fftshift(abs(X)/2000));     %afisarea spectrului de amplitudini, fara componenta continua
axis([-50 50 0 1.6]);
hold on;
plot(n,fftshift(abs(X)/2000),'--');
title('Spectrul lui x(t)');

Y=ifft(X);      %afisarea semnalului initial
y=abs(Y);
plot(t,y);
title('Semnalul dreptunghiular - Factor de umplere 7.5%');


x=q;        %semnalul primeste componenta continua - q*A=q, deoarece A=1
for m=1:50          %refacerea semnalului prin adunarea celor 50 de armonici, alaturi de componenta continua
    x=x+(2/(m*pi))*sin(m*pi*q)*cos(m*w.*t-m*pi*q);
end
hold off;
plot(t,0.5*square(2*pi*t/T,7.5)+0.5);   %trasarea graficului cu semnalul initial
hold on;        
plot(t,x,'--');               %graficul cu semnalul reconstruit  
title('x(t) (linie solida) si reconstructia folosind N coeficienti (linie punctata)')
