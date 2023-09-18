%M14A: Vector Sort Function
function[svec] = SortVec(vec)
% vec = input('Enter vector (for testing this program): ');
if length(vec)>=2
    for kk=1:1:length(vec)
        for ii=1:1:length(vec)-1
            store = vec(ii);
            if vec(ii)>vec(ii+1)
                vec(ii) = vec(ii+1);
                vec(ii+1) = store;
            end
        end
    end
    svec = vec;
else
    svec = vec;
end
end