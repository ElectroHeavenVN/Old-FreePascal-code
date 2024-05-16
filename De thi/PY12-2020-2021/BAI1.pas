var 
    arrf: array of byte = (2, 3, 5, 7);
    arrs: array of longword = (1, 1, 1, 1);

procedure setLen(length: longint);
begin
    setlength(arrf, length);
    setlength(arrs, length);
end;

function isPrime(n: longword):boolean;
var i: longword;
begin
    if (n <= 3) and (n > 1) then exit(true);
    for i := 2 to round(sqrt(n)) do
    begin
        if n mod i = 0 then exit(false);
    end;
    exit(true);
end;

procedure Main();
var
    f: text;
    n, x: byte;
    k: longword;
    first, second: longword;
const
    odd1 = [1, 3, 7, 9];
begin
    //assign(f, 'BAI1.INP');
    //reset(f);
    //read(f, n);
    //close(f);
    //assign(f, 'BAI1.OUT');
    //rewrite(f);
    read(n);
    while (length(arrf) > 0) and (length(arrs) > 0) do 
    begin
        first := arrf[0];
        second := arrs[0];
        delete(arrf, 0, 1);
        delete(arrs, 0, 1);
        if (second = n) then 
        begin
            writeln(first);
            continue;
        end;
        for x in odd1 do
        begin
            k := first * 10 + x;
            if (isPrime(k)) then 
            begin
                setlen(length(arrf) + 1);
                arrf[length(arrf) - 1] := k;
                arrs[length(arrs) - 1] := second + 1;
            end;
        end; 
    end;
end;

begin
    Main
end.