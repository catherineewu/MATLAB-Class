%E2Q2: Box Grid w/Yellows
clc;clear;
boxes = input('Enter the number of boxes in a row: ');
w = (5*boxes) + (boxes+1);
grid = uint8(zeros(w,w,3));
grid(:,:,:) = 255;
%Black Lines
for ii=1:6:w
    grid(ii,:,:) = 0;
end
for jj=1:6:w
    grid(:,jj,:) = 0;
end
%Make it Yellow
for ii=8:1:13
    for jj=1:1:w
        if grid(ii,jj,3)==255
            grid(ii,jj,3) = 0;
        end
    end
end
for ii=w-7:-1:w-12
    for jj=1:1:w
        if grid(ii,jj,3)==255
            grid(ii,jj,3) = 0;
        end
    end
end
for jj=8:1:13
    for ii=1:1:w
        if grid(ii,jj,3)==255
            grid(ii,jj,3) = 0;
        end
    end
end
for jj=w-7:-1:w-12
    for ii=1:1:w
        if grid(ii,jj,3)==255
            grid(ii,jj,3) = 0;
        end
    end
end
imshow(grid)