program ej4;
const
    K = 3;
    L = 3;
type                {filas, columnas}
    TipoMatriz = array[1..N, 1..M] of integer; {declaracion para uso normal la uso como se ve abajo}

var
    matriz: TipoMatriz; {declaracion de arreglo normal}

procedure cargar(var matriz : TipoMatriz);
var i,j integer;
begin
    writeln('Ingrese una matriz de ', K:2, 'x', L:2);

    for i:= 1 to N do
        for j := to N do
            read(matriz[i,j]);
end;

procedure swap(matriz : TipoMatriz; n, m : integer);
var             {M es la cantidad de columas}
    aux : array[1..M] of integer; {declaracion anonima}
begin
    aux := matriz[m];
    matriz[m] := matriz [n];
    matriz[n] := aux;
end;

procedure imprimirMatriz(matriz: TipoMatriz);
var i,j integer;
begin
    for i := 1 to K do
        for j := 1 to L do
            write(matriz[i,j]);
            
end;

begin
cargar(Matriz);

writeln('Ingrese las filas intercambiar');
read(m);
read(n);

if (n < 1) or (n > K) or (m < 1) or (m > L) then
    writeln('Número de filas no válido');
else
begin
    swap(matriz, n, m);
end;

 
end.