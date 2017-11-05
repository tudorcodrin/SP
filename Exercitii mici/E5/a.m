F = 50;
t = 0:0.01:0.2;  %semnalul se distorsioneaza
%t = 0:0.0002:0.2;  semnalul se reprezinta mult mai bine, deoarece pasul este
                    %mult mai mic
s = 2*sin(2*pi*F*t);
plot(t,s,'.-'),
xlabel('Timp [s]'),
grid 