var n, i, result: longword;
begin
    result := 0; i := 5;
    readln(n);
    while i <= n do begin
        result += n div i;
        i *= 5;
    end;
    writeln(result);
end.