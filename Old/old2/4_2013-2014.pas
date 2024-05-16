uses math;
var 
    fibonacciCounted: array of longword;
function isContains(arr: array of longword; n: longword): boolean;
var i: longword;
begin
    for i := 0 to length(arr) do if (arr[i] = n) then exit(true);
    exit(false);
end;
function isFibonacci(n: longword): boolean;
begin
    if (((power(floor(sqrt(5 * n * n - 4)), 2) = 5 * n * n - 4) or (power(floor(sqrt(5 * n * n + 4)), 2) = 5 * n * n + 4)) and (not(isContains(fibonacciCounted, n)))) then 
    begin
        setlength(fibonacciCounted, length(fibonacciCounted) + 1);
        fibonacciCounted[length(fibonacciCounted) - 1] := n;
        exit(true);
    end;
    exit(false);
end;
procedure Main();
var 
    n, i, count: longword;
    arr: array of longword;
begin
    count := 0;
    readln(n);
    setlength(arr, n);
    for i := 0 to n - 1 do begin
        read(arr[i]);
        if (isFibonacci(arr[i])) then count += 1;
    end;
    writeln(count);
end;
begin
    Main
end.