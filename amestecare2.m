function [out] = amestecare2 (in);  %amesteca numerele continute in vectorul in, numere nenule.
n=length(in);				%Numarul maxim de componente ale lui in este 100.
for i=1:1:100
    v(i)=0;
end

k=1;
while (k<n)
    p=randi(100);
    if(v(p)==0) 
    v(p)=in(k);		%introduce valorile vectorului in in pozitiile vectorului v rezultate ca suma codurilor ASCII
    k=k+1;
    end
end
 i=1;				
    while(i<n)			%bucla pentru a parcurge vectorul v pana la gasirea unei valorile nenule
    for j=1:1:100		%cand o valoare nenula este inlocuita se introduce in prima pozitie a vectorului in
    if (v(j)~=0);		%apoi se incrementeaza contorul i pentru a introduce in a doua pozitie
        in(i)=v(j);
        i=i+1;
    end
     end
      
    end
out=in;
end
