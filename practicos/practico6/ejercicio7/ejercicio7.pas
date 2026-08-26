program ejercicio7;

var
	m, n, resultado, mayor, i: integer;

begin
    writeln('Ingrese dos números enteros, el primer');
    readln(n, m);

    if (n > m) then
    begin
        mayor := mayor * 10;
        
        while (resultado < mayor) do
        begin
            for i =: 1 to 10 do
                resultado := m * i 
        end;
    end;
end.