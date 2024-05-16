uses
    sysutils;
var n: uint64;
    s: string;
    i: byte;

begin
    read(n);
    s := IntToStr(n);
    for i := 1 to length(s) do if s[i - 1] > s[i] then begin
        writeln('NO');
        exit;
    end;
    writeln('YES');
end.