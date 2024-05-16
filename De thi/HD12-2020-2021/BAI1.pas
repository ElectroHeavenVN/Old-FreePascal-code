program Bai1_HaiDuong;
var xA,xC,xM,xN,yA,yC,yM,yN:integer; 
	count:byte;
    xmax,xmin,ymax,ymin:integer;
begin
	readln(xA,yA); 
	readln(xC,yC); 
	readln(xM,yM);  
	readln(xN,yN); 
	if xA<xC then begin xmax:=xC; xmin:=xA; end else begin xmax:=xA; xmin:=xC; end;
	if yA<yC then begin ymax:=yC; ymin:=yA; end else begin ymax:=yA; ymin:=yC; end;
	//check inside 
	if ((xmin<xM) and (xM<xmax)) and ((ymin<yM) and (yM<ymax)) then
		inc(count); 
	if ((xmin<xN) and (xN<xmax)) and ((ymin<yN) and (yN<ymax)) then
		inc(count);
	writeln(count); 
end.
