procedure Main();
var arr, temparr: array of longint;
    l, i, n: longword;
begin
    setlength(temparr, 1);
    readln(l);
    setlength(arr, l);
    for i := 0 to l - 1 do read(arr[i]);
    n := 0; i := 0;
    while i <= l - 1 do begin
        if (arr[i] mod 3 = 0) then begin
            if (arr[i] mod 2 = 1) then begin
                temparr[0] := arr[i];
                insert(temparr, arr, 0);
                delete(arr, i + 1, 1);
            end else if i = l - n then break
            else begin
                temparr[0] := arr[i];
                insert(temparr, arr, l);
                delete(arr, i, 1);
                i -= 1; n += 1;
            end;
        end;
        i += 1;
    end;
    for i in arr do write(i, ' ');
end;

begin
    Main;
end.