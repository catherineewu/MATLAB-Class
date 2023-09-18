%Debugging 1
clc; clear;

% pattern = 3;
% num = 7;
% den = 1;
% ii = 1;
% while ii <= 100
%     pattern = pattern + num/den;
%     num = num + 3;
%     den = den + 2;
%     ii = ii + 1;
% end
% 
% fprintf ('%g \n', den);

sum=0; %put starting values into num and dem equations, only sum starting value listed
for ii=1:1:100 %changed from while to for loop for ii
    num=3+(4*(ii-1)); %changed num=num+3 to num=3+(4*(ii-1)); increase by 4 not 3
    den=2^(ii-1); %changed den = den + 2 to den=2^(ii-1); exponentially increases
    sum=sum+(num/den); %changed to adding at sum at end of loop; sum=pattern
end
fprintf('%g \n',sum) %print sum of terms, not the last denominator