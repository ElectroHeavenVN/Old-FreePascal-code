var     N:longword;
        f,g:text;
        B,C,res,count:longword;
begin
        assign(f,'BSBB.INP');
        assign(g,'BSBB.OUT');
        rewrite(g);
        reset(f);
        readln(f,N);
        count:=0;
        for C:=1 to N-1 do
        begin
            res:=N-C;
            for B:=1 to res do
                if res mod B = 0 then inc(count);
        end;
        writeln(g,count);
        close(f); close(g);
end.
