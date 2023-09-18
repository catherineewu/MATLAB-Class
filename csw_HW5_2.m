%Number Pattern
clc;clear;
h = input('Enter the height of the pattern: ');
for ii=1:1:h
    for kk=1:1:ii-1
        fprintf('%g ',ii)
    end
    for jj=ii:1:h
        fprintf('%g ',jj)
    end
    fprintf('\n')
end