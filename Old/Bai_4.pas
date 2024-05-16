var
    arr: array of word;
    i, len, max, maxIndex: word;
begin
    // read(len);
    // setlength(arr, len);
    // for i := 0 to len do read(arr[i]);
    arr := [1, 2, 3, 0, 5, 6, 7, 8, 9];
    max := 1; len := 1; maxIndex := 0;
    for i := 1 to length(arr) - 1 do
    begin 
        if arr[i] >= arr[i - 1] then len += 1 else
        begin
            if max < len then
            begin
                max := len;
                maxIndex := i - max;
            end;               
            len := 1;
        end;
    end;
    if max < len then
    begin
        max := len;
        maxIndex := length(arr) - max;
    end;
    for i := maxIndex to max + maxIndex - 1 do write(arr[i], ' ');
end.