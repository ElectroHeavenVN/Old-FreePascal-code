uses sysutils;
var 
    iPrime: longword = 2;
function isPrime(n: longword):boolean;
begin
    if (n = 0) or (n = 1) then 
    begin
        iPrime := 2;
        exit(false);
    end;
    if (n div 2 < iPrime) then 
    begin
        iPrime := 2;
        exit(true);
    end;
    if (n mod iPrime = 0) then 
    begin
        iPrime := 2;
        exit(false);
    end;
    iPrime += 1;
    exit(isPrime(n));
end;

function isSuperPrime(n: longword):boolean;
var i: longword;
begin
    for i := length(inttostr(n)) downto 1 do
    begin
        if not(isPrime(strtoint(copy(inttostr(n), 1, i)))) then exit(false);
    end;
    exit(true);
end;

procedure Main();
var 
    m: word;
begin
    readln(m);
    if (isSuperPrime(m)) then 
    begin
        writeln(m);
        exit;
    end;
    while true do 
    begin
        m -= 1;
        if (isSuperPrime(m)) then begin
            writeln(m);
            break;
        end;
    end;
    while true do 
    begin
        m += 1;
        if (isSuperPrime(m)) then begin
            writeln(m);
            break;
        end;
    end;
end;
begin
    Main
end.