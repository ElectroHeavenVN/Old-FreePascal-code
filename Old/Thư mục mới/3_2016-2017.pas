var m, n: longword;
function Next5(n: longword):longword;
var i: longword = 1;
begin
    while true do 
    begin
        if (n + i) mod 5 = 0 then exit(i);
        //if (i > n) then exit(0);
        i += 1;
    end;
end;
procedure Main();
var 
    i: longword;
    count: longword = 0;
begin
    readln(n, m);
    for i := 1 to n do
    begin
        count += abs(m - Next5(i)) div 5;
        if (m = Next5(i)) then count += 1;
    end;
    writeln(count);
end;
begin
    Main;
end.