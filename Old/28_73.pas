uses math;
procedure Main();
var 
    arr: array of boolean;
    f, i, j: byte;
    p: longint;
    flag: array [0..0] of boolean;
begin
    while true do 
    begin
        arr := [false];
        readln(f, p);
        if (f < 1) or (f > 31) or (p > power(2, f) - 1) or (p < 1) then continue;
        for i := 2 to f do
        begin
            flag[0] := true;
            j := 0;
            while j < power(2, i) do
            begin
                insert(flag, arr, j);
                flag[0] := not(flag[0]);
                j += 2;
            end;
        end;
        //if (arr[p - 1]) then writeln('U') else writeln('D');
        for i := 0 to round(power(2, f) - 2) do if (arr[i]) then write('U ') else write('D ');
        writeln;
    end;
end;
begin
    Main;
end.