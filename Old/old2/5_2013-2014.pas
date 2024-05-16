uses sysutils;
var
    lastPrimeNumber: longword;
    iPrime: longword;
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
function getNextPrimeNumber(): longword;
var i: longword;
begin
    for i := lastPrimeNumber to 4294967295 do if (isPrime(i)) then
    begin
        lastPrimeNumber := i + 1;
        exit(i);
    end;
end;
procedure Main();
var  
    MaxNumberIndex: byte = 0;
    MaxNumberCount: longword = 0;
    resultLength: byte = 0;
    n: word;
    k, i: longword;
    s: ansistring = '';
begin
    read(n, k);
    for i := 1 to n do s += inttostr(getNextPrimeNumber());
    resultLength := length(s) - k;
    while (length(s) > resultLength) do
    begin
        for i := 1 + MaxNumberCount to k do 
        begin
            if (i > length(s)) then break;
            if (s[MaxNumberIndex] < s[i]) then 
            begin
                MaxNumberIndex := i;
            end;
        end;
        //if MaxNumberCount < 2 then
            delete(s, 1 + MaxNumberCount, MaxNumberIndex - 1 - MaxNumberCount);
        //else if 1 + MaxNumberCount < length(s) then
            //delete(s, 1 + MaxNumberCount, MaxNumberIndex - 2);
        // else begin
        //     MaxNumberCount := 0;
        //     MaxNumberIndex := 0;
        // end;
        if (MaxNumberIndex > 0) then MaxNumberCount += 1;
        if (length(s) > resultLength) and (MaxNumberCount=length(s)) then begin
            MaxNumberCount := 0;
            MaxNumberIndex := 0;
        end
        else MaxNumberIndex := 1 + MaxNumberCount;
    end;
    writeln(s);
end;
begin
    lastPrimeNumber := 1;
    Main;
end.