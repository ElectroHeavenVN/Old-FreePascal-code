procedure Main();
var 
    s: string;
    arr: array ['a'..'z'] of byte = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    c: char;
begin
    readln(s);
    s := lowercase(s);
    for c in s do
        if (c >= 'a') and (c <= 'z') then
            arr[c] := arr[c] + 1;
    for c in ['a'..'z'] do 
    begin
        if (arr[c] <> 0) then 
            writeln(c, ' ', arr[c]);
    end;
end;

begin
    Main
end.