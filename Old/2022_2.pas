uses sysutils;
procedure Main();
var
    n, i, j, count, oldj: byte;
    arr: array of byte;
    s: string = '';
    sum: word = 0;
begin
    count := 0;
    oldj := 0;
    readln(n);
    setlength(arr, n);
    for i := 0 to n - 1 do read(arr[i]);
    i := arr[0];
    //while i <= 255 * n do
    while true do
    begin
        for j := 0 to n - 1 do
        begin
            sum += arr[j];
            if sum > i then
            begin
                if oldj = 0 then i := sum - 1;
                count := 0;
                break;
            end;
            if sum = i then 
            begin
                count += 1;
                sum := 0;
                s += inttostr(j + 1) + ' ';
            end;
        end;
        if sum = 0 then
        begin
            writeln(count);
            writeln(s);
            break;
        end; 
        sum := 0;
        i += 1;
        s := '';
        oldj := 0;
    end;
end;
begin
    Main
end.