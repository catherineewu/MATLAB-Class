%Lab8A: Half Large Elements
clc;clear;
v = input('Enter the vector: ');
g = v;
f = v;
for kk=1:1:length(v)
    g(kk)=0;
    f(kk)=0;
end
count = 1;
for ii=1:1:length(v)
    greater = 0;
    for jj=1:1:length(v)
        if v(ii)>=v(jj)
            greater = greater+1;
        end
    end
    if greater>=length(v)/2
        g(count) = v(ii);
        count = count+1;
    end
end
zeros = g==0;
g(zeros) = [];
counter = 0;
while counter<length(g)-1
    counter = 0;
    for ii=1:1:length(g)-1
        if g(ii)<g(ii+1)
            store = g(ii+1);
            g(ii+1) = g(ii);
            g(ii) = store;
        elseif g(ii)>=g(ii+1)
            counter = counter+1;
        end
        if counter==length(g)-1
            break;
        end
    end
end
for ll=1:1:ceil(length(v)/2)
    f(ll) = g(ll);
end
zeros = find(f==0);
f(zeros) = [];
fprintf('Half large elements are:')
fprintf(' %g',f)

