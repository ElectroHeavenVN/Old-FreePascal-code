program Bai1_HaTinh11;
var n:longword;
	a,b:array[1..1000000] of int64;
	i:longword;
	j:longint;
	sum:int64;
	f,g:text;
begin
	assign(f,'AVR.INP');
	assign(g,'AVR.OUT');
	rewrite(g);
	reset(f);
	read(f,n);
	for i:=1 to n do read(f,b[i]);
	a[1]:=b[1];
	sum := a[1];
	for i:=2 to n do
	begin
		a[i]:=b[i]*i-sum;
		sum:=sum+a[i];
	end;
	for i:=1 to n do write(g,a[i], ' ');
	close(f); close(g);
end.