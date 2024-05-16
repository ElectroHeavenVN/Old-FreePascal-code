uses
    strutils;
var i: longword;
function power(b: extended; n: longword):extended;
var i: longword;
begin
    power := 1;
    for i := 1 to n do power *= b;
end;

function isDivisible(arr: array of word; k: byte):boolean;
var 
    i, j: longword;
    num: longint;
    s: string;
begin
    if length(arr) = 0 then exit(false);
    num := arr[0];
    i := 0;
    while i <= int(power(2, length(arr) - 1)) - 1 do  
    begin
        i += 1;
        s := inttobin(i, length(arr) - 1, 0);
        for j := 1 to length(s) do 
        begin
            if (s[j] = '1') then num += arr[j];
            if (s[j] = '0') then num -= arr[j];
        end;
        if (num mod k = 0) then exit(true);
    end;
    exit(false);
end;
procedure Main();
var
    n, i: word;
    k: byte;
    arr: array of word;
    f: text;
begin
    assign(f, 'bai5.inp');
    // rewrite(f);
    // for i := 1 to 100 do write(f, i, ' ');
    // close(f);
    // exit;
    reset(f);
    readln(f, n, k);
    setlength(arr, n);
    for i := 0 to n - 1 do
        read(f, arr[i]);
    close(f);
    assign(f, 'bai5.out');
    rewrite(f);
    if isDivisible(arr, k) then
        writeln(f, 1)
    else
        writeln(f, 0);
    close(f);
end;
begin
    Main
end.