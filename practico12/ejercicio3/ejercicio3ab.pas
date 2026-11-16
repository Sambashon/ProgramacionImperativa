program ejercicio3;
const 
    b = 2;
    n = 5;

function potencia(n, b: integer) : integer;
begin
    if n = 0  then
        potencia := 1
    else
        potencia := b * potencia(n-1,b);
end;

function logaritmo(b, n: integer) : integer;
begin
    if n = 1 then
        logaritmo := 0
    else
        logaritmo := 1 + logaritmo(b, n div b);
end;

begin
    writeln(potencia(n,b));
    writeln(logaritmo(b,n));
end.