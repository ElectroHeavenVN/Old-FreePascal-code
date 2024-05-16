uses sysutils, math;
var
    A, B, i: longword;
    count: longword = 0;
function isPrime(n: longword):boolean;
var i: longword;
begin
    if (n <= 3) then exit(true);
    for i := 2 to round(n / 2) do
    begin
        if n mod i = 0 then exit(false);
    end;
    exit(true);
end;
function isDX(n: longword):boolean;
var
    i: longword;
    s: string;
begin
    s := inttostr(n);
    for i := 1 to floor(length(s) / 2) do if s[i] <> s[length(s) - i + 1] then exit(false);
    exit(true);
end;
begin
    readln(A, B);
    for i := A to B do if isPrime(i) and isDX(i) then
    begin
        count := count + 1;
        writeln(i);
    end;
    writeln(count);
end.