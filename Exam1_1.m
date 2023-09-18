%sum of every other odd number between 10 and 35,000
clc;clear;
sum=0;
for ii = 11:4:35000
    sum=sum+ii;
end
fprintf('%g',sum)