t=[0 0.2 0.4 0.5 0.5 0.6 0.8 1 1.2 1.4 1.6 1.8 2]  %se realizeaza vectorul de timp

y1=zeros(1,4);		%realizarea celor doi vectori in care se vor stoca amplitudinile 
y2=zeros(1,9);

for i=1:1:4;		%li se atribuie amplitudinile cerute celor 2 vectori
y1(i)=0.5;
end

for i=1:1:9;
y2(i)=-1;
end

s=[y1 y2];		%realizarea semnalului cerut prin concatenare
plot(t, s);		%reprezentarea grafica a semnalului
axis([0 2 -1.2 0.6 ]);
title ('Semnal dreptunghiular');
xlabel('Timp');
ylabel('Amplitudine');
