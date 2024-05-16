function pos2(substr, str: ansistring; index: longword):longword;
var i: longword;
begin
    for i := 1 to length(str) do 
        if (copy(str, i, length(substr)) = substr) and (i <> index) then exit(i);
    exit(0);
end;
var 
    s, ss: ansistring;
    n, i, j: longword;
    count: longword = 0;
    f: text;
begin
    assign(f, 'PHNT.INP');
    reset(f);
    readln(f, n);
    readln(f, s);
    close(f);
    assign(f, 'PHNT.OUT');
    rewrite(f);
    //if length(s) <> n then exit;
    for i := 1 to length(s) do 
    begin
        for j := 1 to length(s) - i + 1 do
        begin
            ss := copy(s, j, i);
            if pos2(ss, s, j) <> 0 then break;
            count += 1;
        end;
        if count = j then
        begin
            writeln(f, i);
            close(f);
            exit;
        end;
        count := 0;
    end;
end.