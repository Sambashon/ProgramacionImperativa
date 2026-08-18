program ejercicio6;
var 
    cantidad, salida, i, entrada, max, min: integer;
begin
    writeLn('Ingrese un valor para cantidad');
    read(cantidad);
    max:=0;
    min:=0;
    for i:= 1 to cantidad do
    begin
        writeln('Ingrese un digito: ', i:0,'/',cantidad:0);
        read(entrada);
        
        if(entrada > max) then
            max := entrada;
        if(entrada < min) then
            min := entrada;
    end; 

    writeLn('El número mayor es:', max);
    writeLn('El número menor es:', min);
end.
