program tarea1;
const
   SEPARADOR   = ' ';   { caracter que separa palabras }
   FINALIZADOR = '.';   { caracter que determina fin de oración }
var
    cantMax: integer;
    c: char; {lo que leo}

    cantA, cantE, cantI, cantO, cantU: integer;
    cantConsonantes, cantPalabras, cantCaracteres: integer;

    oracionNula, superaMaximo: boolean;
    largoPromedio: real;

procedure contador(c: char; var cantA, cantE, cantI, cantO, cantU, cantConsonantes, cantCaracteres : integer); {cuenta el total de caracters, identifica cuales son vocales, y cuales son consonantes, INTERNO}
begin
    cantCaracteres := cantCaracteres + 1;
    case (c) of
        'a': cantA := cantA + 1;
        'e': cantE := cantE + 1;
        'i': cantI := cantI + 1;
        'o': cantO := cantO + 1;
        'u': cantU := cantU + 1;
        {para no contar los finales y los separadores}
        ' ': cantConsonantes := cantConsonantes;
        '.': cantConsonantes := cantConsonantes;
    else
        cantConsonantes := cantConsonantes + 1;
    end;
    
end;


procedure conteoOracion(maxCantPalabras: integer;
    var cantA, cantE, cantI, cantO, cantU, cantConsonantes, cantPalabras, cantCaracteres : integer;
    var oracionNula, superaMaximo : boolean;
    var largoPromedio : real);
begin  
    {asigno valores iniciales a los contadores}
    
    cantA := 0;
    cantE := 0;
    cantI := 0;
    cantO := 0;
    cantU := 0;
    cantConsonantes := 0;
    cantPalabras := 1;
    cantCaracteres := 0;
    oracionNula := false;

    {El repeat recorre mi oracion}
    repeat
        read(c); {leo caracter por caracter, y cada caracter es procesado atraves de contador}
        contador(c, cantA, cantE, cantI, cantO, cantU, cantConsonantes, cantCaracteres); {por referencia recibe los valores de las variables locales dentro de conteoOracion}
        
        if c = SEPARADOR then
            cantPalabras := cantPalabras + 1; {determino si encontramos una palabra nueva}

        if cantPalabras > maxCantPalabras then
            superaMaximo := true;

        if (cantCaracteres = 1) then
        begin
            if c = FINALIZADOR then
            begin
                cantPalabras := 0;
                oracionNula := true;  
            end;
        end;

    until (c = FINALIZADOR); {lee hasta encontrar el finalizador}
    writeln('------------------------------------');
    writeln('Analisis de oracion');
    writeln('Palabras: ', cantPalabras);
    writeln('A: ', cantA);
    writeln('E: ', cantE);
    writeln('I: ', cantI);
    writeln('O: ', cantO);
    writeln('U: ', cantU);
    writeln('Consonantes: ', cantConsonantes);

    writeln('------------------------------------');

    writeln('Excede el limite de palabras?');
    if superaMaximo then
        writeln('SI')
    else
        writeln('NO');

    writeln('------------------------------------');

    writeln('Es nula?');
    if oracionNula then
        writeln('SI')
    else
        writeln('NO');

end;


begin

    writeln('------------------------------------'); {solicitud de datos}
    write('Ingrese la cantidad maxima de palabras: ');
    readln(cantMax);
    write('Ingrese su oracion: ');
    conteoOracion(cantMax, cantA, cantE, cantI, cantO, cantU,
              cantConsonantes, cantPalabras, cantCaracteres,
              oracionNula, superaMaximo, largoPromedio);
end.