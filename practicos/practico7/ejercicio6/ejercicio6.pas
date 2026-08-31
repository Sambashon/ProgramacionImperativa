{
Como en el Ejercicio 5, implemente procedimientos con cabezales
procedure diag1 (lado : integer; c1 , c2: char);
procedure diag2 (lado : integer; c1 , c2: char);
que al ser invocados con los argumentos 5, '*'y '.'desplieguen los cuadrados
.****       ****.
..***       ***..
...**   y   **...
....*       *....
.....       .....

}
program ejercicio6;
var
    lado: integer;
    c1, c2: char;
procedure diag1 (lado : integer; c1 , c2: char);
var
    i, j: integer;
begin
    for i := 1 to lado do {salto de linea}
    begin
        for j := 1 to i do
            write(c2);
        for j := i + 1 to lado do
            write(c1);
        writeLn();
    end;
end;


procedure diag2 (lado : integer; c1 , c2: char);
var
    i, j: integer;
begin
    for i := 1 to lado do
    begin
        for j := i + 1 to lado do
            write(c1);
        for j := 1 to i do
            write(c2);
        writeLn();
    end;
end;


begin
    write('Ingrese lado: ');
    readln(lado);
    write('Ingrese c1 y c2: ');
    readln(c1);
    readln(c2);
    writeLn();
    diag1(lado, c1,c2);
    writeLn();
    diag2(lado, c1,c2);
end.