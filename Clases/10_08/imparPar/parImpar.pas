program parImpar;
var
    num, res: integer;
begin

    write('ingrese un número: ');
    readln(num);

    res := num mod 2;

    if (res = 0) then
    begin
        writeln('El resultado es par');
    end
    else
    begin
        writeln('El resultado es impar');
    end;
end.
