var A,B,S1,S2:string;
	code1,code2:int64;
	i: longint;
begin
	readln(A); readln(B);
	for i:=length(A) downto 1 do S1:=S1+A[i];
	val(S1,code1);
	for i:=length(B) downto 1 do S2:=S2+B[i];
	val(S2,code2);
	if code1>code2 then writeln(S1) else writeln(S2);
end.