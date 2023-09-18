%Rock paper scissors
clc;clear;
pscore=0;
cscore=0;
fprintf('Welcome to Rock-Paper-Scissors! Play if you dare!\n')
check = 0;
while check==0
    r = input('How many rounds would you like to play (odd rounds only)? ');
    if mod(r-1,2)==0 && r>0
        check = 1;
    else
        fprintf('%g is not a valid number of rounds... Try again!\n',r)
        fprintf('*********************************************************\n\n')
    end
end
fprintf('You choose to do best out of %g rounds\n',r)
rcount=1;
while rcount<=r && pscore<r/2 && cscore<r/2
    fprintf('*********************************************************\n')
    fprintf('Round %g\n',rcount)
    fprintf('*********************************************************\n')
    fprintf('Rock\t\t(0)...\nPaper\t\t(1)...\nScissors\t(2)...\nShoot:\t\t')
    p = input('');
    c = randi([0 2]);
    rcount=rcount+1;
    if p>=3
        fprintf('How dare you cheat at rock paper scissors!\nYou lose this round! You muggle!\n')
        cscore = cscore+1;
    elseif p==c
        if p==0
            fprintf('The computer chooses Rock and you picked Rock\n')
            fprintf('This round is a tie! Replaying this round...\n')
            rcount=rcount-1;
        end
        if p==1
            fprintf('The computer chooses Paper and you picked Paper\n')
            fprintf('This round is a tie! Replaying this round...\n')
            rcount=rcount-1;
        end
        if p==2
            fprintf('The computer chooses Scissors and you picked Scissors\n')
            fprintf('This round is a tie! Replaying this round...\n')
            rcount=rcount-1;
        end
    elseif p==0
        if c==1
            cscore = cscore+1;
            fprintf('The computer chooses Paper and you picked Rock\n')
            fprintf('Computer wins this round!\n')
        else
            pscore = pscore+1;
            fprintf('The computer chooses Scissors and you picked Rock\n')
            fprintf('User wins this round!\n')
        end
    elseif p==1
        if c==2
            cscore = cscore+1;
            fprintf('The computer chooses Scissors and you picked Paper\n')
            fprintf('Computer wins this round!\n')
        else
            pscore = pscore+1;
            fprintf('The computer chooses Rock and you picked Paper\n')
            fprintf('User wins this round!\n')
        end
    elseif p==2
        if c==0
            cscore = cscore+1;
            fprintf('The computer chooses Rock and you picked Scissors\n')
            fprintf('Computer wins this round!\n')
        else
            pscore = pscore+1;
            fprintf('The computer chooses Paper and you picked Scissors\n')
            fprintf('User wins this round!\n')
        end
    end
    fprintf('*********************************************************\n\n')
end
fprintf('*********************************************************\n')
fprintf('Game over!\nUser won %g out of %g rounds\nComputer won %g out of %g rounds\n',pscore,r,cscore,r)
if pscore>cscore
    fprintf('User wins it all! Congrats!\n')
else
    fprintf('Computer wins! Did you expect anything else?\n')
end
fprintf('*********************************************************')