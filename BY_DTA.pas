PROGRAM BAITAP8_SGK;
USES CRT,Graph, math;
VAR S: REAL;
    A: LONGINT;
CONST
      ScaleX=20;
      ScaleY=80;
VAR mh,mode,x,y,i: integer;
BEGIN
     InitGraph(mh,mode,'');
     SetViewPort(GetmaxX DIV 2, GetmaxY DIV 2,GetmaxX,GetmaxY,ClipOff);
     SetColor(blue);
     Line(-(GetmaxX DIV 2),0,GetmaxX DIV 2,0);
     Line(0,-(GetmaxY DIV 2),0,GetmaxY DIV 2);
     SetTextJustify(CenterText,CenterText);
     SetColor(White);
     OutTextXY(-GetmaxX DIV 4,-GetmaxY DIV 4,'Hifnh 3<trang 36>');
     SetColor(Red);
     OutTextXY(GetmaxX DIV 2-32,2,'Trujc X >');
     OutTextXY(27,-(Getmaxy DIV 2-5),'^ Trujc Y');
     OutTextXY(0,0,'0,0');
     for i:= -1500 to 1500 do
     begin
          x:=i;
          y:=Round(sin(x)) * 10;
          PutPixel(x,y,Yellow);
          end;
     Repeat Until KeyPressed;
     CloseGraph;
END.