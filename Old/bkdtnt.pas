var d1x, d1y, d2x, d2y, d3x, d3y, l1, l2, l3: real;

begin
    read(d1x, d1y);
    read(d2x, d2y);
    read(d3x, d3y);
    l1 := sqrt(sqr(d1x) + sqr(d1y));
    l2 := sqrt(sqr(d2x) + sqr(d2y));
    l3 := sqrt(sqr(d3x) + sqr(d3y));
    if (l1 + l2 <= l3) or (l1 + l3 <= l2) or (l2 + l3 <= l1) begin
        writeln('NO');
        exit;
    end;
    writeln( / 2);
end.