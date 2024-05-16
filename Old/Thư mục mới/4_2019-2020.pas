uses strutils, sysutils, math;
procedure Main();
var 
    k: longword;
    s: ansistring;
begin
    readln(k);
    if (log2(k) = ceil(log2(k))) then s := inttobin(k, ceil(log2(k)) + 1, 0)
    else s := inttobin(k, ceil(log2(k)), 0);
    s := StringReplace(s, '0', '5', [rfReplaceAll]);
    s := StringReplace(s, '1', '3', [rfReplaceAll]);
    writeln(s);
end;
begin
    Main
end.