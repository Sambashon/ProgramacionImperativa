{
Todo n´umero natural positivo num tiene una descomposici´on ´unica de la forma num =
2n × val, donde val es un n´umero natural impar y n >= 0. Escriba un programa en Pascal
que lea de la entrada est´andar un entero positivo num, calcule y exhiba los correspondientes
valores de val y n. Incluya mensajes de salida con etiquetas descriptivas para solicitar los
valores.
}
program ejercicio10;
var 
    num, val, n: integer;
begin
    n := 0;
    val := 1;

    writeln('Ingrese num:');
    readln(num);
    write(' ');
    while (num mod 2 = 0) do
    begin
        num := num DIV 2;
        n := n+1;
        {writeln(num, n);}
    end;
    if(num mod 2 <> 0) then
    begin
        val := num;
        writeln(' = ','2^',n:0,'*',val:0)
    end;

end.