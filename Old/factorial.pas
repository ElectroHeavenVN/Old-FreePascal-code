var n, i, j: longword;
    result, carry: uint64;
    arr: array of uint64;
begin
    readln(n);
    arr := [1];
    for i := 2 to n do begin
        carry := 0;
        for j := 0 to length(arr) - 1 do begin
            result := arr[j] * i + carry;
            arr[j] := result mod 10;
            carry := result div 10;
        end;
        while carry > 0 do begin
            setlength(arr, length(arr) + 1);
            arr[length(arr) - 1] := carry mod 10;
            carry := carry div 10;
        end;
    end;
    for i := length(arr) - 1 downto 0 do write(arr[i]);
end.