t=0:0.02:2;		%se creeaza 3 vectori de timp cu rezolutia de 20 ms pentru a putea reprezenta semnalul
t1=0:0.02:0.5;
t2=0.52:0.02:2;
y1=zeros(1,26);		%realizarea celor doi vectori in care se vor stoca amplitudinile 
y2=zeros(1,75);

for i=1:1:26;		%li se atribuie amplitudinile cerute celor 2 vectori
y1(i)=0.5;
end

for i=1:1:75;
y2(i)=-1;
end

s=[y1 y2];		%realizarea semnalului cerut prin concatenare
plot(t, s);		%reprezentarea grafica a semnalului
axis([0 2 -1.2 0.6 ]);
title ('Semnal dreptunghiular');
xlabel('Timp');
ylabel('Amplitudine');
