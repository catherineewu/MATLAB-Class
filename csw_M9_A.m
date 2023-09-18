%M9A: Word Counter
clc;clear;
p = input('Enter any phrase: ','s');
words = 0;
for ii = 1:1:length(p)
    if p(ii)==32
        words = words+1;
    end
end
fprintf('There are %g words!',words+1)