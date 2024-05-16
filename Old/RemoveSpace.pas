uses
    sysutils;
var
    s1, s2: string;
    i, count: integer;
begin
    readln(s1);
    readln(s2);
    for i := 0 to length(s2) do if s2[i] = ' ' then count += 1;
    writeln(count);
    s2 := StringReplace(s2, ' ', '', [rfReplaceAll]);
    writeln(s2);
    readln
end.