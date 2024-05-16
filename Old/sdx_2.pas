uses
    sysutils;
var 
    n: word;
    il, ir, j: byte;
begin
    for n := 101 to 46999 do begin
    il := 1;
    ir := length(inttostr(n));
        for j := 1 to round(ir / 2) do if inttostr(n)[il] = inttostr(n)[ir] then begin
            il += 1; ir -= 1;
            if (inttostr(n)[il] = inttostr(n)[ir]) and ((il = ir) or (il = ir - 1)) then write(n, ' ');
        end else break;
    end;
end.