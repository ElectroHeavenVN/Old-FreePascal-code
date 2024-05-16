uses math;
var  q:byte;
     n,i,j:longword;
     temp1,temp2:int64;
     count:array[0..4] of longword;
     res: int64;
     arr:array[1..100000] of int64;
     f,g:text;
begin
        assign(f,'pDIV5.INP');
        assign(g,'pDIV5.OUT');
        rewrite(g);
        reset(f);
        readln(f,q);
        while q>0 do
        begin
                dec(q);
                readln(f,n);
                for i:=1 to n do
                begin
                        read(f,arr[i]);
                        inc(count[arr[i] mod 5]);
                end;
                temp1:=min(count[1],count[4]) + abs(count[1]-count[4]) div 5;
                temp2:=min(count[2],count[3]) + abs(count[2]-count[3]) div 5;
                res:=count[0] + temp1 + temp2;
                writeln(g,res);
                count[0]:=0; count[1]:=0; count[2]:=0; count[3]:=0; count[4]:=0;
        end;
        close(f); close(g);

end.
