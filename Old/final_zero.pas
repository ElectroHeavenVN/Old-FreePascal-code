var n, i, j, result: longword;
begin
    while true do begin
        result := 0;
        readln(n);
        i := 5;
        while i <= n do 
            begin
            j := 5;
            while j <= n do 
                begin
                if i mod j = 0 then result += 1;
                j *= 5;
                end;
            i += 5;
        end;
        writeln(result);
    end;
end.