%Debugging 2
clc; clear;

n = input('Enter the value of n: '); %not a string, delete 's' modifier
sum = 0;

for ii = 1:1:n
    den = 1; %use line to set den to 1
    for jj = 1:1:(2*ii+1) %counter goes up to function value directly
        den = den*jj; %changed ii to jj; added den variable
    end
    sum = sum + (2^(ii+1))/den; %changed to denominator
end

fprintf('The sum is %g', sum); %print sum, not f