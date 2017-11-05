for i=1:1:50
    v(i)=randn(1);
end

for i=1:1:50
    if(v(i)<0);
        disp(v(i));
    end
end