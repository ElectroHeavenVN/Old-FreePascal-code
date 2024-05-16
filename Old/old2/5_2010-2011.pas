type ProductProperties = record
                        TienPhat, ThoiGian: byte;
                        end;
procedure QuickSort(var AI: array of ProductProperties; ALo, AHi: longword);
var
    Lo, Hi: longword;
    Pivot: byte;
    T: ProductProperties;
begin
    Lo := ALo; Hi := AHi;
    Pivot := AI[(Lo + Hi) div 2].ThoiGian;
    repeat
        while AI[Lo].ThoiGian < Pivot do Lo += 1;
        while AI[Hi].ThoiGian > Pivot do Hi -= 1;
        if Lo <= Hi then
        begin
            T := AI[Lo]; AI[Lo] := AI[Hi]; AI[Hi] := T;
            Lo += 1; Hi -= 1;
        end;
    until Lo > Hi;
    if Hi > ALo then QuickSort(AI, ALo, Hi);
    if Lo < AHi then QuickSort(AI, Lo, AHi);
end;
function MinTienPhat(arr: array of ProductProperties):longword;
var i, totalTime: longword;
begin
    MinTienPhat := 0;
    totalTime := 0;
    for i := 0 to length(arr) - 1 do
    begin
        MinTienPhat += arr[i].TienPhat * (arr[i].ThoiGian + totalTime);
        totalTime += arr[i].ThoiGian;
    end;
end;
procedure Main();
var
    n, i: longword;
    arrSp: array of ProductProperties;
begin
    readln(n);
    setlength(arrSp, n);
    for i := 0 to length(arrSp) - 1 do
        read(arrSp[i].TienPhat, arrSp[i].ThoiGian);
    QuickSort(arrSp, 0, n - 1);
    writeln(MinTienPhat(arrSp));
end;
begin
    Main
end.