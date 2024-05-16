procedure Main();
var 
    n: byte;
    i: word;
    color: boolean = false;
begin
    readln(n);
    for i := 1 to n * n do
    begin
        if (color) then
            write('B')
        else 
            write('W');
        color := not(color);
        if i mod n = 0 then 
        begin
            writeln();
            if (n mod 2 = 0) then 
                color := not(color);
        end;
    end;    
end;

begin
    Main
end.