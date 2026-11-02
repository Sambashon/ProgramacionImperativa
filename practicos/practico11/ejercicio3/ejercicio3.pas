program ejercicio3;
const
    MAX = 10; {valor mayor a 0}
    FIN = '.';
type
    Cadena = record
        letras : array [1..MAX] of char;
        largo: 0..MAX;
    end;

procedure cargarCadena(var conjunto: Cadena);
var
    i: integer;
    caracter : char;
begin
    i := 0;
    read(caracter);
    while (i < MAX) and (caracter <> FIN) do
    begin
        i := i + 1;
        conjunto.letras[i] := caracter;
        read(caracter);
    end;

    conjunto.largo := i;
end;

function contarOcurrencias(frase: Cadena; letra: char):integer;
var retorno, i: integer;
begin
    retorno := 0;
    for i := 1 to frase.largo do
        if letra = frase.letras[i] then
            retorno := retorno + 1;
    contarOcurrencias := retorno;
end;




procedure mostrarCadena(conjunto: Cadena);
var i : integer;
begin
    for i := 1 to conjunto.largo do
        write(conjunto.letras[i]);
end;

var
    ocurrencias : integer;
    caracter : char;
    conjunto : Cadena;
begin
    writeln('Ingrese su cadena de texto: ');
    cargarCadena(conjunto);
    readln();{el read de abajo terminaba leyendo el enter que quedaba pendiente al parecer?}
    writeln('Ingrese la letra a contar: ');
    read(caracter);
    ocurrencias := contarOcurrencias(conjunto, caracter);
    writeln('Existen ',ocurrencias, ' ', caracter, ' en la cadena');
end.