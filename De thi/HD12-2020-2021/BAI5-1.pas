var     arr: array of array of int64;
        n,num,i,j,u,v,k,res:int64;
        key:ansistring;
        f,g:text;
begin
        assign(f,'BAI5.INP');
        assign(g,'BAI5.OUT');
        rewrite(g);
        reset(f);
        readln(f,n);
        setlength(arr, n, n);
        readln(f,u,v);
        readln(f,key);
        i:=1; j:=1; num:=0;
        while i<=n do
        begin
                while j<=n do
                begin 
                        inc(num);
                        arr[i,j]:=num;
                        inc(j);
                end;
                inc(i); j:=1;
        end;
        res:=arr[u,v]; k:=1; //n:=n;
        while k<=length(key) do
        begin
                if key[k]='U' then
                begin
                        res:=res+n;
                        if res>=n*n then res:=res-n*n+n;
                end else
                if key[k]='R' then
                begin
                        if v=1 then begin res:=res+n-1; v:=n end
                        else if v>1 then begin res:=res-1; v:=v-1; end;
                end else
                if key[k]='D' then
                begin
                        res:=res-n;
                        if res<=0 then res:=res+n*n-n;
                end else
                if key[k]='L' then
                begin
                        if v=n then begin res:=res-n+1; v:=1 end
                        else if v<n then begin res:=res+1; v:=v+1; end;
                end;
                inc(k);
                if k>length(key) then write(g,res);
        end;
        close(f); close(g);
end.
