type KhoDoiGiay = record
                    GiayTrai: array of word;
                    GiayPhai: array of word;
                end;
procedure Main();
var f: text;
    n, i, j: byte;
    KhoDungGiay: KhoDoiGiay;

begin
    assign(f, 'shoes.inp');
    reset(f);
    readln(f, n);
    setlength(KhoDungGiay.GiayTrai, n);
    setlength(KhoDungGiay.GiayPhai, n);
    for i := 0 to n - 1 do begin
        read(f, KhoDungGiay.GiayTrai[i]);
    end;
    for i := 0 to n - 1 do begin
        read(f, KhoDungGiay.GiayPhai[i]);
    end;
    close(f);
    for i := n - 1 downto 0 do begin
        for j := length(KhoDungGiay.GiayPhai) - 1 downto 0 do if (KhoDungGiay.GiayTrai[i] = KhoDungGiay.GiayPhai[j]) then begin
            delete(KhoDungGiay.GiayTrai, i, 1);
            delete(KhoDungGiay.GiayPhai, j, 1);
            break;
        end;
    end;
    assign(f, 'shoes.out');
    rewrite(f);
    writeln(f, length(KhoDungGiay.GiayTrai));
    close(f);
    // for i := 0 to length(KhoDungGiay.GiayPhai) - 1 do begin
    //     writeln(KhoDungGiay.GiayTrai[i], ' ', KhoDungGiay.GiayPhai[i]);
    // end;
end;

begin
    Main;
end.