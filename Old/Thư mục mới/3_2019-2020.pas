uses sysutils;

type arrayUint64 = array of uint64;

function QuickSort(AI: arrayUint64; ALo, AHi: longword): arrayUint64;
var
    Lo, Hi, Pivot, T: longword;
begin
    if length(AI) <= 1 then exit(AI);
    QuickSort := AI;
    Lo := ALo; Hi := AHi;
    Pivot := QuickSort[(Lo + Hi) div 2];
    repeat
        while QuickSort[Lo] < Pivot do Lo += 1;
        while QuickSort[Hi] > Pivot do Hi -= 1;
        if Lo <= Hi then
        begin
            T := QuickSort[Lo]; QuickSort[Lo] := QuickSort[Hi]; QuickSort[Hi] := T;
            Lo += 1; Hi -= 1;
        end;
    until Lo > Hi;
    if Hi > ALo then exit(QuickSort(QuickSort, ALo, Hi));
    if Lo < AHi then exit(QuickSort(QuickSort, Lo, AHi));
end;

procedure Main();
var 
    s: string;
    index, i: byte;
    isNumber: boolean = false;
    arr: array of uint64;
begin
    setlength(arr, 0);
    readln(s);
    for i := 1 to length(s) do 
    begin
        if (s[i] >= '0') and (s[i] <= '9') then 
        begin
            if not(isNumber) then
            begin
                isNumber := true;
                index := i;
            end;
            if i = length(s) then 
            begin
                setlength(arr, length(arr) + 1);
                arr[length(arr) - 1] := strtoint(copy(s, index, i + 1 - index));
                write(arr[length(arr) - 1], ' ');
            end;
            continue;
        end;
        if isNumber then 
        begin
            setlength(arr, length(arr) + 1);
            arr[length(arr) - 1] := strtoint(copy(s, index, i - index));
            write(arr[length(arr) - 1], ' ');
            isNumber := false;
        end;
    end;
    writeln();
    arr := QuickSort(arr, 0, length(arr) - 1);
    for i := 0 to length(arr) - 1 do
        write(arr[i], ' ');
end;
begin
    Main
end.