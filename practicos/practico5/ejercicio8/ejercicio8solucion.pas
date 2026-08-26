program ejercicio8;
var
    resultado, entrada: integer;
    operador: char;
begin
    read(entrada);
    read(operador);
    while operador <> '=' do
    begin
        read(entrada);
        case operador of
            '+': resultado := resultado + entrada;
            '-': resultado := resultado - entrada;
            '/': resultado := resultado DIV entrada;
            '*': resultado := resultado * entrada;
        end;
        read(operador);
    end;
    writeln(resultado);
end.