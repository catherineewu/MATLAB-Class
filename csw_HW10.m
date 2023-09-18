%M10HW: Image Puzzle
clc;clear;
filename = input('Enter image name: ','s');
i = imread(filename);
[h,w,c] = size(i);
ni = uint8(zeros(h,w,c));

for ii=1:1:h
    for jj=1:1:w
        if jj<=w/2
            newcol = w/2 + 1 - jj;
        else
            newcol = 3*(w/2) + 1 - jj;
        end
        if mod(ii,2)==0
            newrow = ii/2;
        else
            newrow = (ii+1)/2 + h/2;
        end
        ni(newrow,newcol,1) = 3*i(ii,jj,1);
        ni(newrow,newcol,2) = 0;
        ni(newrow,newcol,3) = 3*i(ii,jj,3);
    end
end
ni2 = ni;
for ii=1:1:h
    for jj=1:1:w
        for kk=1:1:c
            if -1<=-jj+h-ii && 0<=jj-ii
                newrow = h-(ii)+1;
                if newrow>0
                    ni2(newrow,jj,kk) = ni(ii,jj,kk);
                end
            end
            if -1>=-jj+h-ii && 0>=jj-ii
                newrow = h-(ii)+1;
                if newrow>0
                    ni2(newrow,jj,kk) = ni(ii,jj,kk);
                end
            end
        end
    end
end
imshow(ni2)
%filename editing
newname = filename;
newname(length(filename)-4)=[];
edit = 'Fixed';
for tt=1:1:5
    position = length(filename)-9+(tt-1);
    newname(position)=edit(tt);
end
imwrite(ni2,newname)
fprintf('Corrected image saved to %s',newname)