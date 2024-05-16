function calc(params):integer;
begin
    
end;

procedure Main();
var
    n, k, i, j: longword;
    f: text;
    arr: array of longword;
begin
    assign(f, 'BAI4.INP');
    reset(f);
    readln(f, n, k);
    setlength(arr, n);
    for i := 0 to n - 1 do
        read(f, arr[i]);
    close(f);
    assign(f, 'BAI4.OUT');
    rewrite(f);
    for i := n downto 1 do
    begin
        for j := 0 to n - i do
        begin
            
        end;
    end;
end;

begin
    Main
end.