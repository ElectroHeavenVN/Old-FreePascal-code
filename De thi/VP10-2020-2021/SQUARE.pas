program Bai1_VinhPhuc10; 
var x,y: array[1..100] of longword;
    i,n:byte; 
    xmax,xmin,ymax,ymin,xres,yres:longword;
	f,g:text;
begin
	assign(f,'SQUARE.INP');
	assign(g,'SQUARE.OUT');
	rewrite(g);
	reset(f);
	read(f,n);
	for i:=1 to n do read(f,x[i],y[i]);
	xmax:=x[1]; xmin:=x[1];
	for i:=2 to n do 
	begin
		if xmax<x[i] then xmax:=x[i];
		if xmin>x[i] then xmin:=x[i];
	end;
	ymax:=y[1]; ymin:=y[1];
	for i:=2 to n do
	begin
		if ymax<y[i] then ymax:=y[i];
		if ymin>y[i] then ymin:=y[i];
	end;
	xres:=xmax-xmin;
	yres:=ymax-ymin;
	if xres>yres then write(g,xres*xres)
		else write(g,yres*yres);
	close(f); close(g);
end.
