uses Math;
procedure Main();
var
    n, i: byte;
    x: longword;
    result: real = 0;
    arr: array of real;
begin
    read(n);
    setlength(arr, n + 1);
    for i := 0 to n do read(arr[i]);
    read(x);
    for i := 0 to n do result += arr[i] * power(x, i);
    writeln(result:0:4);
end;
begin
    Main
end.