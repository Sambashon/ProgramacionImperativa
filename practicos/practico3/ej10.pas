program peso;
var 
    peso, precio, excedente: real;

begin

write('Ingrese el peso en kg: ');
readln(peso);

if(peso <= 1) then
begin
    precio := 77;
end
else
begin
    excedente := peso-1;
    precio := 77 + excedente * 56;
end;

writeln('Peso   |    Precio');
writeln(peso:3:2, '$ | ', precio:3:2, '$');

end.


