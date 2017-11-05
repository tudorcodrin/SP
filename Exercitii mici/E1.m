a=0:0.1:2;
b=ones(length(a),1);    %trebuie sa aiba numarul de coloane corespunzator lungimii lui a - 21
c=a*b;      %se va obtine 21
d=a.*b; %va da eroare, deoarece nu se poate inmulti element cu element un vector linie cu unul coloana