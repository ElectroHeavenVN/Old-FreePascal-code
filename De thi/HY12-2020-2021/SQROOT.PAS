program Bai1_HungYen;
var N:int64 = 18; 
	f,g:text;
begin
	//assign(f,'SQROOT.INP');
	//assign(g,'SQROOT.OUT');
	//rewrite(g);
	//reset(f);
	//read(f,N);
	if N<0 then exit;
	write({g,}((N mod 2021)*((N+1) mod 2021)*((2*N+1) mod 2021)*337 mod 2021));
	//close(f); close(g);
end.