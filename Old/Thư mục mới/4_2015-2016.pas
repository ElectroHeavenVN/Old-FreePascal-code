type point = record
            x, y: extended;
            end;

var 
    n: longword;
    arr: array of point;
    result: point;
    dxs: array of int8 = (-1, -1, -1, 0, 0, 0, 1, 1, 1);
    dys: array of int8 = (-1, 0, 1, -1, 0, 1, -1, 0, 1);

function CalcDistance(c: point): extended;
var
    i: longword;
    dx, dy: extended;
begin
    CalcDistance := 0;
    for i := 0 to n - 1 do
    begin
        dx := arr[i].x - c.x;
        dy := arr[i].y - c.y;
        CalcDistance += sqrt(dx * dx + dy * dy);
    end;
end;

function MinX(arr: array of point): longint;
var
    i: longword;
begin
    MinX := high(longint);
    for i := 0 to length(arr) - 1 do 
        if (MinX > arr[i].x) then
            MinX := round(arr[i].x);
end;

function MaxX(arr: array of point): longint;
var
    i: longword;
begin
    MaxX := low(longint);
    for i := 0 to length(arr) - 1 do 
        if (MaxX < arr[i].x) then
            MaxX := round(arr[i].x);
end;

function MinY(arr: array of point): longint;
var
    i: longword;
begin
    MinY := high(longint);
    for i := 0 to length(arr) - 1 do 
        if (MinY > arr[i].y) then
            MinY := round(arr[i].y);
end;

function MaxY(arr: array of point): longint;
var
    i: longword;
begin
    MaxY := low(longint);
    for i := 0 to length(arr) - 1 do 
        if (MaxY < arr[i].y) then
            MaxY := round(arr[i].y);
end;

procedure Main();
var
    i, x, y: longint;
    smallestDistance, distance, step: extended;
    isSmaller: boolean = false;
    neighbor: point;
    thisPoint: point;
begin
    readln(n);
    setlength(arr, n);
    for i := 0 to n - 1 do 
        read(arr[i].x, arr[i].y);
    smallestDistance := high(longword);
    for x := MinX(arr) to MaxX(arr) do
        for y := MinY(arr) to MaxY(arr) do 
        begin
            step := 100;
            result.x := x;
            result.y := y;
            distance := CalcDistance(result);
            if (distance < smallestDistance) then
                smallestDistance := distance;
            while (step > 0.001) do
            begin
                isSmaller := false;
                for i := 1 to 9 do 
                begin
                    neighbor.x := x + step * dxs[i];
                    neighbor.y := y + step * dys[i];
                    distance := CalcDistance(neighbor);
                    if (distance < smallestDistance) then
                    begin
                        smallestDistance := distance;
                        result := neighbor;
                        thisPoint := neighbor;
                        isSmaller := true;
                        break;
                    end;
                end;
                if not(isSmaller) then step /= 2;
            end;
        end;
    writeln(smallestDistance:0:3);
    writeln(thisPoint.x:0:3, ' ', thisPoint.y:0:3);
end;

begin
    Main
end.