program caseEj;
var 
    r,k,t, a: integer;

begin
  r := 0;
  t := 0;
  a := 0;
writeln('Ingrese su opción');
readln(k);

case (k) of
    0: r := r+1;
    1: a := a + 1;
    2: t := t + 2;
    3: t := t + 2;
    4: t := t + 2;
end;
writeln('   r  |    a   |   t   ');
writeln(r,'|',a,'|',t);
readln;
end.