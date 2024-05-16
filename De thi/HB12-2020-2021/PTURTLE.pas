program Bai1_HoaBinh;
uses math;
var     q:word;
        a,b,c:int64;
        x1,x2,x3:int64;
begin
        readln(q);
        while q<>0 do
        begin
                dec(q);
                readln(a,b,c);
                x1:=min(a,min(b,c));
                x3:=max(a,max(b,c));
                x2:=a+b+c-x1-x3;
                if (x1=x2) and (x2=x3) then writeln('0') else 
                if ((x1 = x2) and (x3 - x2 = 1)) or ((x2 - x1 = 1) and (x2 = x3)) then writeln(0)
                else begin
                if (x1=x2) and (x2<x3) then
                begin 
                        dec(x3);
                        inc(x1);
                        inc(x2);
                end
                else
                if (x1<x2) and (x2=x3) then
                begin
                        inc(x1);
                        dec(x2);
                        dec(x3);
                end
                else
                begin inc(x1); dec(x3); end;
                writeln(2*(x3-x1));
                end;
        end;
end.