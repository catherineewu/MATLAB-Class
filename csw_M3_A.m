%Given 3 sides of a triangle, determine if it is a right triangle!
clc;clear;

%INPUTS by User: lengths of 3 sides of triangle
a = input('Enter side 1: ');
b = input ('Enter side 2: ');
c = input ('Enter side 3: ');

%Calculations
A = acosd((b^2+c^2-a^2)/(2*b*c));
B = acosd((a^2+c^2-b^2)/(2*a*c));
C = acosd((a^2+b^2-c^2)/(2*a*b));

if A == 90
    T = 1;
elseif B == 90
    T = 1;
elseif C == 90
    T = 1;
else
    T = 0;
end

if T == 1
    fprintf('This triangle has a right angle!')
elseif T == 0
    fprintf('This triangle doesn''t have a right angle...')
end