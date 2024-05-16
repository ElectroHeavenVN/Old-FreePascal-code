function isPrime(n: uint64):boolean;
var
    i: uint64 = 2;
begin
    while i <= sqrt(n) do
    begin
        if n mod i = 0 then exit(false);
        i := i + 1;
    end;
    exit(true);
end;
procedure Main();
var n: uint64;
begin
    readln(n);
    n := trunc(sqrt(n));
    while (true) do
    begin
        if (isPrime(n)) then break;
        n += 1;
    end;
    writeln(n * n);
end;
begin
    Main
end.