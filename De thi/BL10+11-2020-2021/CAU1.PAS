program Bai1_BacLieu10_11;
var N,i:word;
	arr:array of integer;
	count,max:longword;
	f,g:text;
begin
	assign(f,'CAU1.INP');
	assign(g,'CAU1.OUT');
	rewrite(g);
	reset(f);
	read(f,N);
	setlength(arr, n);
	if (N<2) or (N>10000) then exit else
	begin
		for i:=0 to N - 1 do read(f,arr[i]);
		count:=1;  max:=0;
		for i:=0 to N - 2 do
		begin
			if arr[i]<=arr[i+1] then inc(count)
			else begin if max<count then max:=count; count:=1; end;
		end;
		if max<count then max:=count; count:=1;
		write(g,max);
	end;
	close(f); close(g);
end.