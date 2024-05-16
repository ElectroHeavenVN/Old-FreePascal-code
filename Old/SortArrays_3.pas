var 
    a, b, c: array of longint;
    array_temp: array [0..0] of longint;
    length_a, length_b, i, j: longint;

procedure QuickSort(var AI: array of longint; ALo, AHi: Integer);
var Lo, Hi, Pivot, T: Integer;
begin
    Lo := ALo; Hi := AHi;
    Pivot := AI[(Lo + Hi) div 2];
    repeat
        while AI[Lo] < Pivot do Lo += 1;
        while AI[Hi] > Pivot do Hi -= 1;
        if Lo <= Hi then
        begin
            T := AI[Lo]; AI[Lo] := AI[Hi]; AI[Hi] := T;
            Lo += 1; Hi -= 1;
        end;
    until Lo > Hi;
    if Hi > ALo then QuickSort(AI, ALo, Hi);
    if Lo < AHi then QuickSort(AI, Lo, AHi);
end;

begin
    read(length_a);
    setlength(a, length_a);
    for i := 0 to length_a - 1 do read(a[i]);
    read(length_b);
    setlength(b, length_b);
    for i := 0 to length_b - 1 do read(b[i]);
    QuickSort(a, 0, length_a - 1);
    QuickSort(b, 0, length_b - 1);
    c := a;
    for i := 0 to length(c) + length(b) - 1 do begin
        for j := 0 to length(b) - 1 do begin
            array_temp[0] := b[j];
            if b[j] < c[i] then begin
                insert(array_temp, c, i);
                delete(b, j, 1);
                break;
            end else if (b[j] <= c[i + 1]) then begin
                insert(array_temp, c, i + 1);
                delete(b, j, 1);
                break;
            end;
        end;
    end;
    insert(b, c, length(c));
    for j := 0 to length(c) - 1 do write(c[j], ' ');
end.