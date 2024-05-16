uses math;
type mn = record m, n: longword; end;
var 
    arr: array of mn = ();
function gcd(n1, n2: longword):longword;
var 
    i: longword;
begin
    if (length(arr) > 0) then
        for i := 0 to length(arr) - 1 do 
            if ((arr[i].m = n1) and (arr[i].n = n2)) or ((arr[i].m = n2) and (arr[i].n = n1)) then 
                exit(0);
    for i := min(n1, n2) downto 2 do
        if (n1 mod i = 0) and (n2 mod i = 0) then 
        begin
            setlength(arr, length(arr) + 1);
            arr[length(arr) - 1].m := n1;
            arr[length(arr) - 1].n := n2;
            exit(i);
        end;
    exit(1);
end;

function isPrime(n: longword):boolean;
var 
    i: longword;
begin
    if (n < 2) then exit(false);
    i := 2;
    while(i <= sqrt(n)) do
    begin
        if (n mod i = 0) then exit(false);
        i := i + 1;
    end;
    exit(true);
end;

procedure Main();
var     
    m, n, i, j: longword;
begin
    readln(m, n);
    for i := m to n do
        for j := m to n do
        begin
            if (i <> j) and (isPrime(gcd(i, j))) then 
                write('(', i, ',', j, ');');
        end;
end;

begin
    Main
end.