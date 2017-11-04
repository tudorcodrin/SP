function [out] = amestecare (in);  %amesteca numerele continute in vectorul in, numere nenule
n=length(in);
for i=1:1:100
    v(i)=0;
end


for i=1:1:length(in)
    a=rand(1);		%genereaza un numar a cu distributie normala, cuprins intre 0 si 1
    b=num2str(a);	%converteste numarul a in sir de caractere
    
   for u=3:1:length(b)-1	%realizeaza o suma a codurilor ASCII corespunzatoare caracterelor din care e format b
       s=[b(u), b(u+1)];	%exceptand caracterul 0 si .
   end
   se=str2num(s);		%converteste suma obtinuta in numar intreg
     
    v(se)=in(i);		%introduce valorile vectorului in in pozitiile vectorului v rezultate ca suma codurilor ASCII
    s=0;			%reinitializeaza suma cu 0
    se=0;
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
