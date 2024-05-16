var     N,L,R,i,j:longword;
        Q,k:byte;
        res:longword;
        arr:array[1..1000] of longword;
        f,g:text;
begin
        assign(f,'Invert.Inp');
        assign(g,'Invert.Out');
        rewrite(g);
        reset(f);
        readln(f,N,Q);
        for i:=1 to N do read(f,arr[i]);
        for k:=1 to Q do
        begin
                read(f,L,R);
                res:=0;
                j:=L+1;
                while j<=R do
                begin
                    i:=L;
                    while i<j do
                    begin
                        if arr[i]>arr[j] then inc(res);
                        inc(i);
                    end;
                    inc(j);
                end;
                writeln(g,res);
        end;
        close(f); close(g);
end.