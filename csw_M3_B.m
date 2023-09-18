%Water usage by tiers cost calculator
clc;clear;
%INPUT by User
g = input('Enter your water usage in gallons: ');
%Calculations
if g < 6000
    m = (2.35*g)/1000;
elseif g >= 6000 && g <= 20000
    m = 14.09765 + ((3.75*(g-5999))/1000);
elseif g > 20000
    m = 66.6014 + ((6.00*(g-20000))/1000);
end
round(m);
%OUTPUT
fprintf('Money owed: $%.2f',m)