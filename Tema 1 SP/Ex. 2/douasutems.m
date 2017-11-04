t=0:0.2:20;  %Alegem reprezentarea pe 4 perioade a semnalului, cu rezolutia de 20 ms
s=sawtooth((2*pi*0.2*t),0.4);  %functia care realizeaza semnalul. Parametrul WIDTH=0.4 asigura panta de 1 V/s
plot(t, s);
title ('Semnal triunghiular');
xlabel('Timp');
ylabel('Amplitudine');
