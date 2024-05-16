uses StrUtils, SysUtils;
procedure Main();
var 
    n, i, j, k, pairs, diffCount: longword;
    arr: array of word;
begin
    diffCount := 0;
    pairs := 0;
    readln(n);
    setlength(arr, n);
    for i := 0 to n - 1 do
    begin
        readln(arr[i]);
    end;
    for i := 0 to n - 1 do
    begin
        for j := i to n - 1 do 
        begin
            if i = j then continue;
            for k := 1 to 8 do 
                if inttobin(arr[i], 8)[k] <> inttobin(arr[j], 8)[k] then
                    diffCount += 1; 
            if diffCount <= 1 then pairs += 1;
            diffCount := 0;
        end;
    end;
    writeln(pairs);
end;
begin
    Main
end.