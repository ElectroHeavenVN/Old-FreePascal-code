var a, b: byte;
procedure Thul(var a: byte);
begin
    a := 2 * a;
    b := b + 5;    
end;

begin
    a := 3;
    b := 7;
    Thul(b);    
    a := a + b;
    writeln(a);
end.