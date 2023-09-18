%M8B: CUT THE PIPES
clc;clear;
pipes = input('Enter pipe lengths in []: ');
count = 0;
while max(pipes)~=0
cut = min(pipes);
    for ii = 1:1:length(pipes)
        pipes(ii) = pipes(ii)-cut;
        if pipes(ii)<=0
            pipes(ii)=0;
        end
    end
    ind = find(pipes==0);
    pipes(ind) = [];
    count = count + 1;
end
fprintf('%g cuts are needed!',count)