var
    n: longword;
begin
    readln(n);
    write(n / 110 * 100:0:2, ' ');
    writeln(n / 110 * 10:0:2);
end.