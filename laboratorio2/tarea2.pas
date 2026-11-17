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
    i := 1;
    encontre := false;
    while (i <= banco.cantidad) and (not encontre) do {recorro hasta que encuentro}
    begin
        if sonIgualesPalabras(palabra, banco.arreglo[i].palabra) then
        begin
            encontre := true;
            idBanco := i;
        end
        else
        begin
            encontre := false;
            i := i + 1;
        end;
    end;
end;


procedure insertarPalabra(pos: TPosicion; ori: TOrientacion; palabra: TPalabra; var partida : TPartida); 
var
    encontre : boolean;
    idBanco, idTramo, i : integer;
begin
    buscarPalabraEnBanco(palabra, partida.banco, encontre, idBanco);
    buscarTramoPorPosicion(pos, ori, partida.tramos, encontre, idTramo);

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
            partida.tablero[pos.fila, pos.columna].multiplicidad := partida.tablero[pos.fila, pos.columna].multiplicidad + 1
        else
        begin
            {si no esta escrito entonces se setea la multiplicidad en 1}
            partida.tablero[pos.fila, pos.columna].multiplicidad := 1;
            {colocacion de letra}
            partida.tablero[pos.fila, pos.columna].letra := palabra.arreglo[i];
            {actualizacion de escrita}
            partida.tablero[pos.fila, pos.columna].escrita := true;
        end;
        if i < palabra.largo then {para no excederme del total de letras, me daba runtime error porque seguia intentando sumar incluso luego de exceder el limite }
        case ori of
            horizontal : pos.columna := pos.columna + 1;
            vertical: pos.fila := pos.fila + 1;
        end; 
    end;
end;


procedure buscarTramoPorIdBanco(idBanco: integer; tram: TTramos; var encontre: boolean; var idTramo: integer);
var 
    i : integer;
begin
    i := 1;
    encontre := false;
    while (i <= tram.cantidad) and (encontre = false) do {busco en tram y repito hasta que encuentre o me quede sin tramos por recorrer}
    begin
        if (tram.arreglo[i].ocupado = true) and (tram.arreglo[i].idBanco = idBanco) then {pregunto si esta ocupado, y luego pregunto }
        begin
            encontre := true;
            idTramo := i;
        end;
        i := i + 1;
    end;
end;

procedure eliminarPalabra(idBanco: integer; var partida : TPartida);
var
    encontre : boolean;
    idTramo, i : integer;
    tramo : TTramo;
begin
    buscarTramoPorIdBanco(idBanco, partida.tramos, encontre, idTramo);
    tramo := partida.tramos.arreglo[idTramo];

    for i := 1 to partida.banco.arreglo[idBanco].palabra.largo do {recorro para eliminar caracteres}
    begin
        partida.tablero[tramo.posicion.fila, tramo.posicion.columna].multiplicidad := partida.tablero[tramo.posicion.fila, tramo.posicion.columna].multiplicidad - 1;
        if (partida.tablero[tramo.posicion.fila, tramo.posicion.columna].multiplicidad = 0) then
        begin
            partida.tablero[tramo.posicion.fila, tramo.posicion.columna].escrita := false;
        end;
        if i < partida.banco.arreglo[idBanco].palabra.largo then {lo mismo que insertar palabra, me excedia del limite del tamanio del tablero y en la ultima iteracion intentaba sumar uno mas}
        begin
            if tramo.orientacion = horizontal then
                tramo.posicion.columna := tramo.posicion.columna + 1
            else
                tramo.posicion.fila := tramo.posicion.fila + 1;
        end;
    end;

    partida.tramos.arreglo[idTramo].ocupado := false;
    partida.banco.arreglo[idBanco].insertada := false;
end;

function calcularPuntaje(tablero : TTablero) : TNatural;
var
    filas, columnas, resultado : integer;
begin
    resultado := 0;
    for filas := 1 to TAMANIO_TABLERO do
        for columnas := 1 to TAMANIO_TABLERO do
            if (tablero[filas, columnas].escrita) then
                resultado := resultado + 1;
    calcularPuntaje := resultado;
            
end;
