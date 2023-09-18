%Wallis Formula for pi
clc;clear;
t = input('Enter amount of terms to use: ');
pi = 2;
c = 1;
while c < t
    v = 2*c;
    z = (v*v)/((v-1)*(v+1));
    pi = pi * z;
    c = c + 1;
end
fprintf('Pi with %d terms is %.8f',t,pi)