%M12B: Debugging - program finds and displays longest word in phrase (1st
%of multiple of same length words)

clc; clear;

phrase = input('Enter the phrase: ', 's');
phrase = [phrase ' '];

spaces = find(phrase== ' '); %isspace command removed

longest_word = phrase(1:spaces(1)-1); %spaces(1)-1 instead of +1

for ii = 1:1:length(spaces)-1
    word = phrase(spaces(ii)+1:1:spaces(ii+1)-1); %first position changed to spaces(ii)+1, second changed to spaces(ii+1)-1
    if length(word) > length(longest_word) %greater than, not >equal to
        longest_word = word;
    end
end

disp(longest_word); %show longest_word, not just the last word