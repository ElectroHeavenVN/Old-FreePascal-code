uses sysutils, strutils;
var arr: array [0..9] of uint64;
function calcFact(n: byte):uint64;
var
    i: byte;
begin
    calcFact := 1;
    for i := 2 to n do
        calcFact *= i;
end;
procedure Init();
var i: byte;
begin
    for i := 0 to 9 do arr[i] := calcFact(i);
end;
procedure Main();
var 
    n: longword;
    result: uint64 = 0;
    i: byte;
begin
    Init();
    readln(n);
    for i := 1 to length(inttostr(n)) do 
        result += arr[strtoint(inttostr(n)[i])];
    writeln(result);
end;
begin
    Main
end.