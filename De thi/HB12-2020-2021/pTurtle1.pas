uses math;
procedure Main();
var
    q, i: word;
    a, b, c, maxT, minT, avgT: int64;
begin
    readln(q);
    for i := 1 to q do
    begin
        read(a, b, c);
        maxT := max(a, max(b, c));
        minT := min(a, min(b, c));
        avgT := a + b + c - maxT - minT;
        if (maxT <> minT) and (maxT >= avgT) then
        begin
            maxT := maxT - 1;
            if (maxT = avgT) then 
                avgT := avgT - 1;
        end;
        if (maxT <> minT) and (minT <= avgT) then
        begin
            minT := minT + 1;
            if (minT = avgT) then 
                avgT := avgT + 1;
        end;
        writeln(maxT - minT + maxT - avgT + avgT - minT);
    end;
end;

begin
    Main
end.