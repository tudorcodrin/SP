function [media, vector_patrat, inmultire] = prelucrare (v)

for i=1:1:length(v)
    a(i)=real(v(i));
end
media=mean(a);

for i=1:1:length(v)
    vector_patrat(i)=(v(i).^2);
end

for i=1:1:length(v)
    inmultire(i)=(v(i)*(v(i).'));
end

end