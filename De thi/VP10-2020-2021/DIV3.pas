var n,i,res:longword;
	arr:array[1..100000] of longword;
	temp:array[0..2] of longword;
	f,g:text;
begin
	assign(f,'DIV3.INP');
	assign(g,'DIV3.OUT');
	rewrite(g);
	reset(f);
	read(f,n);
	for i:=1 to n do 
	begin
		read(f,arr[i]);
		inc(temp[arr[i] mod 3]);
	end;
	res:=temp[0]*(temp[0]-1) div 2 + temp[1]*temp[2];
	write(g,res);
	close(f); close(g);
end.