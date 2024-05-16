uses sysutils, math;
var A, B: longword;
procedure reverse(var n: longword);
var
    s: string;
    c: char;
    i: byte;
begin
    s := inttostr(n);
    for i := 1 to floor(length(s) / 2) do
    begin
        c := s[i];
        s[i] := s[length(s) - i + 1];
        s[length(s) - i + 1] := c;
    end;
    n := strtoint(s);
end;
begin
    readln(A, B);
    reverse(A);
    reverse(B);
    writeln(max(A, B));
end.