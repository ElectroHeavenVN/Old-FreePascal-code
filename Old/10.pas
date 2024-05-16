uses sysutils, DateUtils;
var totalDays: longword;
    dateTime: TDateTime;
begin
    readln(totalDays);
    dateTime := incday(encodedate(1, 1, 1), totalDays - 1);
    writeln(dayof(dateTime), ' ', monthof(dateTime), ' ', yearof(dateTime));    
end.