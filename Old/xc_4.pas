var s1, s2: string;
    count, i: word;
    result: text;

begin
    assign(result, 'BAI4.INP');
    reset(result);
    readln(result, s1);
    readln(result, s2);
    close(result);
    assign(result, 'BAI4.OUT');
    rewrite(result);
    if length(s1) > length(s2) then begin
        writeln(result, 0);
        close(result);
        exit;
    end;
    for i := 1 to length(s2) do if copy(s2, i, length(s1)) = s1 then count += 1;
    writeln(result, count);
    close(result);
end.