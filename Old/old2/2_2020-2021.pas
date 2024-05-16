uses sysutils;
procedure Main();
var 
    n, i, result, count: longword;
    temp: byte;
begin
    result := 4294967295;   //uint.MaxValue
    count := 0;
    readln(n);
    for i := 0 to n - 1 do
    begin
        read(temp);
        if temp = 0 then count += 1;
        if (temp = 1) or (i = n - 1) then
        begin
            if (count < result) and (count >= 2) then result := count;
            count := 0;
        end;
        if (temp > 1) then exit;
    end;
    then writeln(result)
end;
begin
    Main
end.