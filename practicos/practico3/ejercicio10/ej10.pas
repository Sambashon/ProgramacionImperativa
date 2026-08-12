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
    precio := 77 + trunc(excedente) * 56;
    if trunc(excedente) <> excedente then
    precio := precio + 56;
end;

writeln('Peso   |    Precio');
writeln(peso:3:2, '$ | ', precio:3:2, '$');

end.


