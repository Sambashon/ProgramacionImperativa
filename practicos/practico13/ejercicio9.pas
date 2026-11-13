program ejercicio9; 
const
    MAX = 5;
type
    RangoCalificacion = 1..12;
    TAsignatura = (Criptografia, Programacion, Calculo);
    TEstudiante = record
        idEstudiante : integer;
        asignatura : TAsignatura;
        calificacion : RangoCalificacion;
    end;

    rango = 1..MAX;
    EstudiantesAsignatura = array[rango] of TEstudiante;

function esMayor(a, b: TEstudiante): boolean;
begin
    esMayor := (a.asignatura > b.asignatura) or (a.asignatura = b.asignatura) and (a.calificacion > b.calificacion) or (a.calificacion = b.calificacion) and (a.idEstudiante > b.idEstudiante);
end;


procedure ordenarPorAsignatura(var e: EstudiantesAsignatura);
var
    i, j, j_max : rango;
    aux : TEstudiante;
begin
    for  i := MAX downto 1 do
    begin
        j_max := 1;
        for j := 2 to i do
            if esMayor(e[j], e[j_max]) then
                j_max := j;
        aux := e[i];
        e[i] := e[j_max];
        e[j_max] := aux;
    end;
end;
begin
end.

{
function esMayor(a, b: TEstudiante): boolean;
begin
    if a.asignatura > b.asignatura then
        esMayor := true
    else if a.asignatura = b.asignatura then
    begin
        if a.calificacion > b.calificacion then
            esMayor:= true
        else if a.calificacion = b.calificacion then
        begin
            if a.idEstudiante > b.idEstudiante then
                esMayor true
            else
                esMayor false;
        end
        else
            esMayor := false;
    end
    else
        esMayor := false;
end;
}

{apunte del pizarron}



