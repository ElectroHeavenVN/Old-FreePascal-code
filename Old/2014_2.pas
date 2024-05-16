uses
    strutils;
procedure Main();
var f: text;
    str, result: ansistring;
    arrstr: array of ansistring;
begin
    result := '';
    assign(f, 'dulieuvao.txt');
    reset(f);
    read(f, str);
    close(f);
    assign(f, 'ketquara.txt');
    rewrite(f);
    arrstr := splitstring(str, ' ');
    if pos('e', str) <> 0 then for str in arrstr do 
        if (str[2] = 'e') and (length(result) <= length(str)) then result := str;
    if (result = '') then writeln(f, 'String not found!')
    else writeln(f, result);
    close(f);
end;
begin
    Main;
end.