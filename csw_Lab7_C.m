%L8C: Absolute Difference Based Shuffling
clc;clear;
v = input('Enter the vector: ');
x = input('Enter the value of x: ');
counter = 0;
while counter<length(v)-1
    counter = 0;
    for ii=1:1:length(v)-1
        if abs(x-v(ii))>abs(x-v(ii+1))
            store = v(ii+1);
            v(ii+1) = v(ii);
            v(ii) = store;
        elseif abs(x-v(ii))<=abs(x-v(ii+1))
            counter = counter+1;
        end
        if counter==length(v)-1
            break;
        end
    end
end
fprintf('The sorted values are:')
fprintf('\t%g',v)