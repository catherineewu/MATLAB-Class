%Lab 11: Swamp Picture
clc;clear;
allred = [];
allgreen = [];
allblue = [];
for ii=1:1:10
    filename = ['Swamp_' num2str(ii) '.jpg'];
    img=imread(filename);
    allred = cat(3,allred,img(:,:,1));
    allgreen = cat(3,allgreen,img(:,:,2));
    allblue = cat(3,allblue,img(:,:,3));
end
[h,w,c] = size(img);
clean = uint8(zeros(h,w,c));
for ii=1:1:h
    for jj=1:1:w
        r = median(allred(ii,jj,:));
        g = median(allgreen(ii,jj,:));
        b = median (allblue(ii,jj,:));
        clean(ii,jj,:) = [r g b];
    end
end
imshow(clean);