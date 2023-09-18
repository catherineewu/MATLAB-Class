%M14B: StrRev Function - Reverse letter order w/o changing word order
function[newp] = StrRev(phrase)
newp = phrase;
spaces = [0 find(phrase==' ') length(phrase)+1];
for ii=1:length(spaces)-1
    firstletter = spaces(ii)+1;
    lastletter = spaces(ii+1)-1;
    for jj=1:lastletter-firstletter+1
        newp(firstletter+(jj-1)) = phrase(lastletter-(jj-1));
    end
end
end