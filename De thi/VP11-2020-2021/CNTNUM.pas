uses math;

function GCD(n1, n2: uint64):uint64;
begin
    while (n1 <> n2) do 
    begin
        if (n1 > n2) then
            n1 -= n2
        else
            n2 -= n1;
    end;
    exit(n1);
end;

function divCount(P, X, Y: uint64):uint64;
var 
    c1, c2, c3: uint64;
begin
    c1 := P div X;
    c2 := P div Y;
    c3 := P div ((X * Y) div GCD(X, Y));
    exit(c1 + c2 - c3);
end;

procedure Main();
var 
    A, B, C, D: uint64;
    num, result, gcdCD: uint64;
    f: text;
begin
    assign(f, 'CNTNUM.INP');
    reset(f);
    read(f, A, B, C, D);   
    // A := 19;
    // B := 47;
    // C := 3;
    // D := 10;
    close(f);
    //gcdCD := GCD(C, D);
    assign(f, 'CNTNUM.OUT');
    rewrite(f);
    num := B - A + 1;   //29
    result := num - divCount(B, C, D) + divCount(A - 1, C, D);
    // if (C - A mod C + B mod C < C) or (A mod C + B mod C = 0) then
    //     result := ceil(num / C)
    // else
    //     result := num div C;
    // if (D - A mod D + B mod D < D) or (A mod D + B mod D = 0) then
    //     result := result + ceil(num / D)
    // else 
    //     result := result + num div D;
    // if (gcdCD - A mod gcdCD + B mod gcdCD < gcdCD) then
    //     result := result - ceil(num / ((c*d) / gcdCD))
    // else 
    //     result := result - num div ((c*d) div gcdCD);
    // result := num - result;
    //if (gcdCD = 1) then result := result + 1;
    writeln(f, result);
    close(f);
end;

begin
    Main
end.