
var
    cantMax: integer;
    c: char; {lo que leo}

    cantPalabras, cantCaracteres: integer;

function promedio(c: char; var cantPalabras, largoPalabra, largoTotalPalabras: integer) : real;
begin
    if (c = SEPARADOR) or (c = FINALIZADOR) then
    begin
        largoTotalPalabras := largoTotalPalabras + largoPalabra;
        largoPalabra := 0
    end
    else
        largoPalabra := largoPalabra + 1;

    promedio := largoTotalPalabras / cantPalabras;
end;

procedure contador(c: char; var cantA, cantE, cantI, cantO, cantU, cantConsonantes, cantCaracteres : integer; superaMaximo: boolean); {cuenta el total de caracters, identifica cuales son vocales, y cuales son consonantes, INTERNO}
begin
    if superaMaximo = false then
    begin
        cantCaracteres := cantCaracteres + 1;

        case c of
        'a': cantA := cantA + 1;
        'e': cantE := cantE + 1;
        'i': cantI := cantI + 1;
        'o': cantO := cantO + 1;
        'u': cantU := cantU + 1;

        'A': cantA := cantA + 1;
        'E': cantE := cantE + 1;
        'I': cantI := cantI + 1;
        'O': cantO := cantO + 1;
        'U': cantU := cantU + 1;

        {para no contar separador y finalizador}
        ' ': cantConsonantes := cantConsonantes;
        '.': cantConsonantes := cantConsonantes;
        else
            cantConsonantes := cantConsonantes + 1;
        end;
    end;
end;

{-------------------------------------------------------------------------------------------------------------------}

procedure conteoOracion(maxCantPalabras: integer;
    var cantA, cantE, cantI, cantO, cantU, cantConsonantes: integer;
    var oracionNula, superaMaximo : boolean;
    var largoPromedio : real);
var
    cantCaracteres, cantPalabras: integer;
    largoPalabra, largoTotalPalabras: integer;
    cantPalabrasParaPromedio: integer; { guarda cuántas palabras se llegaron a sumar en largoTotalPalabras }
begin  
    {asigno valores iniciales a los contadores}
    cantA := 0;
    cantE := 0;
    cantI := 0;
    cantO := 0;
    cantU := 0;
    cantConsonantes := 0;
    cantPalabras := 1; {empiezo en 1 pq si solo tengo una palabra sin separadores, no lo tomara como palabra y esto cubre el edge case}
    cantCaracteres := 0; {este es para saber si es nulo o no}
    oracionNula := false;
    superaMaximo := false;
    largoPalabra :=  0;
    largoTotalPalabras := 0;
    largoPromedio := 0;
    cantPalabrasParaPromedio := 0;

    {El repeat recorre mi oracion}
    repeat
        read(c); {leo caracter por caracter, y cada caracter es procesado atraves de contador}
        contador(c, cantA, cantE, cantI, cantO, cantU, cantConsonantes, cantCaracteres, superaMaximo); {por referencia recibe los valores de las variables locales dentro de conteoOracion}

        if superaMaximo = false then
        begin
            largoPromedio := promedio(c, cantPalabras, largoPalabra, largoTotalPalabras);
            cantPalabrasParaPromedio := cantPalabras;
        end;

        if c = SEPARADOR then
            cantPalabras := cantPalabras + 1; {determino si encontramos una palabra nueva}

        if cantPalabras > maxCantPalabras then
            superaMaximo := true;

        if (cantCaracteres = 1) and (c = FINALIZADOR) then
        begin
            cantPalabras := 0;
            oracionNula := true;
        end;

    until (c = FINALIZADOR); {lee hasta encontrar el finalizador}
    
    if oracionNula = false then
        largoPromedio := largoTotalPalabras / cantPalabrasParaPromedio;

end;
   