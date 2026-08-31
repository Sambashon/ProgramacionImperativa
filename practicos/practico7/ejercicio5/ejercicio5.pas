{
Implemente el procedimiento
"procedure rectangulo (altura , ancho : integer; c: char);"

que dibuja en la salida estandar un rect ́angulo con lados altura y ancho “pintado” con el caracter c. Por
ejemplo, al invocar sq(4, 6, '*') se debe desplegar
**********
**********
**********
**********
}

program ejercicio5;
var 
    altura, ancho, i, y: integer;
    c: char;
procedure rectangulo (altura , ancho : integer; c: char);

begin
    for i := 1 to altura do
    begin
        for y := 1 to ancho do
            write(c);

        writeLn();
    end;
end;


begin
    write('Ingrese ancho y altura: ');
    readln(ancho, altura);
    
    write('Ingrese caracter: ');
    readln(c);

    rectangulo(altura, ancho, c);
end.