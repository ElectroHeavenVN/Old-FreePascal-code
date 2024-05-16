uses 
    strutils,
    sysutils;
procedure Main();
var
    f: text;
    n, sum, i: longword;
    s, s2: string;
    ssplit: array of ansistring;
begin
    assign(f, '4.txt');
    reset(f);
    n := 0;
    s2 := '';
    while (not(eof(f))) do
    begin
        sum := 0;
        readln(f, s);
        n += 1;
        ssplit := splitstring(s, ',');
        for i := 0 to length(ssplit) - 1 do if ssplit[i] <> '' then sum += strtoint(ssplit[i]);
        s2 += inttostr(sum) + ' ';
    end;
    close(f);
    writeln(n);
    writeln(s2);
end;
begin
    Main
end.