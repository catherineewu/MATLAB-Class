%M12A: Debugging - Code that combines 2 sorted vectors of 5 numbers each
%into 1 sorted vector in ascending order. Code continually takes smaller
%numbers from each vector and places them into new vector
clc; clear;

v1 = sort(input('Enter a vector of 5 values: '));
v2 = sort(input('Enter a vector of 5 values: '));
v3 = [];
index1 = 1;
index2 = 1; %position of 2nd vector also starts at 1

for ii=1:1:10 %loop repeats 10, not 5 times
    if index2 > 5 || (index1<=5 && v1(index1) <= v2(index2)) %v1(index1) less than or equal to v2(index2) to be least number to be added to new vector
        v3 = [v3 v1(index1)]; %change () to [] for vector values
        index1 = index1 + 1;
    elseif index2<=5 %add if condition that index 2 is still within 5
        v3 = [v3 v2(index2)]; %change () to [] for vector values
        index2 = index2 + 1; %add one to index2
    end
end

fprintf('%d ', v3);