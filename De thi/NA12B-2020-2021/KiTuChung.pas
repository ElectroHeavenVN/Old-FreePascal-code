var X,Y:string;
	i:byte; j:char;
	max_len,min_len:byte;
	countX,countY:array['a'..'z'] of byte;
begin
	readln(X);
	readln(Y);
	for i:=1 to length(X) do countX[X[i]] +=1;
	for i:=1 to length(Y) do countY[Y[i]] +=1;
	for j:='a' to 'z' do 
		if (countX[j] <> 0) and (countY[j]<>0) then writeln(j);
end.