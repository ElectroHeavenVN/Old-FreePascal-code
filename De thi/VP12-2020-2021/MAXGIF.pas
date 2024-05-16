program Bai1_VinhPhuc12;
var n, i:longword;
    arr: array of word;
    max: longword = 0;
	f: text;
begin
	assign(f, 'MAXGIF.INP');
	reset(f);
	readln(f, n);
	setlength(arr, n);
	for i := 0 to n - 1 do
	begin
		read(f, arr[i]);
		if (i > 0) and (max < arr[i] + arr[i - 1]) then max := arr[i] + arr[i - 1];
	end;
	close(f);
	assign(f, 'MAXGIF.OUT');
	rewrite(f);
	write(f, max);
	close(f);
end.
