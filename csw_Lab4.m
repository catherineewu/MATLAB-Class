%Game of Pig
clc;clear;
totalpts=0;
turn=0;
while totalpts<100
    turn=turn+1;
    turnpts=0;
    fprintf('Turn %g with %g points:\n',turn,totalpts)
    while true
        roll=randi([1 6]);
        fprintf('Roll: %g ',roll)
        if roll==1
            turnpts=0;
            fprintf('Pig! You lose all points for this round...\n\n')
            break;
        else
            turnpts=turnpts+roll;
            if turnpts+totalpts>=100
                totalpts=turnpts+totalpts;
                break;
            end
            rollagain = input('Roll again? (y/n): ','s');
            if rollagain=='n'
                totalpts=totalpts+turnpts;
                fprintf('\n')
                break;
            end
        end
     end
end
fprintf('\nIt took you %g turns to get to 100 points!',turn)
