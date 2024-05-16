VAR     N,i:longword;
        arr:ARRAY[1..100000] OF WORD;
        sum:int64;
        f,g:TEXT;
FUNCTION count_divisor(x:WORD):longword;
var 
    i: longword = 2;
BEGIN
    count_divisor := 2;

        if (x = 1) then exit(1);
    while (i <= sqrt(x)) do
    begin
        if (i = sqrt(x)) then
            count_divisor := count_divisor + 1
        else if (x mod i = 0) then
            count_divisor := count_divisor + 2;
        i := i + 1;
    end;
END;
BEGIN
        assign(f,'MATONG.INP');
        assign(g,'MATONG.OUT');
        rewrite(g);
        reset(f);
        read(f,N);
        sum:=0;
        FOR i:=1 TO N DO
        BEGIN
                read(f,arr[i]);
                sum:=sum+arr[i]*count_divisor(arr[i]);
                //writeln(count_divisor(arr[i]));
        END;
        write(g,sum);
        close(f); close(g);
END.
