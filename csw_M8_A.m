%M8A: CIRCULAR VECTOR ROTATION
clc;clear;
vec = 1:1:15;
r = input('Enter desired rotation: ');
for ii = 1:1:r
    store = vec(15);
    for jj = 15:-1:2
        vec(jj) = vec(jj-1);
    end
    vec(1) = store;
end
fprintf('Rotated values:')
fprintf(' %g',vec)