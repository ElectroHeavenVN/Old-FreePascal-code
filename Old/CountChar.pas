uses
    Generics.Collections;
type
    dictionary = specialize TDictionary<string, integer>;
var
    s: string;
    count, i: integer;
    a: char;
    dic: dictionary;
    keyvaluepair: dictionary.TDictionaryPair;
begin
    dic := dictionary.Create;
    readln(s);
    s := LowerCase(s);
    for i := 1 to length(s) do begin
    a := s[i];
    if dic.TryGetValue(a, count) then dic.AddOrSetValue(a, count + 1)
    else dic.AddOrSetValue(a, 1);
    end;
    for keyvaluepair in dic do writeln(keyvaluepair.key, ' :', keyvaluepair.value);
    readln
end.