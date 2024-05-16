type
    point = record x, y: extended; end;
    circle = record p: point; R: extended; end;
function distance(p1, p2: point):extended;
begin
    exit(abs(sqrt((p2.x - p1.x) * (p2.x - p1.x) + (p2.y - p1.y) * (p2.y - p1.y))))
end;

procedure Main();
var 
    c1, c2: circle;
begin
    readln(c1.p.x, c1.p.y, c1.R, c2.p.x, c2.p.y, c2.R);
    //write(distance(c1.p, c2.p));
    if (c1.p.x = c2.p.x) and (c1.p.y = c2.p.y) then 
        writeln(abs(c1.R - c2.R):0:3)
    else if (c1.R + c2.R >= distance(c1.p, c2.p)) then
        writeln(0)
    else 
        writeln(distance(c1.p, c2.p) - c1.R - c2.R:0:3);
end;

begin
    Main
end.