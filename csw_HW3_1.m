%Robotic ice cream 2
clc;clear
%Initial Display
fprintf('Welcome to the Ice Cream Kiosk! Make your choices below:\n');
fprintf('Sizes:\t\t1) Small\t\t2) Regular\t\t3) Large\n');
fprintf('Flavors:\tA) Vanilla\t\tB) Chocolate\tC) Strawberry\tD) Birthday Cake\n');
fprintf('Toppings:\tE) Sprinkles\tF) Hot Fudge\tG) Caramel\t\tH) Brownie Bits\t\tI) None\n');
%INPUTS
%Size
s = input('Enter your size: ');
if s == 1
    m = 3.99;
elseif s == 2
    m = 4.99;
elseif s == 3
    m = 5.99;
end
if s > 4
    fprintf('Invalid size! Please start another order...');
    f = 0;
else
    f = input('Enter base flavor: ','s');
end
%Base flavor
if f == 0
    t = 0;
elseif f~='A' && f~='B' && f~='C' && f~='D'
    fprintf('Invalid flavor! Please start another order...');
    t = 0;
else
    t = input('Enter your topping: ','s');
end
if t == 0
    m2 = 0;
elseif t~='E' && t~='F' && t~='G' && t~='H' && t~='I'
    fprintf('Invalid topping! Please start another order...');
    m2 = 0;
elseif t=='I'
    m2 = m;
else
    m2 = m + 0.99;
end
%Price Calculation & Output
if m2 == 0
    y = 0;
else
    p = m2*1.06;
    round(p);
    fprintf('Final price with tax: $%.2f',p)
end