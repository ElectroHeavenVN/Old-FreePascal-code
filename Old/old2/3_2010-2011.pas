uses Math;
procedure Main();
var n: longword;
begin
    readln(n);
    if (((power(floor(sqrt(5 * n * n - 4)), 2) = 5 * n * n - 4) or (power(floor(sqrt(5 * n * n + 4)), 2) = 5 * n * n + 4))) then 
    begin
        writeln('YES');
        if n = 1 then write('1 ');
        write(round(2.078087 * ln(n) + 1.672276));
    end else writeln('NO');
end;
begin
    Main
end.