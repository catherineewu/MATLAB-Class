%Lab 10 C: Rook's Moves
clc;clear;
img=uint8(zeros(800,800,3));
[h,w,c]=size(img);
row = input('Enter the row the rook is on: ');
col = input('Enter the column the rook is on: ');
row = row*100-99;
col = col*100-99;

count = 1;
for ii=1:100:800
    for jj=1:100:800
        if count==1
            img(ii:ii+99,jj:jj+99,:)=255;
            count=0;
        else
            img(ii:ii+99,jj:jj+99,:)=0;
            count=1;
        end
        if ii==row || jj==col
            img(ii:ii+99,jj:jj+99,1:2)=255;
            img(ii:ii+99,jj:jj+99,3)=0;
        end
    end
    if count==1
        count = 0;
    else
        count=1;
    end
end

img(row:row+99,col:col+99,1)=255;
img(row:row+99,col:col+99,2:3)=0;

imshow(img)