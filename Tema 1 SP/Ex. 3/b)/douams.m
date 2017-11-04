t=0:0.002:1.006;	%vectorul timp cu rezolutia de 2 ms care se extinde pana la 1.006 s pentru a putea reprezenta tot semnalul
y1=zeros(1,126);	%se realizeaza vectori nuli de dimensiune 126. 126 s-a ales deoarece la 2ms corespund de valori ale vectorilor
y2=zeros(1,126);

y3=zeros(1,126);
y4=zeros(1,126);

in=[-1 1 -3 3];		%vectorul in contine amplitudinile fiecarui nivel
out=amestecare(in);	 %vectorului out i se atribuie valorile vectorului i amestecat

for i=1:1:126;		%se creeaza vectori cu amplitudinile cerute
    y1(i)=out(1);
end

for i=1:1:126;
    y2(i)=out(2);
end

for i=1:1:126;
    y3(i)=out(3);
end

for i=1:1:126;
    y4(i)=out(4);
end


semnal=[y1 y2 y3 y4];		%se realizeaza vectorul semnal prin concatenare
plot(t, semnal);		%se reprezinta grafic semnalul obtinut

title('Semnal dreptunghiular multinivel, aleator')
xlabel('Timp');
ylabel('Amplitudine');
grid;
axis([0 1 -3 3]);