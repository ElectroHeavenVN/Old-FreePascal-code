uses math;
var N,i:uint64;
	temp:uint64;
	f,g:text;
function prime(num:uint64):boolean;
var j:int64 = 2;
begin
	if num<2 then exit(false);
	while (j <= sqrt(num)) do 
	begin
		if num mod j = 0 then exit(false);
		j := j + 1;
	end;
	exit(true);
end;
begin
	assign(f,'SOHOC.INP');
	assign(g,'SOHOC.OUT');
	rewrite(g);
	reset(f);
	read(f,N);
	//n := 495139382686377806;
	temp:=ceil(sqrt(N));
	if sqr(temp)=N then write(g, N) else
	begin
		i:=temp;
		while true do
			if prime(i) then
			begin
				write(g, i*i);
				break;
			end
			else i := i + 1 + i mod 2;
	end;
	close(f); close(g);
end.