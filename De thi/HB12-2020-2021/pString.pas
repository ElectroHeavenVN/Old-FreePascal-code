procedure Main();
var 
    q, n, i, j, k: byte;
    c: char;
    s: ansistring;
    arr: array of longword;
begin
    readln(q);
    for i := 1 to q do
    begin
        arr := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        readln(n);
        for j := 1 to n do
        begin
            readln(s);
            for c in s do
                arr[ord(c) - 97] := arr[ord(c) - 97] + 1;
        end;
        for k in arr do
            if (k mod n <> 0) then 
                s := 'NO';
        if (s <> 'NO') then
            s := 'YES';
        writeln(s);
    end;
end;

begin
    Main
end.