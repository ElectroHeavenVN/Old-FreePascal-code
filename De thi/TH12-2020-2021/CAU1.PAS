program Bai1_ThanhHoa;
var X,Y:int64;
	count,max,i:int64;
	f,g:text;
begin
	assign(f,'CAU1.INP');
	assign(g,'CAU1.OUT');
	rewrite(g);
	reset(f);
	read(f,X); read(f,Y);
	count:=0;
	if X>Y then max:=X else max:=Y;
	i := 1;
	while (i <= max div 2) do
	begin
		if (X mod i = 0) and (Y mod i = 0) then inc(count);
		i := i + 1;
	end;
	write(g,count);
	close(f); close(g);
end.