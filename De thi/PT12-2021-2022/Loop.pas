var     N,i,i_min:longword;
        temp,ans,K:int64;
        arr,count:array[1..100000] of int64;
begin
        assign(input, 'LOOP.inp');
        assign(output, 'LOOP.out');
        reset(input);
        rewrite(output);
        readln(N,K);
        for i:=1 to N do read(arr[i]);
        for i:=1 to N do
        begin
                temp:=arr[i];
                while (temp mod K = 0) do
                begin
                        temp:=temp div K;
                        inc(count[i]);
                        //write(temp, ' ');
                end;
        end;

        i_min:=1;
        for i:=2 to N do
                if (count[i_min]>count[i]) then i_min:=i;

        ans:=0;
        for i:=1 to N do
                if (i<i_min) then ans:=ans+arr[i]*(count[i_min]+2)
                else ans:=ans+arr[i]*(count[i_min]+1);
        writeln(ans);
end.