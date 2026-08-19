{
Escriba programa que calcule el área de un triángulo cuyos lados son de longitud a,
b y c (los cuales serán leidos de la entrada estándar) y emita el resultado en la salida
estándar. El área A de un triángulo se puede calcular a partir de sus lados usando la
fórmula A = sqrt(s × (s − a) × (s − b) × (s − c)) donde s = (a + b + c)/2.
}

program ejercico12b;

var
    a,b,c,s,resultado: real;

begin
    writeln('Ingrese a b y c:');
    readln(a,b,c);

    s:= (a+b+c)/2;
    resultado:=  sqrt(s * (s - a) * (s * b) * (s - c));

    writeln('El resultado es:', resultado:0:2);
end.