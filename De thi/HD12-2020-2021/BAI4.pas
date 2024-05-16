uses math;
var a : array[1..100000] of longword;
    c : array[1..100000] of longword;
i,j,n,m, cm, result:longword; 
begin
read(n,m);
for i:=1 to n do read(a[i]);

i:=1; cm:=1; j:=1; result:=n;
        c[a[1]]:=1;
while (i<=j) and (j<=n) do   
        if cm<m then
            begin
            j+=1; 
            if c[a[j]]=0 then cm+=1; 
            c[a[j]] +=1; 
            end
        else
            begin
            result:=min(result,j-i+1);
            c[a[i]]-=1;
            if c[a[i]]=0 then cm -=1; 
            i+=1;
            end;
writeln(result);
end.