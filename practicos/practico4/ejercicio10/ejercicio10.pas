program ejercicio10;
var
    n, resultado, i: integer;
begin
    writeln('Ingrese un valor para calcular el factorial: ');
    read(n);

    resultado:=1;

    for i:=1 to n do
    begin
        resultado := resultado*i;
        writeLn(i, resultado);
    end;
    writeLn('El factorial de',n,' es:',resultado);
end.