program baskara;

var
    a, b, c, r1, r2, delta: real;

begin
    write('Ingrese los numero perro');
    readln(a, b, c);

    delta := sqr(b) - 4*a*c;

    if (delta < 0) or (a = 0) then
    begin
        writeln('Invalido');
    end
    else
    begin
        r1 := (-b + sqrt(delta))/(2*a);
        r2 := (-b - sqrt(delta))/(2*a);

        writeln(r1:2:2, ' | ', r2:2:2);
    end;
end.