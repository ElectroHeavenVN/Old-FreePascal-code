program Bai1_PhuTho;
var n,count:int64;
	i:longword;
	f, g: text;
function prime(num:int64):boolean;
var j:longword;
begin
	prime:=true;
	for j:=2 to trunc(sqrt(num)) do if num mod j = 0 then
	begin prime:=false; break; end;
end;
begin
	assign(f,'SPNUM.INP');
	assign(g,'SPNUM.OUT');
	rewrite(g);
	reset(f);
	read(f,N);
	i:=3; count:=1;
	while i <= sqrt(n) do {chay nhanh hon i*i<=n}
	begin
		if prime(i) then inc(count);
		i := i + 2;
	end;
	write(g,count);
	close(f); close(g);
end.