uses math;

function gcd(a, b: longword):longword;
var 
    i: longword;
begin
    for i := min(a, b) downto 2 do 
        if (a mod i = 0) and (b mod i = 0) then 
            exit(i);
    exit(1);
end;

function lcm(a, b: longword):longword;
var 
    i: longword;
begin
    for i := max(a, b) to a * b do 
        if (i mod a = 0) and (i mod b = 0) then 
            exit(i);
end;

procedure Main();
var 
    a, b, c, d, lcmab, gcdab: longword;
begin
    readln(a, b, c, d);
    lcmab := lcm(b, d);
    a := a * lcmab div b;
    c := c * lcmab div d;
    a := a + c;
    // d := lcmab;
    // b := lcmab;
    gcdab := gcd(a, lcmab);
    a := a div gcdab;
    b := lcmab div gcdab;
    writeln(a, ' ', b);
end;

begin
    Main
end.