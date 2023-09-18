%Lab12C: Credit Card Validity
clc;clear;
num = input('Enter credit card number: ','s');
%WITH CHECK DIGIT
sum=0;
for ii=length(num)-1:-2:1
    doubled = 2*str2num(num(ii));
    if doubled>9
        doubled = doubled-9;
    end
    num(ii) = num2str(doubled);
end
% fprintf('%s',num)
for ii=length(num):-1:1
    sum = sum + str2num(num(ii));
end
if mod(sum,10)==0
    fprintf('Valid!')
else
    fprintf('Invalid...')
end