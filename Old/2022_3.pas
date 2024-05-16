procedure Main();
var
    n, i, j, top, bottom, left, right, index: byte;
    arr: array of longword; 
    arrres: array of array of longword;
begin
    top := 0; left := 0; index := 0;
    readln(n);
    bottom := n - 1; right := n - 1;
    setlength(arr, n * n);
    setlength(arrres, n, n);
    for i := 0 to n * n - 1 do read(arr[i]);
    writeln;
    while left <= right do
    begin
        for i := left to right do 
        begin
            arrres[top, i] := arr[index];
            index += 1;
        end;
        top += 1;
        if top > bottom then break;
        for i := top to bottom do 
        begin
            arrres[i, right] := arr[index];
            index += 1;
        end;
        right -= 1;
        if left > right then break;
        for i := right downto left do
        begin
            arrres[bottom, i] := arr[index];
            index += 1;
        end;
        bottom -= 1;
        if top > bottom then break;
        for i := bottom downto top do
        begin
            arrres[i, left] := arr[index];
            index += 1;
        end;
        left += 1;
    end;
    for i := 0 to n - 1 do
    begin
        for j := 0 to n - 1 do write(arrres[i, j], ' ');
        writeln;
    end;
end;
begin
    Main
end.