procedure Main();
var 
    arr: array of longword;
    n, k, m, i: longword;
    countK: longword = 0;
    countCut: longword = 0;
begin
    assign(input, 'CUTLINE.inp');
    reset(input);
    assign(output, 'CUTLINE.out');
    rewrite(output);
    readln(n, k, m);
    setlength(arr, n);
    for i := 0 to n - 1 do
    begin
        read(arr[i]);
        if (arr[i] = m) then 
            countK := countK + 1;
        if (countK = k) then 
        begin
            countCut := 0;
            break;
        end;
    end;
    if (countK < k) then 
        for i := 0 to n - 1 do
        begin 
            if (arr[i] <= m) then
                continue;
            if (arr[i] mod m = 0) then 
            begin
                countCut := countCut + arr[i] div m - 1;
                countK := countK + arr[i] div m;  
            end;
            if (countK >= k) then 
            begin
                if (countK > k) and (arr[i] mod m = 0) then
                    countCut := countCut - (countK - k - 1);
                break;
            end;
        end;
    if (countK < k) then 
        for i := 0 to n - 1 do
        begin 
            if (arr[i] <= m) then
                continue;
            if (arr[i] mod m <> 0) then 
            begin
                countCut := countCut + arr[i] div m;    
                countK := countK + arr[i] div m;     
            end;
            if (countK >= k) then 
            begin
                if (countK > k) and (arr[i] mod m <> 0) then
                        countCut := countCut - (countK - k);
                break;
            end;
        end;
    if (countK < k) then
        writeln(-1)
    else 
        writeln(countCut);
end;

begin
    Main
end.