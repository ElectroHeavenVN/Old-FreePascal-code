uses sysutils;
procedure Main();
var 
    s: string;
    i: byte;
begin
    readln(s);
    for i := 1 to length(s) do 
    begin
        if (s[i] > '`') and (s[i] < '{') then write(ord(s[i]) - 32)
        else write(ord(s[i]));
    end;
end;
begin
    Main
end.