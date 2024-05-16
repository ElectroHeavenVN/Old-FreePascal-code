procedure Main();
var 
    n, m, i, j: byte;
    b: array of byte = ();
    arr: array of byte = ();
begin
    readln(n, m);
    setlength(b, m);
    setlength(arr, n);
    for i := 0 to m - 1 do
    begin
        read(b[i]);
        for j := b[i] - 1 to n - 1 do
            if (arr[j] = 0) then
                arr[j] := b[i];
    end;
    for i := 0 to n - 1 do
        write(arr[i], ' '); 
end;

begin
    Main
end.