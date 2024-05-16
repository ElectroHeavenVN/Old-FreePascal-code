uses
    sysutils;
var s: string;
begin
    readln(s);
    s := StringReplace(s, 'anh', 'em', [rfReplaceAll]);
    writeln(s);
    readln
end.