var A,B:longword;
    i,count_res:longword;
function test(num:longword):boolean;
var reverse_num,temp,new_num:longword;
begin
	new_num:=num; reverse_num:=0; temp:=0; 
	while new_num<>0 do
    begin
		temp:=new_num mod 10;
		new_num:=new_num div 10;
		reverse_num:=reverse_num*10+temp;
	end;
	if num=reverse_num then test:=true else test:=false;
end;

function prime(n:longword):boolean;
var i:longword;
begin
	if n=1 then prime:=false 
	else
	begin
		i:=1;
		repeat inc(i);
		until (n mod i = 0) or (i*i>n);
		if i*i>n then prime:=true else prime:=false;
	end;
end;
begin
	read(A,B);
	count_res:=0;
	if (A<10) or (B<10) then exit;
	if (A>100000) or (B>100000) then exit;
	for i:=A to B do begin if (test(i)=true) and (prime(i)=true) then inc(count_res); end;
	writeln(count_res);
end.