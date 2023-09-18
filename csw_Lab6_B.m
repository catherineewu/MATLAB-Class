%Number Height Pattern
clc;clear;
h = input('Enter the height: ');
row=0;
d=1;
for ii=1:1:h
    row=row+1;
    for jj=1:1:row
        count = h-(h-d);
        fprintf('%g ',count)
        d=d+1;
    end
    fprintf('\n')
end