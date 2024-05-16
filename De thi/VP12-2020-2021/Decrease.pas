uses math;
function maxDigit(k: longword):byte;
begin
    maxDigit := 0;
    while (k > 0) do 
    begin
        maxDigit := max(maxDigit, k mod 10);
        k := k div 10;
    end;
end;

procedure Main();
var 
    f: text;
    n: longword;
    res: longword = 0;
begin
    assign(f, 'decrease.inp');
    reset(f);
    read(f, n);
    close(f);
    assign(f, 'decrease.out');
    rewrite(f);
    while (n > 0) do 
    begin
        n := n - maxdigit(n);
        res := res + 1;
    end;
    writeln(f, res);
    close(f);
end;

begin
    Main
end.