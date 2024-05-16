uses strutils;
procedure Main();
var 
    str: string;
    strs: array of ansistring;
    i: byte;
begin
    readln(str);
    strs := splitstring(str, ' ');
    for i := length(strs) - 1 downto 0 do
        if (strs[i] <> '') then 
        begin
            writeln(strs[i]);
            break;
        end;
end;

begin
    Main
end.