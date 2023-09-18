%DEBUGGING - Lowest multiple with 9s and 0s
clc; clear;
N = input('Enter a positive whole number N: '); %input is a number, not a string value so no need for format specifier
cnt = 1;
while true
    M = N*cnt;
    while M >= 1
        remainder = mod(M,10);%wrong order for function, divide M by 10
        if remainder == 9 || remainder == 0 %change ~= (does not equal) to == (equals)
            M = floor(M/10);%divide, don't multiply M by 10 each time, continue loop after this
        else
            break; %break, since you try a new multiple if the digit isn't 9 or 0
        end
    end
        if M < 1 %move if statement to check inside loop
            break;
        end
    cnt=cnt+1;%must add 1 to count to set new value to count
end
M = N*cnt;%find multiple, since M changes as its checked
fprintf('Lowest multiple with only 9s and 0s: %d\n',M)%print multiple M, not initial number N