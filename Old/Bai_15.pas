

{chạy ct online không được với mảng string động; với số cũng không chạy được mảng động}

uses crt;
procedure Main();
var a      :array of string;
    j,n,k  :byte;
    //f:text; 
	i: integer;
	s,max:string;
begin
    clrscr;
	//assign(f,OUT.TXT);
	//rewrite(f);
	s := '';
    readln(n);
	setlength(a,n);
    for i:=0 to n-1 do readln(a[i]); {làm việc với xâu phải dùng readln() và nhập mỗi dữ liệu trên 1 dòng}
	i:=0; 		
	for i:=n downto 1 do
		begin
		max:=a[0]; k:=0;
		for j:=1 to i-1 do 
			if a[j]>max then begin max:=a[j];  k:=j; end;
			s:=s+max;
			delete(a,k,1);	
	end;
	write(s);
end;
begin
	Main;
end.
