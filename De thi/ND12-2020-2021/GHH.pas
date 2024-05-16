uses sysutils;
var
	n, i, count: word;
    arr: array of longword;
	s: ansistring = '';
function find(num: longword):boolean;
var 
	sum:int64;
	i:longword;
begin
	if (num <= 1) then exit(false);
	sum := 1;
	for i := 2 to round(sqrt(num)) do 
		if num mod i = 0 then
		begin
			if (num div i = i) then 
				sum := sum + i
			else
				sum := sum + i + num div i;
			if sum >= num then exit(true);
		end;
	if sum >= num then exit(true) else exit(false);
end;
begin
	assign(input, 'GHH.INP');
	assign(output,'GHH.OUT');
	rewrite(output);
	reset(input);
	count := 0;
	readln(n);
	setlength(arr, n);
	for i := 0 to n - 1 do
	begin
		readln(arr[i]);
		if find(arr[i]) then
		begin
			inc(count);
			s := s + inttostr(arr[i]) + #13#10;
		end;
	end;
	s := inttostr(count) + #13#10 + s;
	write(s);
	close(input);
	close(output);
end.
