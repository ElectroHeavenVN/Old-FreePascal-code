program Bai2_DakLak;
uses sysutils;
function prime(num:byte):boolean;
var i:byte;
begin
	if (num < 2) then exit(false);
	for i:=2 to trunc(sqrt(num)) do
        if num mod i = 0 then exit(false);
    exit(true);
end; 
var S: string;	
	i: byte;
	//count:array[1..9] of byte;
	f,g:text;
	str: string = ''; 
begin	
	assign(f,'BAI2.INP');
	assign(g,'BAI2.OUT');
	rewrite(g);
	reset(f);
	readln(f,S);
	for i := 1 to length(s) do
	begin
		if prime(ord(s[i]) - 48) and (pos(s[i], str) < 1) then
			str := str + s[i] + ' ';
		//if (S=0) and (count[temp]=0) then str := '0';	
		//if (count[temp]<>0) then 
	end;
	if (str <> '') then writeln(g, str)
	else writeln(g, 0);
	close(f); close(g);
end.