var 
    s1, s2: ansistring;
    i: byte;

function CharInString(s: ansistring):string;
var 
    b: boolean;
    i, j: word;
begin
    CharInString := '';
    i := 0; j := 0;
    CharInString[1] := s[1];
    for i := 1 to length(s) do
    begin
        b := true;
        for j := 1 to length(CharInString) do if s[i] = CharInString[j] then 
        begin
            b := false;
            break;
        end;
        if b then CharInString += s[i];
    end;
end;

function isContainsSameCharacters(str1, str2: string):boolean;
var 
    i, j, breakTimes: byte;
begin
    breakTimes := 0;
    isContainsSameCharacters := false;
    if length(str1) <> length(str2) then exit;
    if str1 = str2 then
    begin
        isContainsSameCharacters := true;
        exit;
    end;
    for i := 1 to length(str1) do 
    begin
        for j := 1 to length(str2) do if str1[i] = str2[j] then
        begin
            breakTimes += 1;
            break;
        end;
    end;
    if breakTimes = length(str1) then isContainsSameCharacters := true;
end;

begin
    for i := 1 to 3 do 
    begin
        repeat
            readln(s1);
            readln(s2);
            if (length(s1) > 1000) or (length(s2) > 1000) then writeln('String is too long!');
        until (length(s1) <= 1000) and (length(s2) <= 1000);
        writeln(CharInString(s1));
        writeln(CharInString(s2));
        if (isContainsSameCharacters(CharInString(s1), CharInString(s2))) then writeln('YES') else writeln('NO');
    end;
end.