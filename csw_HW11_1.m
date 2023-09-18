%HW11_1: Puck Outline
clc;clear;
filename = input('Enter filename: ','s');
img = imread(filename);
[h,w,c] = size(img);
binary = zeros(h,w);
for ii=1:1:h
    for jj=1:1:w
        if img(ii,jj,1)<.8*img(ii,jj,3)
            binary(ii,jj) = 1;
        end
    end
end
% imshowpair(img,outline,'montage')
outline = img;
puck = 0;
for ii=1:1:h
    pos = 0;
    for jj=1:1:w
        if binary(ii,jj)==1 && pos==0
            outline(ii,jj,:) = 255;
            pos = 1;
        elseif binary(ii,jj)==0 && pos==1
            outline(ii,jj,:) = 255;
            pos = 2;
        elseif pos==2
            break;
        end
    end
end
for jj=1:1:w
    pos = 0;
    for ii=1:1:h
        if binary(ii,jj)==1 && pos==0
            outline(ii,jj,:) = 255;
            pos = 1;
        elseif binary(ii,jj)==0 && pos==1
            outline(ii,jj,:) = 255;
            pos = 2;
        elseif pos==2
            break;
        end
    end
end
imshowpair(img,outline,'montage')
