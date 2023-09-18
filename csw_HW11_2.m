%HW11_2: Swapping Vowels
clc;clear;
w = input('Enter the word: ','s');
vowels = 'a';
count = 1;
positions = [1,1];
for ii=1:1:length(w)
    if w(ii)==97 || w(ii)==101 || w(ii)==105 || w(ii)==111 || w(ii)==117
        vowels(count) = w(ii);
        positions(count) = ii;
        count = count+1;
    end
end
for ii=1:1:ceil(length(vowels)/2)
    store = vowels(ii);
    vowels(ii) = vowels(length(vowels)-(ii-1));
    vowels(length(vowels)-(ii-1)) = store;
end
for ii=1:1:length(positions)
    w(positions(ii)) = vowels(ii);
end
fprintf('The new word is: %s',w)