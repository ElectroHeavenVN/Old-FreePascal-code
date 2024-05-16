type ValueKeyPair = record
                        key: longint;
                        value: byte;
                    end;
var 
    arr: array [1..100] of longint;
    dict: array of ValueKeyPair;
    n, i, j: byte;
    minValueKey: ValueKeyPair;
begin
    repeat
        begin
            read(n);
            if (n < 1) or (n > 100) then writeln('N out of range!');
        end;
    until (n > 0) and (n <= 100);
    for i := 1 to n do repeat
        begin
            read(arr[i]);
            if arr[i] > 1000000000 then writeln('array value out of range!');
        end;
    until arr[i] <= 1000000000;
    setlength(dict, 1);
    dict[0].value := 1;
    dict[0].key := arr[1];
    for i := 1 to n do 
    begin
        for j := 1 to length(dict) - 1 do if dict[j].key = arr[i] then
        begin
            dict[j].value += 1;
            break;
        end;
        setlength(dict, length(dict) + 1);
        with dict[length(dict) - 1] do
        begin
            key := arr[i];
            value := 1;
        end;
    end;
    for i := 0 to length(dict) - 1 do
    begin
        if (minValueKey.value < dict[i].value) or ((minValueKey.value = dict[i].value) and (minValueKey.key > dict[i].key)) then minValueKey := dict[i];
    end;
    writeln(minValueKey.key, ' ', minValueKey.value);
end.