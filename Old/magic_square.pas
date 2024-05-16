procedure Main();
var 
    n: array of array of int64;
    w, h, i, j, result, oldRes: longword;
begin
    read(w, h);
    if (w <> h) then 
    begin
        writeln('Not a Magic Square!');
        exit;
    end;
    setlength(n, w, w);
    
    result := 0;
    for i := 0 to w - 1 do 
    begin
        for j := 0 to w - 1 do 
        begin
            read(n[i, j]);
            result += n[i, j];
        end;
        if i = 0 then oldRes := result
        else if oldRes <> result then 
        begin
            writeln('Not a Magic Square!');
            exit;
        end;
        result := 0;
    end;

    for i := 0 to w - 1 do 
    begin
        for j := 0 to w - 1 do 
        begin
            result += n[j, i];
        end;
        if oldRes <> result then
        begin
            writeln('Not a Magic Square!');
            exit;
        end;
        result := 0;
    end;

    result := 0;
    for i := 0 to w - 1 do result += n[i, i];
    if oldRes <> result then
    begin
        writeln('Not a Magic Square!');
        exit;
    end;

    result := 0;
    for i := 0 to w - 1 do result += n[i, w - i - 1];
    if oldRes <> result then
    begin
        writeln('Not a Magic Square!');
        exit;
    end;
    writeln('Magic Square!');
end;
begin
    Main;
end.