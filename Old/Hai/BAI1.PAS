program BAI1_TEST;
var xA,xB,xC,xD,yA,yB,yC,yD:real;
	a,b,c,S,S1,S2,S3:real;
begin
	readln(xA,yA);
	readln(xB,yB);
	readln(xC,yC);
	readln(xD,yD);
	a:=sqrt(sqr(xC-xB)+sqr(yC-yB));
	b:=sqrt(sqr(xA-xC)+sqr(yA-yC));
	c:=sqrt(sqr(xB-xA)+sqr(yB-yA));
	if (a+b>c) and (b+c>a) and (c+a>b) then
	begin
		S:=1/2*abs((xB-xA)*(yC-yA)-(xC-xA)*(yB-yA));			//S_ABC
		S1:=1/2*abs((xD-xA)*(yB-yA)-(xB-xA)*(yD-yA));			//S_ADB
		S2:=1/2*abs((xD-xB)*(yC-yB)-(xC-xB)*(yD-yB));			//S_BDC
		S3:=1/2*abs((xD-xC)*(yA-yC)-(xA-xC)*(yD-yC));			//S_CDA
		if (S1+S2+S3<=S) or (S1=0) or (S2=0) or (S3=0) then writeln('1') 
			else writeln('0')
	end;
end.