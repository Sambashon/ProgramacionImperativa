program ej3;
const 
    N = 3;
type
    CadenaN = array [1..N] of integer;

{a
Escriba la funci ́on llamada cantMayores que, dados un arreglo de enteros y un entero num, devuelve la
cantidad de valores almacenados en el arreglo que son mayores que num.
function cantMayores(cadn:CadenaN; num:integer) : integer;
}

function cantMayores(cadn: CadenaN; num: integer) : integer;
var i : integer;
begin
    cant := 0;
    for i:= 1 to N do
        if cadn[i] > num then
            cantMayores := cantMayores + 1;
    cantMayores := cant;
end;
