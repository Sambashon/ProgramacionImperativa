program test;

const N = 3;

type
    Tcadena = array[1..N] of char;

var
    cadena: Tcadena = ('a', 'b', 'c');
    k: integer;
    temp: char;

procedure mostrarCadena(cadena: Tcadena);
begin
    writeln('CADENA: ');
    for k := 1 to N do
        write(cadena[k]);
end;

begin
    mostrarCadena(cadena);

    for k := 1 to N do
    begin
        temp := cadena[k];
        cadena[k] := cadena[(N+1) - k];
        cadena[(N+1) - k] := temp;
    end;

    mostrarCadena(cadena);
end.