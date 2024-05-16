var d,c,y,x,n :longword;
begin
    readln(n);
    for y := 0 to n do
    begin
        c := 1;
        for x := 0 to y do
        begin
            write(c);
            write(' ');
            c := c * (y - x) div (x + 1);
        end;
        writeln;
    end;
end.