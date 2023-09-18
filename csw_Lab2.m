%Credit Card Payoff Calculator
clc;clear;

%INPUTS entered by User: Balance Owed, APR, Expected Monthly Payment
b = input('Balance Owed: ');
r = input ('APR Interest Rate (%): ');
p2 = input ('Expected Monthly Payment: ');

%CALCULATIONS
e = ((1+((r)/(100*365)))^30.4167)-1;
p1 = 35;
m1 = -(log(1-((e*b)/(p1))))/(log(1+e));
po1 = p1*m1;

m2 = -(log(1-((e*b)/(p2))))/(log(1+e));
po2 = p2*m2;

m3 = 4;
p3 = (e*b)/(1-(1+e)^(-(m3)));
po3 = p3*(m3);

%OUTPUTS in Repayment Table
fprintf('\n Option    Payment   Months \t Total');
fprintf('\n 1) \t\t $%.2f \t %.0f \t\t $%.2f',p1,ceil(m1),po1)
fprintf('\n 2) \t\t $%.2f \t %.0f \t\t $%.2f',p2,ceil(m2),po2)
fprintf('\n 3) \t\t $%.2f \t %.0f \t\t $%.2f',p3,ceil(m3),po3)