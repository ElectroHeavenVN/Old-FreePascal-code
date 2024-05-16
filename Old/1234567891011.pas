uses
    crt,
    sysutils;
Var    
    i, n, index: longword;
    s: string;
Begin
    //123456789101112131415161718192021...
    while true do begin
        s := ''; i := 0; n := 0; index := 0;
        repeat 
        begin
            readln(n);
            if n <= 0 then writeln('Error! Try again!');
        end;
        until n > 0;
        repeat
            begin
                i += 1;
                if length(s) + length(IntToStr(i)) >= 255 then begin
                    index += length(s);
                    s := '';
                end;
                s += IntToStr(i);
            end;
        until (length(s) >= n - index);
        writeln(s[n - index]);
    end;
End.
