program prueba;

function sumar(largo: integer; numeros: array): integer;
begin
    if largo = 1 then
        sumar := numeros[1];
    else
        sumar := numeros[largo] + sumar(largo, numeros[largo-1]);

end

var
    largo : integer;
    numeros: array[1..largo] of integer

begin
    largo := 10;

end