%Lab12A: Capitalize first and last letters of words in phrase
clc;clear;
p = input('Enter your phrase in lowercase: ','s');
spaces = find(p==' ');

p(1) = p(1)-32;
p(length(p)) = p(length(p))-32;
for ii=1:1:length(spaces)
    ind = spaces(ii)-1;
    if p(ind)>=97 && p(ind)<=122
        p(ind) = p(ind)-32;
    end
    ind = spaces(ii)+1;
    if p(ind)>=97 && p(ind)<=122
        p(ind) = p(ind)-32;
    end
end
fprintf('New phrase: %s',p)