%Lowest Common Multiple
clc;clear;
a = input('Enter the first number: ');
b = input('Enter the second number: ');
n2 = b;
for ii=1:1:a*b
    n1 = a*ii;
    if n1==n2
        break
    elseif n1>n2
        while n1>n2
            n2 = n2 + b;
        end
    end
end
fprintf('The LCM of %g and %g is %g!',a,b,n1)