%Even and odd
clc;clear;
odd=0;
even=0;
for ii=1:1:75
    fprintf('Enter value %g:',ii)
    n = input(' ');
    if mod(n,2)==0
        even = even+1;
    else
        odd = odd+1;
    end
end
evenpercent=(even/(even+odd))*100;
oddpercent=(odd/(even+odd))*100;
fprintf('Even percentage: %g',evenpercent)
fprintf('%%')
fprintf('\nOdd percentage: %g',oddpercent)
fprintf('%%')
