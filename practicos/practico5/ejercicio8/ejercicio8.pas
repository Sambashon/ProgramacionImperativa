{
Se desea implementar un programa que realice las funciones de una calculadora simple. Los
datos de entrada son una secuencia de enteros sin signo y los operadores +, *, / y -, seguida
de un signo =. Cada entero de la entrada est ́a seguido por un operador salvo el  ́ultimo que
est ́a seguido por el s ́ımbolo =. Los operadores se aplican en el orden en que aparecen sin
importar la precedencia. Si bien se ingresa el operador de la divisi ́on con el s ́ımbolo /, el
comportamiento debe ser el de DIV. Asuma que se ingresa al menos un n ́umero.
}
program ejercicio8;
var
    operador, entrada: char;
    resultado, num: integer;
begin
resultado := 0;

while (entrada <> '=') do
begin
    read(entrada);
    if (entrada in ['1','2','3','4','5','6','7','8','9']) then
    begin
        num := ord(entrada) - ord('0');
        writeln('Es un número')
    end;
    else0
    begin
        writeln('Es un operador');
        operador := entrada
    end;
end;

end.