%Lab8B: Bubble Sort
clc;clear;
v = input('What values should be sorted with Bubble Sort? ');
counter = 0;
while counter<length(v)-1
    counter = 0;
    for ii=1:1:length(v)-1
        if v(ii)>v(ii+1)
            store = v(ii+1);
            v(ii+1) = v(ii);
            v(ii) = store;
        elseif v(ii)<=v(ii+1)
            counter = counter+1;
        end
        if counter==length(v)-1
            break;
        end
    end
end
fprintf('The sorted values are:')
fprintf('\t%g',v)