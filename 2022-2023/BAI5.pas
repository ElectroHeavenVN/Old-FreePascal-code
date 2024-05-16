var ninedivs: array of longword = (36, 225, 441, 1089, 1521, 2601, 3249, 4761, 6561, 7569, 8649, 12321, 15129, 16641, 19881, 25281, 31329, 33489, 40401, 45369, 47961, 56169, 62001, 71289, 84681, 91809, 95481, 103041, 106929, 114921, 145161, 154449, 168921, 173889, 199809, 205209, 221841, 239121, 251001, 269361, 288369, 294849, 328329, 335241, 349281, 356409, 400689, 447561, 463761, 471969, 488601, 514089, 522729, 567009, 594441, 622521, 651249, 660969, 690561, 710649, 720801, 772641, 848241, 870489, 881721, 904401, 986049);

// function is9Divisors(x: longword):boolean;
// var
//     divisors: longword;
//     i: longword = 2;
// begin
//     divisors := 5;
//     if (frac(sqrt(x)) > 0) then
//         exit(false);
//     if (x = 1) then
//         exit(false);
//     while (i < sqrt(x)) do
//     begin
//         if (x mod i = 0) and (i <> 3) then
//             divisors := divisors + 2;
//         if (divisors > 9) then
//             exit(false);
//         i := i + 1;
//     end;
//     if (divisors = 9) then
//         exit(true);
//     exit(false);
// end;

procedure Main();
var
    T, a, b, i, j, count: longword;
begin
    assign(input, 'SDB.inp');
    reset(input);
    assign(output, 'SDB.out');
    rewrite(output);
    readln(T);
    for i := 1 to T do
    begin
        count := 0;
        readln(a, b);
        if (b > 36) then 
        begin
            for j := 0 to 66 do
            begin
                if (ninedivs[j] >= a) and (ninedivs[j] <= b) then
                    count := count + 1;
                if (ninedivs[j] > b) then 
                    break;
            end;
            // j := a + (3 - a mod 3);
            // if (a mod 3 = 0) then
            //     j := a;
            // while (j < b) do
            // begin
            //     if is9Divisors(j) then
            //         count := count + 1;
            //     j := j + 3;
            // end;
        end;
        writeln(count);
    end;
end;

begin
    Main
end.