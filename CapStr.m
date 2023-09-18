%M14B: CapStr Function - Capitalize first letter of every word
function[cp] = CapStr(phrase)
cp = phrase;
spaces = [0 find(phrase==' ')];
for ii=1:length(spaces)
    firstletter = spaces(ii)+1;
    cp(firstletter) = phrase(firstletter)-32;
end
end