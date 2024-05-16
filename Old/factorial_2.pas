var n, i, count: longword;
    result: extended = 1;
begin
    count := 0;
    readln(n);
    for i := 2 to n do
    begin
        if (i mod 5 = 0) then 
        begin
            count +=1;
            result := result * (i div 5);
        end else if (i<n) and ((i+1) mod 5 =0) then 
            result:= result * (i / 2)
        else
            result *= i;
    end;
    write(result:0:0);
    for i := 1 to count do write('0');
end.