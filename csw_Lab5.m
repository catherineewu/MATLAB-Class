%Yahtzee full house simulator
clc;clear;
x = input('Enter 1st dice: ');
y = input('Enter 2nd dice: ');
s = input('Enter seed value: ');
rng(s)
fullhouse = 0;
house = 0;
for ii=1:1:10000
    xcount = 0;
    ycount = 0;
    for jj=1:1:5
        dice = randi([1 6]);
        if dice==x && xcount < 3
            xcount = xcount+1;
        end
        if dice==y && ycount < 3
             ycount = ycount + 1;
        end
    end
    reroll = 5-xcount-ycount;
    for kk=1:1:reroll
        dice = randi([1 6]);
        if dice==x && xcount<3
            xcount = xcount + 1;
        end
        if dice==y && ycount<3
            ycount = ycount + 1;
        end
    end
    reroll = 5-xcount-ycount;
    for ll=1:1:reroll
        dice = randi([1 6]);
        if dice==x && xcount<3
            xcount = xcount + 1;
        end
        if dice==y && ycount<3
            ycount = ycount + 1;
        end
    end
    if (ycount==3 && xcount==2)||(xcount==3 && ycount==2)
        fullhouse = fullhouse + 1;
    end
end
fprintf('Simulation found %g full houses of %gs and %gs',fullhouse,x,y)