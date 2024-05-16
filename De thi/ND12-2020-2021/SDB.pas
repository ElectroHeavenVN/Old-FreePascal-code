var N,i:longint;
	arr:array[1..1000000] of int64;
	count: array[1..100000000] of int64;
	count2: array[1..100000000] of int64;
	count_res:int64;
	f,g:text;
begin

	assign(f,'SDB.INP');
	assign(g,'SDB.OUT');
	rewrite(g);
	reset(f);
	read(f,N);
	count_res:=0; 
	for i:=1 to N do 
	begin
		read(f,arr[i]);	
		//writeln(count[arr[i]]);
		if (arr[i] <= 100000000) then inc(count[arr[i]])
		else inc(count2[arr[i] - 100000000]);
	end;
	for i:=1 to N do 
		if ((arr[i] <= 100000000) and (count[arr[i]] = 1)) or ((arr[i] > 100000000) and (count2[arr[i] - 100000000] = 1)) then inc(count_res);
	writeln(g,count_res);
    for i:=1 to N do
		if ((arr[i] <= 100000000) and (count[arr[i]] = 1)) or ((arr[i] > 100000000) and (count2[arr[i] - 100000000] = 1)) then writeln(g,arr[i]); 
	close(f);
	close(g);
	readln
end.