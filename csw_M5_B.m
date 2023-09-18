%Multiplication chart
clc;clear;
n = input('Enter size of multiplication table: ');
for ii=1:1:n
    for jj=1:1:n
        p=ii*jj;
        fprintf('\t%d',p)
    end
    fprintf('\n')
end