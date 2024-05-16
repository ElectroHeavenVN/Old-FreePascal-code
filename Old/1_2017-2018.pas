procedure Main();
var 
    n: word;
    price: extended = 0;
begin
    readln(n);
    if n <= 5 then
        price += n * 6500
    else 
        price += 5 * 6500;
    if n > 5 then
        n -= 5
    else 
        n := 0;
    if n <= 10 then
        price += n * 7800
    else
        price += 10 * 7800;
    if n > 10 then
        n -= 10
    else 
        n := 0;
    if n <= 10 then
        price += n * 9200
    else
        price += 10 * 9200;
    if n > 10 then
        n -= 10
    else 
        n := 0;
    if n > 0 then 
        price += n * 10300;
    writeln(price:0:2);
    writeln(price / 100 * 12:0:2);
    writeln(price/ 100 * 112:0:2);
end;

begin
    Main
end.