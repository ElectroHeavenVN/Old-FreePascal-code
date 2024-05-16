procedure MyProcedure();
var 
    a: array of longword;
    s: uint64 = 0;
    n, k, i, i2, i3: longword;
    f: text;
begin
    assign(f, 'BAI4.INP');
    reset(f);
    readln(f, n, k);
    setlength(a, n);
    for i := 0 to n - 1 do read(f, a[i]);
    close(f);
    assign(f, 'BAI4.OUT');
    rewrite(f);
    for i := n downto 1 do
    begin
        for i2 := 0 to n - i do
        begin
            for i3 := i2 to i + i2 - 1 do s += a[i3];
            if s mod k = 0 then
            begin
                writeln(f, i);
                close(f);
                exit;
            end;
            s := 0;
        end;
    end;
end;

begin
    MyProcedure;
end.
