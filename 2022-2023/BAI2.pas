procedure Main();
var 
    u1, d, x: longint;
begin
    assign(input, 'ARIPOG.inp');
    reset(input);
    assign(output, 'ARIPOG.out');
    rewrite(output);
    readln(u1, d, x);
    if (frac(((x - u1) / d) + 1) = 0) then
        writeln(((x - u1) div d) + 1)
    else
        writeln(-1);
end;

begin
    Main
end.