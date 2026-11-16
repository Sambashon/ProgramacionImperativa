program ejercicio2;
const 
    n = 2048;
    d = 1;

function cantDigitos(n: integer) : integer;
begin
    if (n div 10 = 0) then
        cantDigitos := 1
    else
        cantDigitos := cantDigitos(n div 10) + 1; {elimnina el ultimo digito y suma uno}
end;

function sumaDigitos(n: integer) : integer;
begin
    if (n div 10 = 0) then
        sumaDigitos := n
    else
        sumaDigitos := n mod 10 + sumaDigitos(n div 10); {elimina el ultimo digito y suma el ultimo digito }
end;

{function contieneDigito(n, d : integer) : boolean;
begin 
    if (n div 10 = 0)  then me fijo si es el ultimo numero y si son iguales n y d
    begin
        if (n = d) then
            contieneDigito := true
        else
            contieneDigito := false;
    end
    else 
    begin
        if (n mod 10 = d)then
            contieneDigito := true
        else
            contieneDigito := contieneDigito((n div 10), d);
    end;
end;
}

function contieneDigito(n, d: integer): boolean;
begin
    if (n mod 10 = d) then {se fija si el ultimo numero es igual a d y termina en true}
        contieneDigito := true
    else if (n div 10 = 0) then {si es el ultimo numero entonces termina en false}
        contieneDigito := false
    else {si no es el ultimo numero, y no es igual a d entonces ocurre el caso recursivo}
        contieneDigito := contieneDigito(n div 10, d); {elimina el ultimo numero recien analizado}
end;

begin
    write(cantDigitos(n));
    writeln('');
    write(sumaDIgitos(n));
    writeln('');
    write(contieneDigito(n,d));
end.