procedure Main();
var 
    a: longint;
    result: uint64 = 0;
begin
    readln(a);
    if (a <= 5) then
        result := result + a * 8000
    else 
        result := result + 5 * 8000;
    a := a - 5;
    if (a > 0) then 
    begin
        if (a <= 5) then
        result := result + a * 10000
    else 
        result := result + 5 * 10000;
    a := a - 5;
    end;
    if (a > 0) then 
    begin
        if (a <= 5) then
        result := result + a * 14000
    else 
        result := result + 5 * 14000;
    a := a - 5;
    end;
        if (a > 0) then 
    begin
        if (a <= 5) then
        result := result + a * 20000
    else 
        result := result + 5 * 20000;
    a := a - 5;
    end;
    if (a > 0) then 
        result := result + a * 30000;
    writeln(result + result / 10:0:0);
end;

begin
    Main
end.