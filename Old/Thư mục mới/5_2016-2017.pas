{$M 60000000,0,60000000}
uses math;
var
    m, t, i: longword;
    //f, f2: text;
function Count(n: uint64):uint64;
begin
    if (n <= 2) then exit(0);
    if (n = 3) then exit(1);
    exit(floor(power(2, n - 3)) + Count(n - 1) + Count(n - 2) + Count(n - 3));
end;
begin
    assign(input, 'BAI5.inp');
    reset(input);
    assign(output, 'BAI5.out');
    rewrite(output);
    readln(t);
    for i := 1 to t do
    begin
        readln(m);
        writeln(floor(power(2, m)) - Count(m));
    end;
    close(input);
    close(output);
end.