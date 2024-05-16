type Anh = record hcv, hcb, hcd: longword; end;

procedure Main();
var 
    n, m, l, r, i, j: longword;
    arr: array of byte;
    temp: Anh;
begin
    assign(input, 'HHBS.inp');
    assign(output, 'HHBS.out');
    reset(input);
    rewrite(output);
    readln(n, m);
    setlength(arr, n);
    for i := 0 to n - 1 do
        read(arr[i]);
    for i := 1 to m do
    begin
        with temp do
        begin 
            hcv := 0;
            hcb := 0;
            hcd := 0;
        end;
        readln(l, r);
        for j := l - 1 to r - 1 do 
        begin
            with temp do 
            begin
                if (arr[j] = 1) then hcv := hcv + 1;
                if (arr[j] = 2) then hcb := hcb + 1;
                if (arr[j] = 3) then hcd := hcd + 1;
            end;
        end;
        writeln(temp.hcv, ' ', temp.hcb, ' ', temp.hcd);
    end;
end;

begin
    Main
end.