var k,i,j,count:longword;
        s,len,temp:string;
        f,g:text;
begin
        {assign(f,'D:\HAI\BAI5.INP');
        rewrite(f);
        readln(k);  write(f,k); writeln(f);
        readln(s);  write(f,s);
        close(f);}

        assign(f,'D:\HAI\BAI5.INP');
        reset(f);
        readln(f,k);
        readln(f,s);
        if k=0 then
        begin
                for i:=1 to length(s) do
                if s[i]='0' then inc(count);
        end else
        begin

                for i:=1 to length(s) do
                begin
                        temp:=copy(s,i,k);
                        for j:=1 to length(temp) do
                        if temp[j]='1' then inc(count);

                end;
        end;
        assign(g,'D:\HAI\BAI5.OUT');
        write(count);   write(g,count);
        close(g);
        close(f);
end.