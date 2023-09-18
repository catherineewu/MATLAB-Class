%Minimum coins for change amount
clc;clear;
c = input('Enter change (cents): ');
coins = 0;
while c>=25
    c=c-25;
    coins = coins+1;
end
while c>=10
    c=c-10;
    coins=coins+1;
end
while c>=5
    c=c-5;
    coins=coins+1;
end
while c>=1
    c=c-1;
    coins=coins+1;
end
fprintf('%d coins needed!',coins)