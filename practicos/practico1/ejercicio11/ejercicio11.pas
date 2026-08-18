program ejercicio11;
var
    a, b, resultado: real;
begin
    writeLn('Ingrese dos valores enteros: ');
    readln(a,b);

    if(a > 0) and (b > 0) then 
    begin
        resultado := exp(b * ln(a));
        writeLn(resultado:0:4   );
    end {aqui no va un punto y coma}
    else 
    begin
        writeLn('A o B es menor a 0');
    end;


end.