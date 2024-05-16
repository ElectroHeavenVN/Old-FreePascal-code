uses sysutils;
var 
    arrPrime: array of boolean = (true, true, true);
function isPrime(n: longword):boolean;
var 
    i: longword = 2;
begin
    if (length(arrPrime) >= n) and (arrPrime[n - 1]) then
        exit(true);
    if (n < 4) then exit(true);
    while (i <= sqrt(n)) do 
    begin
        if (n mod i = 0) then 
            exit(false);
        i := i + 1;
    end;
    if (length(arrPrime) < n) then setlength(arrPrime, n);
    arrPrime[n - 1] := true;
    exit(true);
end;

function Fact(n: longword):ansistring;
var 
    i, count, NumberOfDivisors, ndiv2: longword;
begin
    Fact := '';
    count := 0;
    NumberOfDivisors := 0;
    i := high(longword);
    if (n div 2 >= 2) then
    begin 
        i := 2;
        ndiv2 := n div 2;
        while i <= ndiv2 do
        begin
            if (n < i) then break;
            if (isPrime(i)) then 
            begin
                while (n mod i = 0) do 
                begin
                    count := count + 1;
                    Fact := Fact + inttostr(i) + '*';
                    n := n div i;
                end;
                if (count > 0) then
                    if (NumberOfDivisors = 0) then
                        NumberOfDivisors := count + 1
                    else 
                        NumberOfDivisors := NumberOfDivisors * (count + 1);
                count := 0;
            end;
            i := i + 1 + i mod 2;
        end;
    end;
    if ((i = n div 2) or (i - 1 = round(n / 2)) or (i + 1 = round(n / 2)) or (i = high(longword))) and (isPrime(n)) then
    begin
        Fact := inttostr(n) + '*';
        NumberOfDivisors := 2;
    end;
    Fact := inttostr(NumberOfDivisors) + ' ' + copy(Fact, 1, length(Fact) - 1);
end;

procedure Main();
var 
    T, M, i: longword;
begin
    assign(input, 'NTO.INP');
    assign(output, 'NTO.OUT');
    reset(input);
    rewrite(output);
    readln(T);
    for i := 1 to T do
    begin
        readln(M);
        writeln(Fact(M));
    end;
    close(input);
    close(output);
end;

begin
    Main
end.