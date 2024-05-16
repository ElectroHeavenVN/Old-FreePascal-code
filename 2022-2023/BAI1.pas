procedure Main();
var 
    n, a, b, c, count: longword;
begin
    count := 0;
    assign(input, 'BSBB.inp');
    reset(input);
    assign(output, 'BSBB.out');
    rewrite(output);
    readln(n);
    for c := 1 to n - 1 do
    begin
        b := 1;
        while (b < sqrt(n - c)) do
        begin
            if frac((n - c) / b) = 0 then
                count := count + 2;
            b := b + 1;
        end;
        if (frac(sqrt(n - c)) = 0) then
            count := count + 1;
    end;
    writeln(count);
end;

begin
    Main
end.