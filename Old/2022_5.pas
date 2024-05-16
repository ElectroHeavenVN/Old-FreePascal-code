var
    x, y: longint;
    i: byte;
    direction: byte = 3;
    s: string;
procedure GoForward();
begin
    case direction of 
        0: x += 1;
        1: x -= 1;
        2: y -= 1;
        3: y += 1;
    end;
end;
procedure GoBackward();
begin
    case direction of 
        0:
        begin
            x -= 1;
            direction := 1;
        end;
        1:
        begin
            x += 1;
            direction := 0;
        end;
        2: 
        begin
            y += 1;
            direction := 3;
        end;
        3:
        begin
            y -= 1;
            direction := 2;
        end;
    end;
end;
procedure TurnLeft();
begin
    case direction of 
        0:
        begin
            y += 1;
            direction := 3;
        end;
        1:
        begin
            y -= 1;
            direction := 2;
        end;
        2: 
        begin
            x += 1;
            direction := 0;
        end;
        3:
        begin
            x -= 1;
            direction := 1;
        end;
    end;
end;
procedure TurnRight();
begin
    case direction of 
        0:
        begin
            y -= 1;
            direction := 2;
        end;
        1:
        begin
            y += 1;
            direction := 3;
        end;
        2: 
        begin
            x -= 1;
            direction := 1;
        end;
        3:
        begin
            x += 1;
            direction := 0;
        end;
    end;
end;
procedure Main();
begin
    readln(s);
    for i := 1 to length(s) do
    begin
        case s[i] of
            'G': GoForward();
            'B': GoBackward();
            'L': TurnLeft();
            'R': TurnRight();
            else 
            begin
                writeln('Invalid move command: ''', s[i], '''!');
                break;
            end;
        end;
    end;
    writeln(x, ' ', y);
end;
begin
    Main
end.
