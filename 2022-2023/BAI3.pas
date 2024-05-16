function f(x: longword):longword;
var 
    i: longword = 2;
begin
    f := 2;
    if (x = 1) then exit(1);
    while (i <= sqrt(x)) do
    begin
        if (i = sqrt(x)) then
            f := f + 1
        else if (x mod i = 0) then
            f := f + 2;
        i := i + 1;
    end;
end;

procedure Main();
var 
    n, a, i: longword;
    sum: uint64 = 0;
begin
    assign(input, 'MATONG.inp');
    reset(input);
    assign(output, 'MATONG.out');
    rewrite(output);
    readln(n);
    for i := 1 to n do
    begin
        read(a);
        sum := sum + a * f(a);
    end;
    writeln(sum);
end;

begin
    Main
end.