type point = record x, y: longint; end;
var A, C: point;
function isInside(I: point):boolean;
begin
    if (A.y < C.y) then
    begin
        if (A.x > C.x) then exit((I.y > A.y) and (I.y < C.y) and (I.x < A.x) and (I.x > C.x))
        else if (A.x < C.x) then exit((I.y < C.y) and (I.y > A.y) and (I.x > A.x) and (I.x < C.x));
    end 
    else if (A.y > C.y) then
    begin
        if (A.x > C.x) then exit((I.y < A.y) and (I.y > C.y) and (I.x < A.x) and (I.x > C.x))
        else if (A.x < C.x) then exit((I.y > C.y) and (I.y < A.y) and (I.x > A.x) and (I.x < C.x));
    end;
    exit(false);
end;
procedure Main();
var 
    M, N: point;
    count: byte = 0;
begin
    readln(A.x, A.y);
    readln(C.x, C.y);
    readln(M.x, M.y);
    readln(N.x, N.y);
    if (isInside(M)) then count := count + 1;
    if (isInside(N)) then count := count + 1;
    writeln(count);
end;
begin
    Main
end.