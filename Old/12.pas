uses SysUtils, DateUtils, Math;
procedure Main();
var
    d1, m1, y1, y, count, i: word;
    hasAnyBadDay: boolean;
    dateTime: TDateTime;
begin
    readln(d1, m1, y1, y);
    dateTime := encodeDate(y1, m1, d1);
    for i := floor(daySpan(encodeDate(y, 1, 1), dateTime)) to floor(daySpan(encodeDate(y, 12, 31), dateTime)) do
    begin
        count := 0;
        if (i mod 23 = 0) then count += 1;
        if (i mod 27 = 0) then count += 1;
        if (i mod 33 = 0) then count += 1;
        if (count > 1) then 
        begin
            hasAnyBadDay := true;
            writeln(dayof(incDay(dateTime, i)), ' ', monthof(incDay(dateTime, i)), ' ', yearof(incDay(dateTime, i)), ' ', count);
        end;
    end;
    if (not(hasAnyBadDay)) then writeln('lucky!');
end;
begin
    Main
end.