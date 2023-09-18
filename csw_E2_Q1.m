%E2Q1 PAGE 2: Shift last letter of each word in phrase by -5 (ex: f becomes a)
clc;clear;
phrase = input('Enter the phrase: ','s');
spaces = [0 0];
pos = 1;
for ii=1:1:length(phrase)
    if phrase(ii)<65 || (phrase(ii)>90 && phrase(ii)<97) || phrase(ii)>122
        spaces(pos) = ii;
        pos = pos+1;
    end
end
for ii=1:1:length(spaces)
    if spaces(ii)==0
        spaces(ii)=[];
    end
end
lasts = [0 0];
for ii=1:1:length(spaces)
    lasts(ii)=spaces(ii)-1;
end
for ii=1:1:length(lasts)
    if lasts(ii)==0
        lasts(ii)=[];
    end
end
if (phrase(length(phrase))>=65 && phrase(length(phrase))<=90) || (phrase(length(phrase))>=97 && phrase(length(phrase))<=122)
    lasts = [lasts length(phrase)];
end
for ii=1:1:length(lasts)
    if phrase(lasts(ii))>=65 && phrase(lasts(ii))<=90
        phrase(lasts(ii))=phrase(lasts(ii))-5;
        if phrase(lasts(ii))<65
            phrase(lasts(ii))=phrase(lasts(ii))+26;
        end
    end
    if phrase(lasts(ii))>=97 && phrase(lasts(ii))<=122
        phrase(lasts(ii))=phrase(lasts(ii))-5;
        if phrase(lasts(ii))<97
            phrase(lasts(ii))=phrase(lasts(ii))+26;
        end
    end
end
fprintf('Output: %s',phrase)