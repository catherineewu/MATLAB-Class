%M9B: Duplicate Letter Remover
clc;clear;
w = input('Enter a single word: ','s');
count = 1;
while count<=length(w)
let = w(count);
for jj=count+1:1:length(w)
    if w(jj)==let
        w(jj) = 0;
    end
end
dup = find(w==0);
w(dup) = [];
count = count+1;
end
fprintf('Adjusted word: %s',w)