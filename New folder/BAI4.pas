var     N,M,i:word;
        K,count:longint;
        L:array[1..100000] of longword;

begin
        assign(input, 'CUTLINE.inp');
        reset(input);
        assign(output, 'CUTLINE.out');
        rewrite(output);
        readln(N,K,M);
        count:=0;
        for i:=1 to N do read(L[i]);
        for i:=1 to N do
        begin
                if L[i]>3 then
                begin
                        count:=count+(L[i] div M - 1);
                        K:=K-(L[i] div M);
                        if K<=0 then writeln(count);
                end;
        end;
        //close(f); close(g);

end.
