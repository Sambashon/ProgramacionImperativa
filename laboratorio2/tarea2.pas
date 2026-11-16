function sonIgualesPalabras(palabra1, palabra2: TPalabra): boolean;
begin
    if palabra1.largo = palabra2.largo then
    begin
        if (palabra1.largo = 0) and (palabra2.largo = 0) then
            sonIgualesPalabras := true
        else
        begin
            if palabra1.arreglo[palabra1.largo] = palabra2.arreglo[palabra2.largo] then {reviso el ultimo caracter, si son iguales sigo con el paso inductivo}
            begin
                palabra1.largo := palabra1.largo - 1;
                palabra2.largo := palabra2.largo - 1;
                sonIgualesPalabras := sonIgualesPalabras(palabra1, palabra2);
            end
            else
                sonIgualesPalabras := false;
        end;
    end
    else
        sonIgualesPalabras := false;
end;

procedure buscarPalabraEnBanco(palabra: TPalabra; banco: TBancoPalabras; var encontre : boolean; var idBanco : integer);
var i : integer;
begin
    {
    ESTA MAL PORQUE REPITE INCLUSO SI Y A ENCONTRO LA PALABRA Y VUELVE A ACTUALIZAR ENCONTRE E IDBANCO
    for i := 1 to banco.cantidad do
    begin
        if sonIgualesPalabras(palabra, banco.arreglo[i].palabra) then
        begin
            encontre := true;
            idBanco := i;
        end
        else
            encontre := false;
    end;}
end;


procedure insertarPalabra(pos: TPosicion; ori: TOrientacion; palabra: TPalabra; var partida : TPartida);
var
    encontre : boolean;
    idBanco : integer;
begin
    buscarPalabraEnBanco(palabra, partida.banco, encontre, idBanco);
    if partida.banco[idBanco].insertada = false then
        write('Palabra no en el banco');
end;


procedure buscarTramoPorIdBanco(idBanco: integer; tram: TTramos; var encontre: boolean; var idTramo: integer);
begin

end;

procedure eliminarPalabra(idBanco: integer; var partida : TPartida);
begin

end;

function calcularPuntaje(tablero : TTablero) : TNatural;

begin
    { Reemplace este comentario y la instrucción siguiente por el código correspondiente a calcularPuntaje }
    calcularPuntaje := 0;
end;
