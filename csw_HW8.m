%MW8: Maxi Yatzy
clc;clear;
die = input('Enter your 6 dice: ');
%Chance: total of all 6 die
chance = die(1)+die(2)+die(3)+die(4)+die(5)+die(6);
fprintf('Chance: \t\t\t\t%g points\n',chance)
%Three pairs: three pairs of different values
pairs = 0;
for ii=1:1:6
    pair = 0;
    for jj = 1:1:6
        if die(ii)==die(jj)
            pair = pair+1;
        end
    end
    if pair==2
        pairs = pairs+1;
    end
end
if pairs==6
    score = 35;
else
    score = 0;
end
fprintf('Three pairs: \t\t\t%g points\n',score)
%Straights: 4/5 sequential dice
diemod = sort(die);
maxstraight = 0;
straight = 1;
for kk=1:1:5
    if diemod(kk+1)==diemod(kk)+1
        straight = straight+1;
    elseif diemod(kk+1)==diemod(kk)
    else
        if straight>maxstraight
            maxstraight = straight;
            straight = 1;
        end
    end
end
if straight>maxstraight
    maxstraight = straight;
end
if maxstraight==4
    smallstraight = 40;
    largestraight = 0;
elseif maxstraight==5 || maxstraight==6
    smallstraight = 40;
    largestraight = 50;
else
    smallstraight = 0;
    largestraight = 0;
end
fprintf('Small Straight (4): \t%g points\n',smallstraight)
fprintf('Large Straight (5): \t%g points\n',largestraight)
%Maxiyahtzy: 6 of a kind
if die(1)==die(2) && die(2)==die(3) && die(3)==die(4) && die(4)==die(5) && die(5)==die(6)
    maxi = 100;
else
    maxi = 0;
end
fprintf('Maxiyatzy: \t\t\t%g points\n',maxi)