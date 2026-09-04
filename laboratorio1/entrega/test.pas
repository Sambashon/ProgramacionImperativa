program test;
var
    entrada: char;
    cant: integer;

begin
    write('ingrese la oracion: ');

    repeat
        read(entrada);
        cant := cant+1;
    until (entrada = '.');

    writeln('La cantidad de letras es: ', cant);

end.