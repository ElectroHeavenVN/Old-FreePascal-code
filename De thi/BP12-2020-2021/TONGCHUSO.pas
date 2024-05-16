program Bai1_BinhPhuoc;
var N:uint64;
	res:byte;
	f,g:text;
begin
	assign(f,'TONGCHUSO.INP');
	assign(g,'TONGCHUSO.OUT');
	rewrite(g);
	reset(f);
	read(f,N);
	res:=0;
	while N<>0 do
	begin
		res:=res + (N mod 10);
		N:=N div 10;
	end;
	write(g,res);
	close(f);
	close(g);
end.