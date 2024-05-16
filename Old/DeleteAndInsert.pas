var
    s: string;
    vt: byte;
begin
    readln(s);
    vt := pos('anh', s);
    while vt <> 0 do begin
        delete(s, vt, 3);
        insert('em', s, vt);
        vt := pos('anh', s)
    end;
    writeln(s);
    readln
end.