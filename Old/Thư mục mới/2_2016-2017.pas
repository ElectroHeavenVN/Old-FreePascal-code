uses 
    Math;

type RectCuboid = record
                    width, length, height: longword;
                    end;

var 
    storage, box1, box2: RectCuboid;

function LongestEdge(r: RectCuboid):longword;
begin
    exit(max(max(r.width, r.length), r.height));
end;
procedure RotateBox(var r: RectCuboid);
var temp: longword;
begin
    if (r.width > r.length) and (r.width <= storage.height) then 
    begin
        temp := r.width;
        r.width := r.height;
        r.height := temp;
    end
    else if (r.length > r.width) and (r.length <= storage.height) then 
    begin
        temp := r.length;
        r.length := r.height;
        r.height := temp;
    end
end;

function GetWidth(r: RectCuboid):longword;
begin
    exit(min(r.width, r.length));
end;

function GetLength(r: RectCuboid):longword;
begin
    exit(max(r.width, r.length));
end;

procedure RotateStorage();
var temp: longword;
begin
    temp := storage.width;
    storage.width := storage.length;
    storage.length := temp;
end;

procedure Main();
label l;
begin
    readln(storage.width, storage.length, storage.height);
    readln(box1.width, box1.length, box1.height);
    readln(box2.width, box2.length, box2.height);
    if (LongestEdge(storage) < LongestEdge(box1)) or (LongestEdge(storage) < LongestEdge(box2)) then
    begin
        writeln('NO');
        exit;
    end;
    RotateBox(box1);
    RotateBox(box2);
    l:
    if (GetWidth(box1) + GetWidth(box2) <= storage.width) then
    begin
        if (max(GetLength(box1), GetLength(box2)) > GetLength(storage)) then writeln('NO')
        else writeln('YES');
        exit;
    end
    else if (GetLength(box1) + GetLength(box2) <= storage.length) then
    begin
        if (max(GetWidth(box1), GetWidth(box2)) > GetWidth(storage)) then writeln('NO')
        else writeln('YES');
        exit;
    end;    
    RotateStorage();
    goto l;
end;
begin
    Main
end.