type
    point = record x, y: longint; end;
    rect = record pTop, pBottom: point; end; 

procedure Main();
var 
    n: word;
    arr: array of rect;
    r: rect;
    arrr: array of array of boolean;
    maxPoint, minPoint: point;
    i, j: longword;
    count: longword = 0;
begin
    minPoint.x := high(longint);
    minPoint.y := high(longint);
    maxPoint.x := low(longint);
    maxPoint.y := low(longint);
    readln(n);
    setlength(arr, n);
    for i := 0 to n - 1 do
    begin
        readln(arr[i].pTop.x, arr[i].pTop.y, arr[i].pBottom.x, arr[i].pBottom.y);
        if (arr[i].pTop.x > maxPoint.x) or (arr[i].pTop.y > maxPoint.y) then 
            maxPoint := arr[i].pTop;
        if (arr[i].pTop.x < minPoint.x) or (arr[i].pTop.y < minPoint.y) then 
            minPoint := arr[i].pTop;
            if (arr[i].pBottom.x > maxPoint.x) or (arr[i].pBottom.y > maxPoint.y) then 
            maxPoint := arr[i].pBottom;
        if (arr[i].pBottom.x < minPoint.x) or (arr[i].pBottom.y < minPoint.y) then 
            minPoint := arr[i].pBottom;
    end;
    setlength(arrr, maxPoint.x - minPoint.x, maxPoint.y - minPoint.y);
    for r in arr do 
    begin
        for i := r.pBottom.y - minPoint.y to r.pTop.y - minPoint.y do
        begin
            for j := r.pBottom.x - minPoint.x to r.pTop.x - minPoint.x do
                if (not(arrr[i, j])) then 
                begin
                    arrr[i, j] := true;
                    count := count + 1;
                end;
        end;
    end;
    writeln(count);
end;

begin
    Main
end.