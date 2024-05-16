var
    f: text;
    k, i, j, i2: longword;
    s: ansistring;
    count1: longword = 0;
    count: longword = 0;
begin
    assign(f, 'Bai5.inp');
    reset(f);
    readln(f, k);
    readln(f, s);
    close(f);
    assign(f, 'Bai5.out');
    rewrite(f);
    for i := k to length(s) do 
        for j := 1 to length(s) - i + 1 do 
        begin
            for i2 := 0 to i - 1 do 
                if s[j+i2] = '1' then
                begin
                    count1 := count1 + 1;
                    if count1 > k then break;
                    if i - i2 + 1 < k - count1 then break; 
                end;
            if count1 = k then 
                count := count + 1;
            count1 := 0;
        end;
    writeln(f, count);
    close(f);
end.
