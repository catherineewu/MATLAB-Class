%Calculate equivalent resistance (R) of any amount of resistors in parallel
clc;clear;
T=0;
%User INPUTS
n = input('How many resistors do you have? ');
for ii=1:1:n
    fprintf('Enter resistor R%g',ii)
    resn = input(': ');
    T=T+(1/resn);
end
R=1/T;
fprintf('The equivalent resistance is %g ohms',R)