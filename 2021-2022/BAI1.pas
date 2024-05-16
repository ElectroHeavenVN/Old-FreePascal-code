uses math;

function f(n: int64):int64;
var 
    i: int64 = 2;
begin
    f := 1;
    while i <= n do
    begin
        f := f * i; 
        i := i + 1;
    end;
end;

procedure Main();
var 
    x, n, i: int64;
    S: extended = 1;
begin
    i := 1;
    readln(x, n);
    while i <= n do
    begin
        S := S + power(-x, i) / f(i);
        i := i + 1;
    end;
    writeln(S:0:4);
end;

begin
    Main
end.