%M12C: Debugging - Rotate Image 90 degrees to the Right
clc;clear;

filename = input('Enter the name of the images: ', 's');
pix = imread(filename); %delete string modifier so filename is the variable (of strings)
[h,w,c] = size(pix);
blank = uint8(zeros(w,h,c)); %Swap heighht and width

for ii = 1:1:h
    for jj = 1:1:w
        newrow = jj; %ii to jj
        newcol = h-ii+1; %jj to ii, h-ii+1 to rotate right instead of left
        blank(newrow, newcol, :) = pix(ii, jj, :); %set values on blank, not pix, newrow and col on blank, ii and jj on pix
    end
end

imshow(blank);