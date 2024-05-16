var
    arr: array of array of longword;
procedure ShiftUp();
var arrTemp: array of longword;
begin
    arrTemp := arr[0];
    delete(arr, 0, 1);
    insert(arrTemp, arr, length(arr));
end;

procedure ShiftDown();
var arrTemp: array of longword;
begin
    arrTemp := arr[length(arr) - 1];
    delete(arr, length(arr) - 1, 1);
    insert(arrTemp, arr, 0);
end;

procedure ShiftLeft();
var 
    arrTemp: array[0..0] of longword;
    i: longword;
begin
    for i := 0 to length(arr) - 1 do
    begin
        arrTemp[0] := arr[i, 0];
        delete(arr[i], 0, 1);
        insert(arrTemp, arr[i], length(arr[i]));
    end;
end;

procedure ShiftRight();
var 
    arrTemp: array[0..0] of longword;
    i: longword;
begin
    for i := 0 to length(arr) - 1 do
    begin
        arrTemp[0] := arr[i, length(arr) - 1];
        delete(arr[i], length(arr) - 1, 1);
        insert(arrTemp, arr[i], 0);
    end;
end;

procedure PrintArray();
var 
    i, j: longword;
begin
    for i := 0 to length(arr) - 1 do
    begin
        for j := 0 to length(arr) - 1 do write(arr[i, j]:2, ' ');
        writeln();
    end;
    writeln();
end;

procedure Main();
var
    i, j, count, n, u, uOld, v, vOld: longword;
    result: uint64;
    command: char;
    f: text;
begin
    count := 0;
    assign(f, 'BAI5.INP');
    reset(f);
    readln(f, n);
    // setlength(arr, n, n);
    // for i := 0 to n - 1 do for j := 0 to n - 1 do 
    // begin
    //     count += 1;
    //     arr[i, j] := count;
    // end;
    readln(f, u, v);
    //uOld := u;
    //vOld := v;
    //PrintArray();
    while not(eof(f)) do 
    begin
        read(f, command);
        case command of
            'U': 
                begin
                    //ShiftUp();
                    if (u + 1 > n) then
                        u := 0;
                    // if (result + n > n * n) then
                    //     result -= n * n;
                    // result += n;
                    u += 1;
                end;
            'D':
                begin
                    //ShiftDown();    
                    if (u - 1 < 1) then
                        u := n + 1;
                    // if (result - n < 0) then
                    //     result += n * n;
                    // result -= n;
                    u -= 1;
                end;
            'L':
                begin
                    //ShiftLeft();
                    if (v + 1 > n) then 
                        v := 0;
                    // if (result + 1 > n * (u + 1)) then
                    //     result -= n;
                    // result += 1;
                    v += 1;
                end;
            'R': 
                begin
                    //ShiftRight();
                    if (v - 1 < 1) then
                        v := n + 1;
                    // if (result - 1 < n * (v - 1) + 1) then
                    //     result += n;
                    // result -= 1;
                    v -= 1;
                end;
        end;
        //writeln(command, ':');
        //PrintArray();
    end;
    result := n * (u - 1) + v;
    close(f);
    assign(f, 'BAI5.OUT');
    rewrite(f);
    //writeln(f, 'c1: ', arr[uOld - 1, vOld - 1]);
    writeln(f, result);
    close(f);
end;
begin
    Main 
end.