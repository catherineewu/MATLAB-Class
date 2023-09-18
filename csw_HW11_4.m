%HW11_4: Image Diagonals
clc;clear;
pix = uint8(zeros(501, 1001, 3));
[h,w,c] = size(pix);
for ii=1:1:501
    for jj=1:1:500
        if jj>ii
            pix(ii,jj,:) = 255;
        end
    end
    for jj=501:1:1001
        if 1001-jj>ii
            pix(ii,jj,:) = 255;
        end
    end
end
imshow(pix)