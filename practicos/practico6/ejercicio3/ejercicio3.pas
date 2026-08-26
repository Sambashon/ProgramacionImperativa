program ejercicio3;
var
    v, resultado: real;
    a: integer;
begin
    resultado := 0;

    writeln('Ingrese un número real: ');
    readln(v);

    write('Ingrese los números de los coeficientes: ');
    read(a);

    while (a <> -1) do
    begin
        
        resultado := resultado * v + a;
        read(a);
    end;

    writeln(resultado:0:2);
end.