var i, n: longword;
    f: text;
begin
    assign(f, 'BAI4.INP');
    rewrite(f);
    read(n);
    for i := 1 to n do write(f, '1 ');
    close(f); 
end.