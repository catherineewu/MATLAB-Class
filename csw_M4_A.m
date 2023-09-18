%First 10 multiples of a given number
clc;clear;
n = input('Enter the number: ');
m = input('Enter the number of multiples: ');
c = 0;
p = 0;
while c < m
    p = p + n;
    fprintf('%g ',p)
    c = c + 1;
end