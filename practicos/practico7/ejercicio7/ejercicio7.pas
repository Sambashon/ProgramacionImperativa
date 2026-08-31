{
Implemente un procedimiento con cabezal
procedure dibujo (ancho : integer; c: char);
que invoque los procedimientos de los Ejercicios 5 y 6 y despliegue,
*
**
***
****
*****
******
*******
********
*********
********** 1
********** 2
********** 3
********** 4
********** 5
********** 6
********** 7 
********** 8
********** 9
********** 10
********** 11
*********
********
*******
******
*****
****
***
**
*
al ser invocado con los argumentos 10 y '*'.
}

program ejercicio10;
var
    ancho: integer;
    c: char;

procedure dibujo (ancho : integer; c: char);
var
    i, j: integer;
begin

    for i := 1 to ancho do {top part}
    begin
        for j := 1 to i do
            write(c);
        writeLn();
    end;

    for i := 1 to ancho -1 do {middle part}
    begin
        for j := 1 to ancho do
            write(c);
        writeLn();
    end;

    for i := ancho downto 1 do {top part}
    begin
        for j := 1 to i do
            write(c);
        writeLn();
    end;
end;

begin
    write('Ingrese la cantidad y el caracter: ');
    readln(ancho);
    readln(c);
    writeLn();
    dibujo(ancho, c);

end.
