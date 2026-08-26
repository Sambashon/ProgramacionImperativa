program ejercicio7;

var
	m, n, resultado, mayor, i, k: integer;

begin
    resultado := 0; 
    writeln('Ingrese dos números enteros');
    readln(n, m);
    
    if (n > m) then 
    begin
        mayor := n * 10; 
        writeln(mayor);

        while (resultado < mayor) do
        begin
            for k := m to n do
            begin
                writeln('tabla del ', k);
                for i := 1 to 10 do
                begin
                    resultado := k * i;
                    writeln(resultado);
                end;
            end; 
        end;
    end
    else
    begin
        writeln('Error');
    end;
end.