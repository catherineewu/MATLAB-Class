%Series
clc;clear;
n = input('Enter a positive number greater than 1: ');
sum = 1;
if n<2
    x=2;
end
if n>=2
    for x=2:1:n
        term = (x^x)/(x-1);
        sum = sum + term;
        if sum<=n
             continue
        end
        break
    end
end
fprintf('The number of terms is %g',x)