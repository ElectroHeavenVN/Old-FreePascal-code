uses math;
var     n,m,res:longword;
        arr, color:array[1..100000] of longword;
        i,j,color_fade:longword;
begin
        readln(n,m);
        for i:=1 to n do read(arr[i]);
        res:=n;
        i:=1; j:=1; color_fade:=1;
        color[arr[1]]:=1;
        while (i<=j) and (j<=n) do
        if (color_fade<m) then
        begin
                inc(j);
                if color[arr[j]]=0 then inc(color_fade);
                inc(color[arr[j]]);
        end
        else
        begin
                res:=min(res,j-i+1);
                dec(color[arr[i]]);
                if color[arr[i]] = 0 then dec(color_fade);
                inc(i);
        end;
        writeln(res);
end.
