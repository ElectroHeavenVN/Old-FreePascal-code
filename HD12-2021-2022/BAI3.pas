type item = record key, value, firstElem: longword; end;

procedure Main();
var 
    arrc: array of item = ();
    temp, i, j: longword;
    isAssigned: boolean;
    max: item;
begin
    max.value := 0;
    max.firstElem := 0;
    i := 0;
    repeat
        readln(temp);
        i := i + 1;
        if (length(arrc) > 0) then 
            for j := 0 to length(arrc) - 1 do
                if (arrc[j].key = temp) then
                begin
                    arrc[j].value := arrc[j].value + 1;
                    isAssigned := true;
                    break;
                end;
        if (length(arrc) = 0) or (not(isAssigned)) then 
        begin
            setlength(arrc, length(arrc) + 1);
            arrc[length(arrc) - 1].key := temp;
            arrc[length(arrc) - 1].value := 1;
            arrc[length(arrc) - 1].firstElem := i;
        end;
        isAssigned := false;
    until (temp = 0);
    for i := 0 to length(arrc) - 1 do
        if (max.value <= arrc[i].value) then 
            if ((max.value = arrc[i].value) and (max.firstElem < arrc[i].firstElem) or (max.value < arrc[i].value)) then
                max := arrc[i];
    writeln(max.key, ' ', max.value);
end;

begin
    Main
end.