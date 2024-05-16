uses math;
var 
    fi, fo: text;
    i, j, T: word;
    N: longword;
begin
    assign(fi, 'Bai4.inp');
    assign(fo, 'Bai4.out');
    reset(fi);
    rewrite(fo);
    readln(fi, T);
    for i := 1 to T do 
    begin
        j := 0;
        readln(fi, N);
        if (sqrt(N) - floor(sqrt(N)) = 0) then
        begin
            writeln(fo, floor(sqrt(N)), ' 1');
            continue;       
        end;
        for j := 2 to floor(N / 2) do 
        begin
            if (sqrt(j) - floor(sqrt(j)) = 0) or (N mod j <> 0) then
                continue;
            if (sqrt(N div j) - floor(sqrt(N div j)) = 0) then
            begin
                writeln(fo, floor(sqrt(N div j)), ' ', j);     
                break;
            end; 
        end;
        if (j = 0) or (j = floor(N / 2)) then
            writeln(fo, '1 ', N);
    end; 
    close(fi);
    close(fo);
end.