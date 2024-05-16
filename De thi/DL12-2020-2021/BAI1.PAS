program Bai1_DakLak;
var N,i,j,count:word;
	arr:array[1..1000,1..1000] of integer;
	sum_column,sum_row:array[1..1000] of int64;
	f,g:text;
begin
	count := 0;
	assign(f,'BAI1.INP');
	assign(g,'BAI1.OUT');
	rewrite(g);
	reset(f);
	read(f,N);
	for i:=1 to N do 
		for j:=1 to N do 
		begin
			read(f, arr[i,j]);
			sum_row[j]:=sum_row[j]+arr[i,j];
		end;
	for i:=1 to N do 
		for j:=1 to N do
			sum_column[i]:=sum_column[i]+arr[i,j];
	for i:=1 to N do 
		for j:=1 to N do 
			if sum_column[i]=sum_row[j] then inc(count);
	write(g,count);
	close(f); close(g);
end.