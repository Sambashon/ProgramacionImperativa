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
    while (1 <= banco.cantidad) and (not encontre) do {recorro hasta que encuentro}
    begin
        if sonIgualesPalabras(palabra, banco.arreglo[i].palabra) then
        begin
            encontre := true;
            idBanco := i;
        end
        else
            encontre := false;
            i := i + 1;
    end;
end;


procedure insertarPalabra(pos: TPosicion; ori: TOrientacion; palabra: TPalabra; var partida : TPartida); 
var
    encontre : boolean;
    idBanco, idTramo, i : integer;
begin
    buscarPalabraEnBanco(palabra, partida.banco, encontre, idBanco);
    buscarTramoPorPosicion(ori, partida.tramos, encontre, idTramo);

    {actualizo el tramo con ocupado e id banco y si esta insertada o no}
    partida.tramos.arreglo[idTramo].ocupado := true;
    partida.tramos.arreglo[idTramo].idBanco := idBanco;
    partida.banco.arreglo[idBanco].insertada := true;

    {colocar las letras en la posicion correspondiente del tablero | bueno, en donde lo pongo? pos es la primer posicion de la casilla,
    capaz con un for puedo escribir a lo largo del conjunto de casillas correspondientes y con un if en base a la orientacion, 
    puedo distinguir si incremento la coordenada x o y}

    for i := 1 to palabra.largo do
    begin
        {actualizacion de multiplicidad | si en esa casilla ya existe una letra igual entonces multiplicidad 1, no me deberia de preocupar por reescribir porque total son la misma letra}
        if (partida.tablero[pos.fila, pos.columna].escrita = true) and (partida.tablero[pos.fila, pos.columna].letra = palabra.arreglo[i]) then
            partida.tablero[pos.fila, pos.columna].multiplicidad := 2
        else
        begin
            partida.tablero[pos.fila, pos.columna].multiplicidad := 1;
            {colocacion de letra}
            partida.tablero[pos.fila, pos.columna].letra := palabra.arreglo[i];
            {actualizacion de escrita}
            partida.tablero[pos.fila, pos.columna].escrita := true;
        end;
            
        case ori of
            horizontal : pos.fila := pos.fila + 1;
            vertical: pos.columna := pos.columna + 1;
        end; 
    end;
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
