uses sysutils, DateUtils;
var day, month, year: longword;
    dateTime: TDateTime;
begin
    readln(day, month, year);
    dateTime := encodedate(year, month, day);
    writeln(dayspan(dateTime, encodedate(1, 1, 1)) + 1:0:0);    
end.