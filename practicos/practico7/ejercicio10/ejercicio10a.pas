{
Escriba una funci´on llamada distancia que tenga cuatro par´ametros de entrada (reales) llamados x1,
y1, x2, y2, que representan las coordenadas en el plano de los puntos (x1, y1) y (x2, y2). La funci´on
debe calcular y retornar la distancia entre ambos puntos.
}

program ejercicio10a;
var
    x1,y1,x2,y2,: real;

function distancia(x1, y1, x2, y2: real) : real;
begin
    distancia := sqrt(sqr(x1-x2)+sqr(y1-y2));
end;

begin
    writeLn('Ingrese x1, y1, x2, y2');
    read(x1,y1,x2,y2);
    write('La distancia entre los puntos es: ', distancia(x1,y1,x2,y2):0:2);
end.
