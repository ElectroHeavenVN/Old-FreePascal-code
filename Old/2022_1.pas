function TimNguoiCuoiCung(n, k: byte):word;
var ref: word;
begin
    if n > 1 then 
    begin
        if n < k then exit((TimNguoiCuoiCung(n - 1, k) + k) mod n);
        if n >= k then 
        begin
            ref := TimNguoiCuoiCung(n - n div k, k);
            if ref < n mod k then exit(ref - n mod k + n);
            exit((k * ref - n mod k) div (k - 1));
        end;
    end;
    exit(0);
end;
procedure Main();
var 
    n, s, k, i, ref: byte;
begin
    readln(n, s, k);
    writeln;
    //a
    ref := TimNguoiCuoiCung(n, s);
    writeln(ref);
    //b
    for i := 1 to n do
    begin
        if (ref + i = k) or ((ref + i > n) and (ref + i - n = k)) then if i + 1 > n then writeln(i + 1 - n) else writeln(i + 1);
    end;

end;
begin
    Main
end.
//https://en.wikipedia.org/wiki/Josephus_problem#The_general_case