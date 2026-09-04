program tarea1;
const
   SEPARADOR   = ' ';   { caracter que separa palabras }
   FINALIZADOR = '.';   { caracter que determina fin de oración }
var
    cantMax: integer;
    c: char; {lo que leo}


procedure conteoOracion(maxCantPalabras: integer;
    var cantA, cantE, cantI, cantO, cantU, cantConsonantes : integer;
    var oracionNula, superaMaximo : boolean;
    var largoPromedio : real);

function cantPalabras(): integer; {encuentra separador y suma 1 al conteo de palabras, INTERNO}

procedure contador(c): integer; {cuenta el total de caracters, identifica cuales son vocales, y cuales son consonantes, INTERNO}
var cantA, cantE, cantI, cantO, cantU, cantConsonantes, totalCaracteres : integer;
begin

    case (c) of
        'a': cantA := cantA + 1;
        'e': cantE := cantE + 1;
        'i': cantI := cantI + 1;
        'o': cantO := cantO + 1;
        'u': cantU := cantU + 1;
        {para no contar los finales y los separadores}
        ' ': cantConsonantes := cantConsonantes - 1;
        '.': cantConsonantes := cantConsonantes - 1;
    else
        cantConsonantes := cantConsonantes + 1;
    end;

end;


begin

    writeln("------------------------------------"); {solicitud de datos}
    write("Ingrese la cantidad maxima de palabras: ");
    readln(cantMax);
    write("Ingrese su oracion: ");

    repeat
        read(c);
        contador(c);
    until (c == FINALIZADOR);
    
    writeln("------------------------------------");

    


end.