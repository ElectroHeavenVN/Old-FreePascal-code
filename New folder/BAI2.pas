var     u1,x,d:longint;
        res:longint;
        f,g:text;
begin
        assign(f,'ARIPOG.INP');
        assign(g,'ARIPOG.OUT');
        rewrite(g);
        reset(f);
        read(f,u1,d,x);
        res := (x - u1) div d + 1;
        if (x - u1) mod d = 0 then writeln(g, res)
		else writeln(g, -1);
        close(f); close(g);
end.
