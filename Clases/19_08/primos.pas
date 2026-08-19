program primos;
var
    fin, numero, divisor : integer;
begin
readln(numero);
if numero < 2 then
    writeln('El numero no es primo')
else
begin
    fin := trunc(sqrt(numero));
    divisor := 2;
    while (divisor <= fin) and (numero mod divisor <> 0) do
        divisor := divisor + 1;

        if divisor <= fin then 
            writeln('El numero ',numero:0,' no es primo')
        else
            writeln('El numero ',numero:0,' es primo')
    end;
end.