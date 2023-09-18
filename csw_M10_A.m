%M10A Rotate Image 180 Degrees Clockwise
clc;clear;
filename = input('Enter image filename: ','s');
img = imread(filename);
[h,w,c] = size(img);
newimg = img;
for ii=1:1:h
    for kk=1:1:w
        for ll=1:1:c
            newh = h-(ii-1);
            neww = w-(kk-1);
            newimg(newh,neww,ll) = img(ii,kk,ll);
        end
    end
end
imshow(newimg)