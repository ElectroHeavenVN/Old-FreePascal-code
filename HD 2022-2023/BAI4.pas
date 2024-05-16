uses sysutils;
procedure Main();
var 
    n, k, i: word;
    arr: array of word;
    count: word = 0;
    s: ansistring = '';
    c: char;
    temp: longint;
begin
    assign(input, 'HC.inp');
    assign(output, 'HC.out');
    reset(input);
    rewrite(output);
    readln(n, k);
    setlength(arr, n);
    for i := 0 to n - 1 do
    begin
        read(arr[i]);
        if (i > 0) then 
        begin
            temp := arr[i] - (arr[0] + i * k);
            if (temp <> 0) then 
            begin
                count := count + 1;
                c := '-';
                if (temp < 0) then 
                    c := '+';
                s := s + c + ' ' + inttostr(i + 1) + ' ' + inttostr(abs(temp)) + #13#10;
            end;
        end;
    end;
    s := inttostr(count) + #13#10 + s;
    writeln(s);
end;

begin
    Main
end.