type point = record
            x, y: longint;
            end;
    eqn = record
        a, b: longint;
        end;
var
    A, B, C, D: point;
    ptAB, ptBC, ptAC: eqn;
function calcEqn(P1, P2: point):eqn;
begin
    
end;
function isInside(P: point):boolean;
begin
    if (B.x <= A.x) and (A.x <= C.x) then
    begin
        if (A.y >= B.y) and (A.y >= C.y) then exit((P.y >= ptAB.a * P.x + ptAB.b) and (P.y <= ptAC.a * P.x + ptAC.b) and (P.y <= ptBC.a * P.x + ptBC.b));
    end;
end;
begin
    readln(A.x, A.y);
    readln(B.x, B.y);
    readln(C.x, C.y);
    readln(D.x, D.y);
    ptAB := calcEqn(A, B);
    ptBC := calcEqn(B, C);
    ptAC := calcEqn(A, C);
    if (isInside(D)) then writeln(1)
    else writeln(0);
end.