procedure Main();
var
    n, i, num: longword;
    arr: array of longword = ();
begin
    readln(n);
    for i := 0 to n - 1 do
    begin
        read(num);
        if (num > length(arr)) then 
            setlength(arr, num);
        arr[num - 1] += 1;
    end;
    num := 0;
    for i := 1 to length(arr) - 1 do
    begin
        if (arr[i] > arr[num]) then
            num := i;
    end;
    writeln(num + 1, ' ', arr[num]);
end;

begin
    Main
end.