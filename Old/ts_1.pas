type ValueKeyPair = record
                        key: char;
                        value: word;
                    end;
var dict: array of ValueKeyPair;
    s: string;
    i, j: word;
begin
    read(s);
    // repeat
    //     i += 1;
    //     if s[i] in ['0'..'9'] then begin
    //         delete(s, i, 1);
    //         i -= 1;
    //     end;
    // until (i >= length(s));
    //s := upcase(s);
    setlength(dict, 1);
    with dict[0] do begin
        key := s[1];
        value := 1;
    end;
    for i := 2 to length(s) do begin    
        for j := 0 to length(dict) - 1 do 
        if dict[j].key = s[i] then begin
            dict[j].value += 1;
            break;
        end else if j = length(dict) - 1 then begin
            setlength(dict, length(dict) + 1);
            with dict[length(dict) - 1] do begin
                key := s[i];
                value := 1;
            end;
        end;
    end;
    writeln(length(dict));
    if length(dict) > 0 then for i := 0 to length(dict) - 1 do with dict[i] do writeln(key, ' ', value);
end.