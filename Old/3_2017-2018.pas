uses math;
procedure Main();
var 
    s1, s2: string;
    i, j: byte;
    arrChar: string;
    arrCount: array of longint;
begin
    for i := 1 to 3 do
    begin
        arrChar := '';
        arrCount := [];
        readln(s1);
        for j := 1 to length(s1) do
            if (pos(s1[j], arrChar) < 1) then
                arrChar += s1[j];
        setlength(arrCount, length(arrChar));
        readln(s2);
        for j := 1 to length(s2) do
        begin
            if (pos(s2[j], arrChar) < 1) then 
            begin
                arrChar := 'NO';
                break;
            end;
            arrCount[pos(s2[j], arrChar) - 1] += 1;
        end;
        if (arrChar = 'NO') or (minvalue(arrCount) = 0) then
            writeln('NO')
        else 
            writeln('YES');
    end;
end;

begin
    Main
end.