uses math;
var     T,i,j:longword;
        a,b,res: longword;
        count:longint;
function prime(num:longword):boolean;
var i:longword;
begin
        prime:=true;
        if num<2 then prime:=false;
        i:=2;
        while i<=trunc(sqrt(num)) do 
		begin
			                if num mod i = 0 then exit(false);
inc(i);
		end;
end;
begin
        assign(input,'SDB.INP');
        assign(output,'SDB.OUT');
        rewrite(output);
        reset(input);
        readln(T);
        for i:=1 to T do
        begin
                readln(a,b);
                count:=0;
                if b<36 then 
				begin
					writeln(0);
					continue;
				end;
                if (a<=power(3,8)) and (power(3,8)<=b) then inc(count);
                if (a<=36) and (36<=b) then inc(count);
                for j:=5 to 331 do
                        if prime(j) and (a <= j * j * 9) and (j*j*9<=b) then inc(count) else
                                if (j*j*9>b) then break;
                writeln(count);
        end;
end.
