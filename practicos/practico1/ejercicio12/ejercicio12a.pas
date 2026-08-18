{
Escriba un programa que calcule el perı́odo de un péndulo de longitud l y emita el
resultado en la salida estándar. El perı́odo de un péndulo está dado por la siguiente
ecuación t = 2 × pi × sqrt(l/g) donde pi = 3,14, g = 9,8 y l es leı́do de la entrada
estándar.
}
program ejercicio12a;
const
    pi = 3.14;
    g = 9.8;
var
    t, l: real;
begin


writeln('Ingrese l: ');
readln(l);

t := 2 * pi * sqrt(l/g);

writeln('La respuesta es:', l:0:2);
end.

