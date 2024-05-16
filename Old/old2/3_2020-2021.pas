var tempPrime: uint64 = 2;
function isPrime(a: real):boolean;
var n: uint64;
begin
    if (a - trunc(a) <> 0) then exit(false);
    n := trunc(a);
    if (n = 0) or (n = 1) then 
    begin
        tempPrime := 2;
        exit(false);
    end;
    if (n div 2 < tempPrime) then 
    begin
        tempPrime := 2;
        exit(true);
    end;
    if (n mod tempPrime = 0) then 
    begin
        tempPrime := 2;
        exit(false);
    end;
    tempPrime += 1;
    exit(isPrime(n));
end;
procedure Main();
var n: uint64;
begin
    readln(n);
    while (true) do
    begin
        if (isPrime(sqrt(n))) then break;
        n += 1;
    end;
    writeln(n);
end;
begin
    Main
end.