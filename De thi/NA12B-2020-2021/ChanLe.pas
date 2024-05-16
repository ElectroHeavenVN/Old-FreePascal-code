program Bai1_NgheAn_Bang_B;
var N,i:longword;
	arr:array[1..100000] of longword;
	sum: longint;
	max: longint;
	f,g:text;
begin
	assign(f,'ChanLe.Inp');
	assign(g,'ChanLe.Out');
	rewrite(g);
	reset(f);
	read(f,N);
	for i:=1 to N do read(f,arr[i]);
	max:=-1;
	for i:=1 to N-1 do 
	begin
		if ((arr[i] mod 2 = 0) and (arr[i+1] mod 2 = 1)) or ((arr[i] mod 2 = 1) and (arr[i+1] mod 2 = 0)) then
			sum:=arr[i]+arr[i+1] else sum:=-1;
		if sum>=max then max:=sum;
	end;
	write(g,max); 
	close(f);  close(g);
end.