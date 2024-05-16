var
    arr: array of longword;
    m: longword;
function isContains(arr: array of longword; n: longword): boolean;
var i: longword;
begin
    if length(arr) <= 0 then exit(false);
    for i := 0 to length(arr) do if (arr[i] = n) then exit(true);
    exit(false);
end;
function isFullColor(index, count: longword):boolean;
var
    i: longword;
    arrTemp: array of longword;
begin
    setlength(arrTemp, 0);
    for i := index to index + count - 1 do if not(isContains(arrTemp, arr[i])) then 
    begin
        setlength(arrTemp, length(arrTemp) + 1);
        arrTemp[length(arrTemp) - 1] := arr[i];
    end;
    if (length(arrTemp) = m) then exit(true);
    exit(false);
end;
procedure Main();
var 
    n, i, j: longword;
begin
    readln(n, m);
    setlength(arr, n);
    for i := 0 to n - 1 do read(arr[i]);
    for i := m to n do 
    begin
        for j := 0 to n - i do if (isFullColor(j, i)) then 
        begin
            writeln(i);
            exit;
        end;
    end;
end;
begin
    Main
end.