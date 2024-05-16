var       s:ansistring;
        min,k,vt,len,n:int64;
begin
    readln(n);
    readln(s);
        k:=pos('1 ',s); min:=n;

        while k<>0 do
        begin

                if k=1 then delete(s,1,2)
                else
                begin
                if (k>=4) and (min>k div 2) then min:=k div 2;
                delete(s,1,k+1);
                end;
        k:=pos('1',s);
        end;
    if (length(s) >= 4) and (min>length(s) div 2) then min:=length(s) div 2;

writeln(s);
writeln(min);

end.
