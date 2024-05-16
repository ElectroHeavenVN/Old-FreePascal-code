procedure Main();
var 
    n, s, i, j, k, sum: longword;
    arr: array of longword;
begin
    readln(n, s);
    setlength(arr, n);
    for i := 0 to n - 1 do
        read(arr[i]);
    for i := 1 to n do
    begin
        for j := 0 to n - i do
        begin
            sum := 0;
            for k := j to j + i - 1 do
                sum += arr[k];
            if (sum >= s) then
            begin
                writeln(i);
                exit;
            end;
        end;
    end;
end;
begin
    Main
end.