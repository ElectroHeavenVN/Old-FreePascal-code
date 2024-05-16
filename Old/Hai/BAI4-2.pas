var
    N, T, i,x: word;
    arr: array [1..3000] of int64;
    //count: array [1..3000] of byte;
    temp1,temp2:int64;
function test(num: int64): boolean;
var
    temp: int64;
begin
    temp := trunc(sqrt(num));
    if (sqr(temp) = num) then
        exit(true);
    exit(false);
end;

begin
    readln(T);
    for N := 1 to T do
        readln(arr[N]);
    for N := 1 to T do
    begin
        if (test(arr[N])) then
            writeln(trunc(sqrt(arr[N])),' ',1)
        else
        begin
            for i:=1 to round(sqrt(arr[N])) do
            begin
                x:=round(sqrt(i));
                if (x*x=i) then
                begin
                    temp1:=x;
                    temp2:=arr[n] div i;
                end;
            end;
            writeln(temp1,' ',temp2);
        end;
    end;
end.