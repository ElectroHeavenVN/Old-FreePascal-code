procedure Main();
var 
    k: word;
    n, i, j, SumWaitTime, minSumWaitTime, minWaitTime, maxWaitTime, timeStart: longword;
    arr: array of word;
begin
    SumWaitTime := 0;
    maxWaitTime := 0;
    minSumWaitTime := 4294967295;
    minWaitTime := 4294967295;
    readln(n, k);
    setlength(arr, n);
    for i := 0 to n - 1 do read(arr[i]);
    for j := 0 to k do 
    begin
        maxWaitTime := 0;
        for i := 0 to n - 1 do
        begin
            if ((arr[i] - j - k) mod k > 0) then 
            begin
                if (k - (arr[i] - j - k) mod k > maxWaitTime) then maxWaitTime := k - (arr[i] - j - k) mod k;
                //writeln(j, ', ', i, ': ', k - (arr[i] - j - k) mod k);
                SumWaitTime += k - (arr[i] - j - k) mod k;
                writeln(j, ' ', k - (arr[i] - j - k) mod k);
            end else 
            begin
                if (abs((arr[i] - j - k) mod k) > maxWaitTime) then maxWaitTime := abs((arr[i] - j - k) mod k);
                //writeln(j, ', ', i, ': ', abs((arr[i] - j - k) mod k));
                SumWaitTime += abs((arr[i] - j - k) mod k);
                writeln(j, ' ', abs((arr[i] - j - k) mod k));
            end;
        end;
        //writeln(j, ': ', maxWaitTime);
        //writeln();
        if (maxWaitTime < minWaitTime) then 
        begin
            minWaitTime := maxWaitTime;
            timeStart := i;
            //writeln(maxWaitTime, ' ', j);
        end;
        if (minSumWaitTime > SumWaitTime) then minSumWaitTime := SumWaitTime;
        SumWaitTime := 0;
    end;
    writeln(minSumWaitTime);
    writeln(minWaitTime);
end;
begin
    Main
end.