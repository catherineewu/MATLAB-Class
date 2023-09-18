%Number pattern - assume user enters positive number
clc;clear;
h = input('Enter the height: ');
for ii=1:1:h
    fprintf('%g ',ii)
end
fprintf('\n')
counter=0;
for jj=2:1:h
    fprintf('%g',jj)
    spaces=(2*h-5)-(2*counter);
    for kk=1:1:spaces
        fprintf(' ')
    end
    if jj~=h
        fprintf('%g\n',h)
    end
    counter=counter+1;
end
fprintf('\n\nheight = %g\n',h)