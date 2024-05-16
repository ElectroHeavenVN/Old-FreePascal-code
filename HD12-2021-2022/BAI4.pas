procedure Main();
var 
    count: longword = 0;
    i, j: longword;
    commands: ansistring;
    isCountLeftDot: boolean = true;
    isCountRightDot: boolean = true;
    startIndex: longword;
begin
    assign(input, 'BAI4.inp');
    assign(output, 'BAI4.out');
    reset(input);
    rewrite(output);
    readln();
    readln(commands);
    repeat
        i := 0;
        count := 0;
        while (i < length(commands)) do
        begin
            i := i + 1;
            if (commands[i] = 'R') and (i < length(commands) - 3) and (commands[i + 1] = '.') and (commands[i + 2] = '.') and (commands[i + 3] = 'L') then 
            begin
                commands[i + 1] := 'R';
                commands[i + 2] := 'L';
                count += 1;
                i += 3;
            end;
            if (commands[i] = 'L') and (i > 2) and (commands[i - 1] = '.') and (commands[i - 2] <> 'R') then 
            begin
                commands[i - 1] := 'L';
                count += 1;
                //i += 1;
            end
            else if (commands[i] = 'R') and (i < length(commands) - 2) and (commands[i + 1] = '.') and (commands[i + 2] <> 'L') then 
            begin
                commands[i + 1] := 'R';
                count += 1;
                i += 1;
            end;
        end;
    until (count = 0);
    for i := 1 to length(commands) do
    begin
        if (isCountLeftDot) then 
        begin
            if (commands[i] <> '.') then 
            begin
                isCountLeftDot := false;
                if (commands[i] = 'L') then 
                    for j := 1 to i do commands[j] := 'L';
            end; 
        end;
        if (commands[i] = 'R') and ((i > length(commands) - 1) or ((i <= length(commands) - 1) and (commands[i + 1] = '.'))) then 
        begin
            isCountRightDot := true;
            startIndex := i + 1;
        end;
        if commands[i] = 'L' then 
            isCountRightDot := false;
    end;
    if (isCountRightDot) then 
        for i := startIndex to length(commands) do
            commands[i] := 'R';
    for i := 1 to length(commands) do
        if (commands[i] = '.') then
            count := count + 1;
    writeln(commands);
    writeln(count);
end;

begin
    Main
end.