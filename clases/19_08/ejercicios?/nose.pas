program algo;
var
    i, suma: integer;
begin
    suma := 0;
    i := 3;
    while i <= 7 do
    begin
        suma := suma + i;
        i := i + 2;
        writeln(i, suma);
    end;
    writeln(i, suma);
end.

{salida esperada 9 15}